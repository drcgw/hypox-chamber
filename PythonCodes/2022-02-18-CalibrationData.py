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

#Adafruit ADS1115
import adafruit_ads1x15
import adafruit_ads1x15.ads1115 as ADS
import adafruit_ads1x15.ads1x15 as Ads
from adafruit_ads1x15.ads1x15 import Mode
from adafruit_ads1x15.analog_in import AnalogIn
ads = ADS.ADS1115(i2c, gain=1)
ads.mode = Mode.CONTINUOUS #Mode can be changed from SINGLE to CONINUOUS, Continuous mode can only be used with single pin read

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
	Calibration = filePath + "Calibration/"
	
	return filePath, Calibration
	
def csv_creation():
	currentcsvTime = datetime.now()
	CSVTime = currentcsvTime.strftime("%H:%M:%S")
	CSVDate = currentcsvTime.strftime("%m/%d/%Y")

	filePath = "/home/pi/Documents/" + DirectoryTime + "Exposure/"
	Calibration = filePath + "Calibration/"
	
	CalibrationCSV = Calibration + DirectoryTime + "Calibration.csv"
	
	als = True
	
	print(
		"CSV Files have been created or amended. Files can be found at: {}, under the following name {}".format(
		Calibration, CalibrationCSV
		)
	)
	
	return CalibrationCSV
	
def header():
	currentcsvTime = datetime.now()
	CSVTime = currentcsvTime.strftime("%H:%M:%S")
	CSVDate = currentcsvTime.strftime("%m/%d/%Y")
	
	filePath = "/home/pi/Documents/" + DirectoryTime + "Exposure/"
	Calibration = filePath + "Calibration/"
	
	header_cal = "Date", "Time", "P0_Value", "P0_Voltage", "P1_Value", "P0_Voltage"
	
	with open(CalCSVFile, 'w', encoding='UTF8', newline='') as caldata:
		writer = csv.writer(caldata)
		writer.writerow(header_cal)
		print("CSV header for Calibration Data has been writen to the file")
	caldata.close()

def Teledyne():
	#Reference Oxygen Levels
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
	#Percent Calculation not run, this is to create a reference value based a premix Oxygen
	#Print output
	print(
		"P0 Teledyne: Voltage {} V | Value {} || P1 Teledyne: Voltage {} V | Value {}".format(
		P0_Voltage, P0_Value, P1_Voltage, P1_Value
		)
	)
	return P0_Voltage, P0_Value, P1_Voltage, P1_Value

#def post_process(csv_filepath):
#	column_totals = Counter()
#	with open(csv_filepath, "rb") as f:
#		reader = csv.reader(f)
#		row_count = 0.0
#		for row in reader:
#			for column_idx, column_value in enumerator(row):
#				try: 
#					n = float(column_value)
#					column_totals[column_idx] += n
#				except ValueError:
#					print("Error -- ({}) Column({}) could not be coverted to float.".format(column_value, column_idx)
#			row_count += 1.0
#	row_count -= 1.0
#	column_indexes = column_totals.keys()
#	column_indexes.sort()
#	averages = [column_totals[idx]/row_count for idx in column_indexes]
#	return averages
	
	
#Data recording loop 

count = 0
lcount = 0

Time, Date = timestamp()
FilePath, CalibrationPath = filepath()
CalCSVFile = csv_creation()
header()

yes = "Y", "y", "Yes", "YES"
no = "N", "n", "No", "NO"

while True: 
	print("Please attach the oxygen sensors to 10% pre-mix tank")
	sensor_status = input("Is the sensor attached? (Y/N)")
	if sensor_status in ("Y", "y", "YES", "Yes", "yes"):
		while count < 10:
			CSV_Time, CSV_Date = timestamp()
			P0_Vol, P0_Val, P1_Vol, P1_Val = Teledyne()
			CalibrationData = CSV_Date, CSV_Time, P0_Vol, P0_Val, P1_Vol, P1_Val
			
			with open(CalCSVFile, "a", encoding='UTF-8', newline='') as Cal:
				writer = csv.writer(Cal, delimiter = ",", lineterminator = "\n")
				writer.writerow(CalibrationData)
				print("RawCSV has been writen at: {} on {}".format(CSV_Time, CSV_Date))
			Cal.close()
			count += 1
			print("Completion of Sample {}".format(count))
			
			time.sleep(10)
		#Avg = post_process(CalCSVFile)
		with open(CalCSVFile, "a", encoding='UTF-8', newline='') as Cal:
			writer = csv.writer(Cal, delimiter = ",", lineterminator = "\n")
			writer.writerow(Avg)
			print("RawCSV has been writen at: {} on {}".format(CSV_Time, CSV_Date))
		Cal.close()
	else:
		time.sleep(2)
