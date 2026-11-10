W7 Question 1

```python
import re

with open("pubmed_results.txt", "r") as infile, open("zip.txt", "w") as outfile: 
    for line in infile: #open file and say to write another file
        zips = re.findall(r"[0-9]{5}", line) #name it zips, goes through and finds all the 5 digit number sequences in each line of the text
        for z in zips: #for each zipcode in zips do the following
            outfile.write(z + "\n") #write each zipcode seperate and then enter to the next line and write it in the outfile

with open("zip.txt", "r") as f: #open the zip.txt file so it can be read and printed on the screen
    print(f.read())
```

Output (Deleted most for the markdown in order to not have that much data on here)

```python
    26721
    20160
    20160
    02138
    02115
```

Question 2 (Had to consult the textbook for help with this problem)

```python
import csv

zip_coordinates = {} #create a empty dictionary 
with open("zipcodes_coordinates.txt", "r") as f: #open zipcode file to use, open as f because not trying to make a new outfile
    csvz = csv.DictReader(f) #csv is the dictionary reader that will read f and turn it into a dictionary need to name it not csv though
    for row in csvz: #use row because then the system knows to put it in a dictionary works the same way as line though I believe
        zip_coordinates[row['ZIP']] = [row['LAT'], row['LNG']] #in zip coordinates in each row the zip is equal to the longitude and latitude
    
```

```python
#create empty lists for each of the factors that will be defined
zip_code = []
zip_long = []
zip_lat = []
zip_count = []
```

```python
zipcodes = []  #makes list empty list named zipcodes

with open("zip.txt", "r") as f: #open the previous file made to use
    for line in f: #for a line in this file strip the white space 
        zipcodes.append(line.strip())

for z in zip_coordinates: #for each individual zipzode in zipcodes
    zip_code.append(z) #for zipcode change it to be all the z which is the zip code by itself
    zip_lat.append(zip_coordinates[z][0])  #in zip_coordinates in the same line as z look at the first in the long and lat pair which is 0
    zip_long.append(zip_coordinates[z][1]) #in zip_coordinates in the same line as z look at the second in the long lat pair which is 1
    zip_count.append(zipcodes.count(z)) #for eavh zipcode count how many of them there are that exist that are the same using count
```

Check that the answers given what I want (Deleted most for the markdown in order to not have that much data on here)

```python
zip_code
```
    ['00601',
     '00601',
     '00602',
     '00603',
     '00606',
     ...]

```python
zip_lat
```
    ['18.180555',
     '18.180555',
     '18.361945',
     '18.455183',
     '18.158345',
     ...]

```python
zip_long
```
    [' -66.749961',
     ' -66.749961',
     ' -67.175597',
     ' -67.119887',
     ' -66.932911',
     ...]

```python
zip_count
```
    [0,
     0,
     0,
     0,
     0,
     0,
     0,
     0,
     3,
     0,
     0,
     0,
     0,
     0,
     0,
     1,
     1,
     0,
     ...]
```
```

Question 3 - Copied and pasted from the homework (I installed matplotlib on conda but still nothing shows up but no errors)

```python
import matplotlib.pyplot as plt
    # let plots be produced within the IPython notebook
%matplotlib inline

plt.scatter(zip_long, zip_lat, s = zip_count, c= zip_count)
plt.colorbar()

    # only continental us without Alaska
plt.xlim(-125,-65)
plt.ylim(23, 50)

    # add a few cities for reference (optional)
ard = dict(arrowstyle="->")
plt.annotate('Los Angeles', xy = (-118.25, 34.05), xytext = (-108.25, 34.05), arrowprops = ard)
plt.annotate('Palo Alto', xy = (-122.1381, 37.4292), xytext = (-112.1381, 37.4292), arrowprops= ard)
plt.annotate('Cambridge', xy = (-71.1106, 42.3736), xytext = (-73.1106, 48.3736), arrowprops= ard)
plt.annotate('Chicago', xy = (-87.6847, 41.8369), xytext = (-87.6847, 46.8369), arrowprops= ard)
plt.annotate('Seattle', xy = (-122.33, 47.61), xytext = (-116.33, 47.61), arrowprops= ard)
plt.annotate('Miami', xy = (-80.21, 25.7753), xytext = (-80.21, 30.7753), arrowprops= ard)

params = plt.gcf()
plSize = params.get_size_inches()
params.set_size_inches( (plSize[0] * 3, plSize[1] * 3) )

plt.show()
```
