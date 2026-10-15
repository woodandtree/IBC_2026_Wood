# Assignment 1
## 1.
#### A.
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



     
