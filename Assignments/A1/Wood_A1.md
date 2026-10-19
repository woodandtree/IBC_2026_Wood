# Assignment 1
## 1.
#### A. DONE ON BASH
    cd IntroCompBio-2026/ #cd moves me into the directory that holds the files I need to pull from the remote GitHub
    git pull #this pulls the files from the remote GitHub into my folders so I can access the required files

#### B. DONE ON BASH
     grep 8 Gesquiere2011_data.csv #grep finds data within a dataset based on the number or letter listed next to it
                                   #but the 8 is showing every single 8 that exists in the whole dataset
     grep -w "8"  Gesquiere2011_data.csv #added the -w so that it only found 8's by themself with the addition of the "" doing the same thing
                                         #noticed from running this that the other 8's in the code are still pulling and being part of the answer
     grep -w -c "8"  Gesquiere2011_data.csv #didn't fixed the 8 problem yet but added the counting code to count the number of 8's
       78
     grep -w -c "^8"  Gesquiere2011_data.csv #did some research and found that ^ makes the code look at just the 8's at the beginning which are the sample numbers
       17
     grep -w -c "^22"  Gesquiere2011_data.csv #repeat pervious code but look at 22 instead of 8
       5
#### C. DONE ON BASH
###### Script Written:
    #defined the two arguements that will be used to run the script 
    #file will be arguement 1 and will tell the computer what file to read
    #id will be arguement 2 and will tell the computer to look for this specfic id/number
    file=$1
    id=$2

    #read this file and find this id number
    #this code just shows all the data and shows every single thing with the number
    #grep "$id" "$file"

    #-w this ensure that it just counts the number with no decimals and things like that
    #-c counts the amount of times that the number appears
    #grep -w -c "$id" "$file"
    #still giving me to many counts of the number

    #added the ^ to say to only look for the number at the beginning of the line
    grep -w -c "^$id" "$file"

###### Script Ran:
     #bash signals to read the script and run it, the script them follows, joined by the file name and the number that is trying to be found
     bash countsamples1C.txt Gesquiere2011_data.csv 8
        17
     bash countsamples1C.txt Gesquiere2011_data.csv 22
        5
#### D. DONE ON BASH
###### Script Written:
    #tr says to take whatever the separator is in this case a space and change it to a comma
    #input this into the file represented by $1 and then output the file Num_samples.csv

    cut -f1 "$1" | sort -n | uniq -c | awk '{print $2 "\t" $1}' | tr "\t" "," > "Num_samples.csv"
   
    #cut -f1 "$1" pulls all the information from field 1 
    #sort -n sorts all the information in field 1 numerically
    #uniq -c counts how often each seperate time each id appears
    #awk flips the column to format it to print the id and then the number of times in appears
    #tr "\t" "," I thought changed the file from tabs to separate to commas but it appears to put the two numbers in             different sheet columns A and B
    #> says to output it as a file named num_samples.csv

    #the | uses what was just gathered and runs the next thing
###### Script Ran:
    bash changetocomma1D.txt Gesquiere2011_data.csv
    #Output was the file Num_samples.csv
## 2.
#### A. 



     
