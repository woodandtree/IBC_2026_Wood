```python
# 6.1 About You Section
```


```python
%run about_me.py
```

    My name: Zoe
    My favorite color: Red
    My favorite activity: Reading
    My favorite animal: Giraffe
    


```python
# %run runs the code of a script and tehn just put the file name in 
```


```python
%pycat about_me.py
```


    [38;5;66;03m# !/usr/bin/env python3[39;00m
    
    
    [38;5;66;03m#Defining each variable[39;00m
    name = [33m"Zoe"[39m
    color = [33m"Red"[39m
    activity = [33m"Reading"[39m
    animal = [33m"Giraffe"[39m
    
    [38;5;66;03m#printing each variable with a statement and then that thing[39;00m
    print ([33m"My name:"[39m, name)
    print ([33m"My favorite color:"[39m, color)
    print ([33m"My favorite activity:"[39m, activity)
    print ([33m"My favorite animal:"[39m, animal)
    



```python
# %pycat lets you see inside the code
```


```python
# 6.2 Codon to amino acid
```


```python
dictonary = %pycat CodonTable.tsv
```


    Codon   AminoAcid       Symbol
    AAA     Lys     K
    AAC     Asn     N
    AAG     Lys     K
    AAT     Asn     N
    ACA     Thr     T
    ACC     Thr     T
    ACG     Thr     T
    ACT     Thr     T
    AGA     Arg     R
    AGC     Ser     S
    AGG     Arg     R
    AGT     Ser     S
    ATA     Ile     I
    ATC     Ile     I
    ATG     Met     M
    ATT     Ile     I
    CAA     Gln     Q
    CAC     His     H
    CAG     Gln     Q
    CAT     His     H
    CCA     Pro     P
    CCC     Pro     P
    CCG     Pro     P
    CCT     Pro     P
    CGA     Arg     R
    CGC     Arg     R
    CGG     Arg     R
    CGT     Arg     R
    CTA     Leu     L
    CTC     Leu     L
    CTG     Leu     L
    CTT     Leu     L
    GAA     Glu     E
    GAC     Asp     D
    GAG     Glu     E
    GAT     Asp     D
    GCA     Ala     A
    GCC     Ala     A
    GCG     Ala     A
    GCT     Ala     A
    GGA     Gly     G
    GGC     Gly     G
    GGG     Gly     G
    GGT     Gly     G
    GTA     Val     V
    GTC     Val     V
    GTG     Val     V
    GTT     Val     V
    TAA     Stp     O
    TAC     Tyr     Y
    TAG     Stp     O
    TAT     Tyr     Y
    TCA     Ser     S
    TCC     Ser     S
    TCG     Ser     S
    TCT     Ser     S
    TGA     Stp     O
    TGC     Cys     C
    TGG     Trp     W
    TGT     Cys     C
    TTA     Leu     L
    TTC     Phe     F
    TTG     Leu     L
    TTT     Phe     F
    



```python
%run codon.py
```


```python
codon_dict
```




    {'AAA': 'K',
     'AAC': 'N',
     'AAG': 'K',
     'AAT': 'N',
     'ACA': 'T',
     'ACC': 'T',
     'ACG': 'T',
     'ACT': 'T',
     'AGA': 'R',
     'AGC': 'S',
     'AGG': 'R',
     'AGT': 'S',
     'ATA': 'I',
     'ATC': 'I',
     'ATG': 'M',
     'ATT': 'I',
     'CAA': 'Q',
     'CAC': 'H',
     'CAG': 'Q',
     'CAT': 'H',
     'CCA': 'P',
     'CCC': 'P',
     'CCG': 'P',
     'CCT': 'P',
     'CGA': 'R',
     'CGC': 'R',
     'CGG': 'R',
     'CGT': 'R',
     'CTA': 'L',
     'CTC': 'L',
     'CTG': 'L',
     'CTT': 'L',
     'GAA': 'E',
     'GAC': 'D',
     'GAG': 'E',
     'GAT': 'D',
     'GCA': 'A',
     'GCC': 'A',
     'GCG': 'A',
     'GCT': 'A',
     'GGA': 'G',
     'GGC': 'G',
     'GGG': 'G',
     'GGT': 'G',
     'GTA': 'V',
     'GTC': 'V',
     'GTG': 'V',
     'GTT': 'V',
     'TAA': 'O',
     'TAC': 'Y',
     'TAG': 'O',
     'TAT': 'Y',
     'TCA': 'S',
     'TCC': 'S',
     'TCG': 'S',
     'TCT': 'S',
     'TGA': 'O',
     'TGC': 'C',
     'TGG': 'W',
     'TGT': 'C',
     'TTA': 'L',
     'TTC': 'F',
     'TTG': 'L',
     'TTT': 'F'}




```python
%pycat codon.py
```


    [38;5;66;03m# !/usr/bin/env python3[39;00m
    
    [38;5;66;03m#have to open the specfic file and tell it that it is f[39;00m
    [38;5;28;01mwith[39;00m open([33m"CodonTable.tsv"[39m) [38;5;28;01mas[39;00m f:
        codon_dict = {}
        next (f) 
        [38;5;28;01mfor[39;00m line [38;5;28;01min[39;00m f: 
            parts = line.strip().split([33m"\t"[39m)
            codon = parts[[32m0[39m]
            symbol = parts[[32m2[39m]
            codon_dict[codon] = symbol
    [38;5;66;03m#skips the header line[39;00m
    
    [38;5;66;03m#this means that the code will take each code one line at a time meaning that the line becomes a string[39;00m
        
    [38;5;66;03m#line strip () will remove all the white space[39;00m
    [38;5;66;03m#.split("\t") will split the line at each tab away from the words before[39;00m
    [38;5;66;03m#thus as a whole it names the three different columns as parts made like a list[39;00m
    
    [38;5;66;03m#the codon variable is all the parts in the first section, or 0[39;00m
    [38;5;66;03m#the symbol variable is all the parts in the third section, or 2[39;00m
    [38;5;66;03m#codon_dict[codon] = symbol says that in this code the codon corrolates with the symbol[39;00m
    



```python
# created a string of the codons
s = "CTA GGA GTG ATT TCG"
```


```python
#checking to make sure the strong saved
s
```




    'CTA GGA GTG ATT TCG'




```python
#split the codons up by each three and named it codons
codons = s.split()
```


```python
#checking to make sure it went through
codons
```




    ['CTA', 'GGA', 'GTG', 'ATT', 'TCG']




```python
#Use the dictionary made to get the amino acid for each codon
codon_dict.get("CTA")
```




    'L'




```python
codon_dict.get("GGA")
```




    'G'




```python
codon_dict.get("GTG")
```




    'V'




```python
codon_dict.get("ATT")
```




    'I'




```python
codon_dict.get("TCG")
```




    'S'




```python
#Create amino acids found into a list
amino_acid = ["L", "G", "V", "I", "S"]
```


```python
#Checking to make sure the list worked
amino_acid
```




    ['L', 'G', 'V', 'I', 'S']




```python

```
