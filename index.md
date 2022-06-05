# Welcome to the CWilsonLab -- Hypoxia Chamber

The purpose of this chamber is to provide labs with the instructions and files to recreate our environmental monitoring hypoxia chamber. This chamber is designed using free open-source software and inexpensive sensors to monitor the environment inside and outside the chamber. It is easily modified to accomidate many different experimental designs and allow for expansion of the system if needed. The code is python based to allow for easy modification by researches with moderate coding background. 

## Chamber Features

Our chamber is designed with easy to aquire sensors and components. Our chamber is built from a 25 L fish tank with an acrylic lid and weather stripping to generate a seal. Utilizing PVC pipping we are able to distribute the oxygen flow into chamber. The system is also controlled by a [Raspberry Pi](https://www.raspberrypi.com/products/raspberry-pi-4-model-b/) for data aquisition, all sensors were purchased from [Adafruit](https://www.adafruit.com/) and have detailed tutorials and datasheets allowing for the system to be easily modified or upgraded. 

The system can help to create an environment with either hyperoxic or hypoxic conditions by using premixed tanks or nitorgen generators. Oxygen levels are monitored using [Teledyne](https://www.teledyne-ai.com/Products/Oxygen-Sensors/Pages/R17A.aspx) sensors and calculated using voltage return and a standard oxygen curve from premix tanks.

Custom PCB boards and 3D printed parts make modification and adjustment of the design easy. Any research group with specific needs can download the github repository and have access to a complete build guide, PCB files and .stl files for the 3D printed parts. Open access program like [KiCad](https://www.kicad.org/) were utilized in their creation and allow for easy adjustment to board design. The 3D printed parts can be adjusted on any program able to adjust .stl files. 


You can use the [editor on GitHub](https://github.com/drcgw/hypox-chamber/edit/gh-pages/index.md) to maintain and preview the content for your website in Markdown files.

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

### Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/drcgw/hypox-chamber/settings/pages). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
