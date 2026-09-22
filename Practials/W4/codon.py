# !/usr/bin/env python3

#have to open the specfic file and tell it that it is f
with open("CodonTable.tsv") as f:
    codon_dict = {}
    next (f) 
    for line in f: 
        parts = line.strip().split("\t")
        codon = parts[0]
        symbol = parts[2]
        codon_dict[codon] = symbol
#skips the header line

#this means that the code will take each code one line at a time meaning that the line becomes a string
    
#line strip () will remove all the white space
#.split("\t") will split the line at each tab away from the words before
#thus as a whole it names the three different columns as parts made like a list

#the codon variable is all the parts in the first section, or 0
#the symbol variable is all the parts in the third section, or 2
#codon_dict[codon] = symbol says that in this code the codon corrolates with the symbol