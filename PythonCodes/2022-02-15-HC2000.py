#Libraries and Background Files
#General
import board
import busio
import time
import datetime
from datetime import datetime
import math
import statistics
from subprocess import call
from PIL import Image
import csv

#I2C Set up
i2c = busio.I2C(board.SCL, board.SDA)

#Adafruit MCP9808
import adafruit_mcp9808
mcp_external = adafruit_mcp9808.MCP9808(i2c, address=0x19)
mcp_central = adafruit_mcp9808.MCP9808(i2c, address=0x18)

#Adafruit ADS1115
import adafruit_ads1x15
import adafruit_ads1x15.ads1115 as ADS
import adafruit_ads1x15.ads1x15 as Ads
from adafruit_ads1x15.ads1x15 import Mode
from adafruit_ads1x15.analog_in import AnalogIn
ads = ADS.ADS1115(i2c, gain=1)
ads.mode = Mode.CONTINUOUS #Mode can be changed from SINGLE to CONINUOUS, Continuous mode can only be used with single pin read

#Adafruit BH1750
import adafruit_bh1750
BH_External = adafruit_bh1750.BH1750(i2c, address=0x5C)
BH_Internal = adafruit_bh1750.BH1750(i2c, address=0x23)

#Adafruit BME280
import adafruit_bme280
from adafruit_bme280 import basic as adafruit_bme280
BME280_External = adafruit_bme280.Adafruit_BME280_I2C(i2c, address=0x77)
BME280_External.sea_level_pressure = 1009 #Value needs to match local pressure at sea level in hPa
BME280_Central = adafruit_bme280.Adafruit_BME280_I2C(i2c, address=0x76)
BME280_Central.sea_level_pressure = 1009 #To calculate this value 1 inHg to hPa is 33.86 hPa, so (Current inHg)*33.86hPa/inHG = ___ hPa
	#Dewpoint variables used for the Magnus Formula to calculate dewpoint
b = 17.62
c = 243.12

#CCS811 Libraries
import adafruit_ccs811
CCS811_External = adafruit_ccs811.CCS811(i2c, address=0x5A)
#CCS811_Top = adafruit_ccs811.CCS811(i2c, address=0x)

#Picamera Library Installation 
import picamera
from picamera import PiCamera

#Timestamp and directory setup`
DirectoryTime = datetime.now().strftime("%Y-%m-%d-")

def timestamp():
	currentcsvTime = datetime.now()
	CSVTime = currentcsvTime.strftime("%H:%M:%S")
	CSVDate = currentcsvTime.strftime("%m/%d/%Y")
	return CSVTime, CSVDate

def filepath():
	currentcsvTime = datetime.now()
	CSVTime = currentcsvTime.strftime("%H:%M:%S")
	CSVDate = currentcsvTime.strftime("%m/%d/%Y")

	filePath = "/home/pi/Documents/" + DirectoryTime + "Exposure/"
	RawDataPath = filePath + "RawData/"
	FinalDataPath = filePath + "FinalData/"
	
	return filePath, RawDataPath, FinalDataPath
	
def csv_creation():
	currentcsvTime = datetime.now()
	CSVTime = currentcsvTime.strftime("%H:%M:%S")
	CSVDate = currentcsvTime.strftime("%m/%d/%Y")

	filePath = "/home/pi/Documents/" + DirectoryTime + "Exposure/"
	RawDataPath = filePath + "RawData/"
	FinalDataPath = filePath + "FinalData/"
	
	RawCSV = RawDataPath + DirectoryTime + "RawData.csv"
	FinalCSV = FinalDataPath + DirectoryTime + "FinalData.csv"
	als = True
	
	print(
		"CSV Files have been created or amended. Files can be found at: {} & {}, under the following names: {} & {}".format(
		RawDataPath, FinalDataPath, RawCSV, FinalCSV
		)
	)
	
	return RawCSV, FinalCSV
	
def header():
	currentcsvTime = datetime.now()
	CSVTime = currentcsvTime.strftime("%H:%M:%S")
	CSVDate = currentcsvTime.strftime("%m/%d/%Y")
	
	filePath = "/home/pi/Documents/" + DirectoryTime + "Exposure/"
	RawDataPath = filePath + "RawData/"
	FinalDataPath = filePath + "FinalData/"
	
	header_raw = "Date", "Time", "MCPE_Temp_C", "MCPE_Temp_F", "MCPC_Temp_C", "MCPC_Temp_F", "BMEC_Temp", "BMEC_Hum_%", "BMEC_Pres_hPa", "BMEC_Alt_m", "BMEC_Dew", "BMEE_Temp_C", "BMEE_Hum_%", "BMEE_Pres_hPa", "BMEE_Alt_m", "BMEE_Dew", "P0_Volt", "P0_O2_%", "P1_Volt", "P1_O2_%", "Ext_Lux", "Cen_Lux", "Ext_eCO2_ppm", "Ext_tVOC_ppb"
	header_final = "Date", "Time", "MCPE_Temp_C", "BMEE_Temp_C", "BMEE_Hum_%", "BMEE_Pres_hPa", "Ext_Lux", "Cen_Lux", "MCPC_Temp_C", "BMEC_Temp_C", "BMEC_Hum_%", "P0_O2_%", "P1_O2_%", "Ext_eCO2_ppm", "Ext_tVOC_ppb"
	
	with open(RawCSVFile, 'w', encoding='UTF8', newline='') as rawdata:
		writer = csv.writer(rawdata)
		writer.writerow(header_raw)
		print("CSV header for RawData has been writen to the file")
	rawdata.close()
	
	with open(FinalCSVFile, 'w', encoding='UTF8', newline='') as finaldata:
		writer = csv.writer(finaldata)
		writer.writerow(header_final)
		print("CSV header for FinalData has been writen to the file")
	finaldata.close()

def mcp():
	Temp_External_MCP = mcp_external.temperature
	time.sleep(1)
	Temp_Central_MCP = mcp_central.temperature
	time.sleep(1)
	#Temp Calculation
	TempF_External_MCP = Temp_External_MCP * 9 / 5 + 32
	TempF_Central_MCP = Temp_Central_MCP * 9 / 5 + 32
	#Print Values
	print(
		"External: {} C | {} F || Central: {} C | {} F".format(
			Temp_External_MCP, TempF_External_MCP, Temp_Central_MCP, TempF_Central_MCP
		)
	)
	return Temp_External_MCP, TempF_External_MCP, Temp_Central_MCP, TempF_Central_MCP

def Teledyne():
	#Reference Oxygen Levels
	Ref = 0.5000
	#Setting up analog signal read in
	Central_ADS_0 = AnalogIn(ads, ADS.P0)
	Central_ADS_1 = AnalogIn(ads, ADS.P1)
	#Download values from Teledyne sensors
		#Raw Value
	P0_Value = Central_ADS_0.value
	P1_Value = Central_ADS_1.value
		#Raw Voltage
	P0_Voltage = Central_ADS_0.voltage
	P1_Voltage = Central_ADS_1.voltage
	#ADS gain can be adjusted if values are too small to read
	#ads.gain = 16 #Optional values 2/3, 1, 2, 4, 8, 16
	#Calculate % Oxygen
	Percentage_Oxygen_P0 = P0_Voltage / Ref * 100
	Percentage_Oxygen_P1 = P1_Voltage / Ref * 100
	#Print output
	print(
		"P0 Teledyne: Voltage {} V | Percent {} % || P1 Teledyne: Voltage {} V | Percent {} %".format(
		P0_Voltage, Percentage_Oxygen_P0, P1_Voltage, Percentage_Oxygen_P1
		)
	)
	return P0_Voltage, Percentage_Oxygen_P0, P1_Voltage, Percentage_Oxygen_P1
	
def bh():
	#Pull data from the sensors
	External_Lux = BH_External.lux
	time.sleep(1)
	Central_Lux = BH_Internal.lux
	#Print data out
	print(
		"External {:.2f} Lux | Internal {:.2f} Lux".format(
		External_Lux, Central_Lux
		)
	)
	return External_Lux, Central_Lux

def bme_280():
	#Reading in information from the sensors plus dewpoint calculations based on the magnus formula
	#This data will then be translated into information output
	BME280_Central_Temp = BME280_Central.temperature
	BME280_Central_Hum = BME280_Central.relative_humidity
	BME280_Central_Pres = BME280_Central.pressure
	BME280_Central_Alt = BME280_Central.altitude
	gamma_Central = (b * BME280_Central_Temp / (c + BME280_Central_Temp)) + math.log(BME280_Central_Hum / 100.0)
	dewpoint_Central = (c * gamma_Central) / (b - gamma_Central)
	time.sleep(1)
	
	BME280_External_Temp = BME280_External.temperature
	BME280_External_Hum = BME280_External.relative_humidity
	BME280_External_Pres = BME280_External.pressure
	BME280_External_Alt = BME280_External.altitude
	gamma_External = (b * BME280_External_Temp / (c + BME280_External_Temp)) + math.log(BME280_External_Hum / 100.0)
	dewpoint_External = (c * gamma_External) / (b - gamma_External)
	#Data Reporting
	
	print(
		"BME280 Central: {:.2f} C | {:.2f} % | {:.2f} hPa | {:.2f} m | Dewpoint {:.2f}".format(
		BME280_Central_Temp, BME280_Central_Hum, BME280_Central_Pres, BME280_Central_Alt, dewpoint_Central
		)
	)
	print(
		"BME280 External: {:.2f} C | {:.2f} % | {:.2f} hPa | {:.2f} m | Dewpoint {:.2f}".format(
		BME280_External_Temp, BME280_External_Hum, BME280_External_Pres, BME280_External_Alt, dewpoint_External
		)
	)
	return BME280_Central_Temp, BME280_Central_Hum, BME280_Central_Pres, BME280_Central_Alt, dewpoint_Central, BME280_External_Temp, BME280_External_Hum, BME280_External_Pres, BME280_External_Alt, dewpoint_External
	
def ccs():
	loop = 1
	while loop > 0: 
		try:
			#Check for sensor validity, need to make sure the sensor has burned itself in
			while not CCS811_External.data_ready:
				pass
			#Data collection into variable
			CCS811_eCO2 = CCS811_External.eco2
			CCS811_tVOC = CCS811_External.tvoc
			print(
				"External: CO2 {} PPM | TVOC {} PPB".format(
				CCS811_eCO2, CCS811_tVOC
				)
			)
			loop -= 1
		except RuntimeError as error:
			print(error.arg[0])
	return CCS811_eCO2, CCS811_tVOC

def img():
	#Set up camera resolution and framerate, can be modify based on desired image size and quality.
	camera = picamera.PiCamera()
	camera.resolution = (800, 600)
	camera.framerate = 45
	camera.annotate_text = datetime.now().strftime('%H:%M:%S on %m-%d-%Y')
	time.sleep(2)
	IMG_DateTime = datetime.now().strftime('%Y-%m-%d-%H%M%S')
	IMG_FilePath = "/home/pi/Documents/2022-02-16-Exposure/ImageCapture/" + IMG_DateTime + "-CageImage.jpg"
	camera.capture(IMG_FilePath)
	print("Image Captured")
	camera.close()
		

#Data recording loop 

count = 0
lcount = 0

Time, Date = timestamp()
FilePath, RawPath, FinalPath = filepath()
RawCSVFile, FinalCSVFile = csv_creation()
header()
				
while True:
	print("Begining data collection, please wait...")
	#Raw_Data
	#Final_Data
	
	Start_Time = datetime.now()
	
	CSV_Time, CSV_Date = timestamp()
	
	print("Begin Raw Data Collection")
	#Run MCP Function to pull in temperature
	MCPE_Temp_C, MCPE_Temp_F, MCPC_Temp_C, MCPC_Temp_F = mcp()
	#Run BME function to pull temp hum and pres
	BMEC_Temp, BMEC_Hum, BMEC_Pres, BMEC_Alt, BMEC_Dew, BMEE_Temp, BMEE_Hum, BMEE_Pres, BMEE_Alt, BMEE_Dew = bme_280()
	#Run Oxygen detection function to pull oxygen
	P0_V, P0_O2, P1_V, P1_O2 = Teledyne()
	#Run Light Sensor to pull in lux
	Ext_Lux, Cen_Lux = bh()
	#Pull VOC levels using CCS811 sensor data
	#Ext_eCO2, Ext_tVOC = ccs()
	#Image Capture
	img()
	print("")
	print("")
	print("")
	print("External Variables:")
	print(		
		"MCP Temperature {:.3f} C / {:.3f} F | BME Temperature {:.3f} C | BME Humidity {:.3f} % | BME Pressure {:.3f} hPa | BME Altitude {:.3f} m | BME Dewpoint {:.3f}".format(
		MCPE_Temp_C, MCPE_Temp_F,BMEE_Temp, BMEE_Hum, BMEE_Pres, BMEE_Alt, BMEE_Dew
		)
	)
	#print(
	#	"Light: {} Lux | CO2 {} ppm | tVOC ppb".format(
	#	Ext_Lux, Ext_eCO2, Ext_tVOC
	#	)
	#)
	print("")
	print("Central Variables:")
	print(		
		"MCP Temperature {:.3f} C / {:.3f} F | BME Temperature {:.3f} C | BME Humidity {:.3f} % | BME Pressure {:.3f} hPa | BME Altitude {:.3f} m | BME Dewpoint {:.3f}".format(
		MCPC_Temp_C, MCPC_Temp_F,BMEC_Temp, BMEC_Hum, BMEC_Pres, BMEC_Alt, BMEC_Dew
		)
	)
	print(
		"Light: {} Lux".format(
		Cen_Lux
		)
	)	
	print(
		"Oxygen Level: Sensor 1 {:.6f} V | {:.2f} % || Sensor 2 {:.6f} V | {:.2f} %".format(
		P0_V, P0_O2, P1_V, P1_O2
		)
	)
	
	time.sleep(2)
	print("")
	print("Writing Data to .csv Files")
	
	raw = CSV_Date, CSV_Time, MCPE_Temp_C, MCPE_Temp_F, MCPC_Temp_C, MCPC_Temp_F, BMEC_Temp, BMEC_Hum, BMEC_Pres, BMEC_Alt, BMEC_Dew, BMEE_Temp, BMEE_Hum, BMEE_Pres, BMEE_Alt, BMEE_Dew, P0_V, P0_O2, P1_V, P1_O2, Ext_Lux, Cen_Lux
	final = CSV_Date, CSV_Time, MCPE_Temp_C, BMEE_Temp, BMEE_Hum, BMEE_Pres, Ext_Lux, Cen_Lux, MCPC_Temp_C, BMEC_Temp, BMEC_Hum, P0_O2, P1_O2
	
	with open(RawCSVFile, "a", encoding='UTF-8', newline='') as Raw:
		writer = csv.writer(Raw, delimiter = ",", lineterminator = "\n")
		writer.writerow(raw)
		print("RawCSV has been writen at: {} on {}".format(CSV_Time, CSV_Date))
	Raw.close()
	
	with open(FinalCSVFile, "a", encoding='UTF-8', newline='') as Final:
		writer = csv.writer(Final, delimiter = ",", lineterminator = "\n")
		writer.writerow(final)
		print("FinalCSV has been writen at: {} on {}".format(CSV_Time,CSV_Date))
	Final.close()
	
	lcount += 1
	print("Current loop count is at {}".format(lcount))
	
	Finish_Time = datetime.now()
	#Code to set it to sample every ten minutes. In order to do this and variable timing we run this code to calculate remaining time till next sampling
	Delta = Finish_Time - Start_Time
	Seconds = Delta.total_seconds()
	
	#print("Time required to aquire and process data in seconds. {} seconds".format(Seconds))
	
	total_time = 600
	Ten_MinCount = total_time - Seconds
	
	print(
		"Start Time: {} | Finish Time: {} | Delta Time: {}".format(
		Start_Time, Finish_Time, Delta
		)
	)
	
	print(
		"Sampling Time {} s | Remaining Time {} s".format(Seconds, Ten_MinCount))
		
	if lcount >= 1200:
		break
	else:
		time.sleep(Ten_MinCount)
		
	#print("Data has been writen to the .csv")
	
	
