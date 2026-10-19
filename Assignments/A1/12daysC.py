#!/usr/bin/env python3

days = {1: "A Partridge in a Pear Tree", 2:"2 Turtle Doves", 3:"3 French Hens", 4:"4 Colly Birds", 5:"5 Gold Rings", 6:"Geese-a-Laying", 7: "Swans-a-Swimming", 8:"Maids-a-Milking", 9:"Ladies Dancing", 10:"Lords-a-Leaping", 11:"Pipers Piping", 12:"Drummers Drumming"}
#made a dictionary relating each phrase with their day number and named in under days

names = ["First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth", "Tenth", "Eleventh", "Twelfth"]
#made a list of each day and named it names

#for i in the dict from 1 to 12 used 13 because otherwise no 12
#print the song with names included so first second etc.
#used i-1 because it will match the number and the names correctly
for i in range(1,13):
    print("On the", names[i-1], "day of Christmas my true love gave to me")
    
    for j in range(i, 0, -1):
        print(days[j])
    print("\n")
    
#the i, 0 , -1 says to start at a number and count down to 0 without going past
#print the dictionary for that number and counting down the rest
#then in prints a new line and starts again