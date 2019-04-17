
SSH bro915@pearcey.csiro.au


bro915@pearcey-login:/OSM/CBR/AF_DATASCHOOL/input/2019-04-12_Transcritome>


1. Working together
In your teams, discuss, and write a plan for, and set up the following:

DIRECTORY STRUCTURE: 
Where will you store your scripts? 

	Git remote repository (jamesbroadbent), cloned to team members' pearcy home storage   

	File structure:
		ident@pearcey-login: /home/ident/big_data_prac/scripts

Where is the raw data?
	/OSM/CBR/AF_DATASCHOOL/input/2019-04-12_Transcritome  (Bowen storage)

What about intermediate analyses?
	/OSM/CBR/AF_DATASCHOOL/output/


How do the project directory structures we have used previously (e.g. 
for R work) map to CSIRO's High Performance Computing?

In previous work all folders and files were in the same project directory. In HPC the 
files are in different locations - raw data files are in Bowen storage input directory, 
scripts are in a git repository and cloned to team members' Pearcy home storage, output files are 
in a Bowen storage output folder. 

in GIT/GITHUB: 
How will you collaborate on code?
	Separate scripts for individual work - push/pull from pearcey home storage
	A project script for bringing together separate parts
	A shared readme

Who will work on which bits, and when?
	Tony - 1. working together in README.txt (high evel)
	James - 2. Metadata R scripts to collate metadata from raw filenames, .txt & csv files
	Tony - 3. Process sequence data quality from fastqc from command line
	James - 
	Tony - 

How often will you commit?
	After each significant development during work 

How often, and when, will you push?
	After each significant development stage or at end of each day 

Will you each keep local copies of a remote repo?
	Yes, some files such as readme can be edited/stored locally, pushed to remote, and 
pulled to Pearcey home storage


	If so, where will your local copies be?
	Any local copies will be in a project directory either on a managed network drive or 
local hard drive
 
Where will you keep a record of the workflow you decide on?
	In this README file, located on git remote repository and cloned to pearcey home 
storages 


README: 
Do you need a README file?
What will you put inside it?
	Yes, possibly several. The highest level README.txt (this file) will list directory 
structures and locations for scripts, raw data, processed data, git repositories



