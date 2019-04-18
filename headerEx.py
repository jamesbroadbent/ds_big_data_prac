import gzip
import glob
import os.path
#files = glob.glob("*.gz")
files = glob.glob("/OSM/CBR/AF_DATASCHOOL/input/2019-04-12_Transcritome/*.gz")
for file in files:
        FN = os.path.splitext(os.path.split(file)[1])[0]
        with gzip.open(file, 'rt') as in_file:
                with open("/OSM/CBR/AF_DATASCHOOL/output/bro915/"+FN+".out", "w") as out_file:
                    for line in in_file:
                         if line[0] == '@':
                            out_file.write(file)
                            out_file.write(", ")
                            out_file.write(line)
