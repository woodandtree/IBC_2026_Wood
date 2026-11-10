```python
# Print Hello World

print("Hello World")
```

    Hello World
    


```python
1+5 #addition
```




    6




```python
4 * 5 #multipication
```




    20




```python
10/3 #divison
```




    3.3333333333333335




```python
3//2 #integer divison
```




    1




```python
3%2 #remainder of integer divison
```




    1




```python
4**3 #exponentiation
```




    64




```python
2+3*2 #multiple things
```




    8




```python
(2+3)*2 #PEMDAS
```




    10




```python
2+2==5 #== is equal to
```




    False




```python
4>1 #will tell true or false
```




    True




```python
2+2!=6 #!= is not equal to
```




    True




```python
x = 5 #how to assign variables
```


```python
x #check to see if worked
```




    5




```python
who 
```

    x	 
    


```python
#above listed variables
```


```python
x*4
```




    20




```python
y=8
```


```python
x*y #using the variables
```




    40




```python
x
```




    5




```python
type(x) #what type of number is x
```




    int




```python
#shows that it an integer
```


```python
height = 1.81
```


```python
type(height)
```




    float




```python
#float = numbers with decimals
```


```python
type(1.0)
```




    float




```python
type(1)
```




    int




```python
abs(-2.3) #shows the absolute value
```




    2.3




```python
pow(3,6) #3^6
```




    729




```python
3**6 #3^6
```




    729




```python
round (5.4442367589, 2) #rounds the first number to 2 decimal points - second number
```




    5.44




```python
Open = True
```


```python
type(Open) #is a bool variable
```




    bool




```python
Open = False
```


```python
type(Open) #is a bool variable
```




    bool




```python
Open
```




    False




```python
Open + Open
```




    0




```python
#True = 1 False = 0 ???
```


```python
seq = "AGGTCGATA" #this is making a string
```


```python
type(seq) #variable is a string
```




    str




```python
print(seq)
```

    AGGTCGATA
    


```python
name = "Z W"
```


```python
print("my name is", name)
```

    my name is Z W
    


```python
print("my name is", name, sep=", ") #seperate with comma
```

    my name is, Z W
    


```python
len(seq) #how many letters long
```




    9




```python
seq.count("G") #count is being applied to seq - the variable, its counting number of Gs
```




    3




```python
help(len) #like man command
```

    Help on built-in function len in module builtins:
    
    len(obj, /)
        Return the number of items in a container.
    
    


```python
#Can do it for the specfic variable 
```


```python
help(seq.count)
```

    Help on built-in function count:
    
    count(sub[, start[, end]], /) method of builtins.str instance
        Return the number of non-overlapping occurrences of substring sub in string S[start:end].
    
        Optional arguments start and end are interpreted as in slice
        notation.
    
    


```python
seq.replace("T", "U") #changes the T to a U
```




    'AGGUCGAUA'




```python
rna_seq = seq.replace("T", "U") #name the change
```


```python
rna_seq
```




    'AGGUCGAUA'




```python
seq.find("T") #find what number letter in it is, 4 letters in
```




    3




```python
name.split() #splits the spaces
```




    ['Z', 'W']




```python
seq.split("A") #will split everytime it sees that
```




    ['', 'GGTCG', 'T', '']




```python
upstream = "AAATA"
downstream = "CTTC"
promoter = "TAGCCTA"
```


```python
upstream+"-"+promoter+"-"+downstream #adds multiple strings together 
```




    'AAATA-TAGCCTA-CTTC'




```python
s = "WHEN on board H.M.S. Beagle, as natura- list"
```


```python
s.count("b")
```




    1




```python
s.count("b")+s.count("B") #combining the two commands together
```




    2




```python
s.replace("WHEN","When")
```




    'When on board H.M.S. Beagle, as natura- list'




```python
mylist = ["ATTA", 25, 3.4, True] #make a list can be with anything
```


```python
mylist
```




    ['ATTA', 25, 3.4, True]




```python
mylist[0] #starts counting at 0 not 1
```




    'ATTA'




```python
mylist[3]
```




    True




```python
mylist[1:3] #give values but not last number
```




    [25, 3.4]




```python
mylist[2:] #leave end blank if want to go to end
```




    [3.4, True]




```python
mylist[-1] #goes backwards
```




    True




```python
mylist[-2:]
```




    [3.4, True]




```python
mylist[3] = False #change that part of the list
```


```python
mylist
```




    ['ATTA', 25, 3.4, False]




```python
del(mylist[3]) #deletes that part of the list
```


```python
mylist
```




    ['ATTA', 25, 3.4]




```python
gene = list("ACTCGATAAG") #will just automatically split list up
```


```python
gene
```




    ['A', 'C', 'T', 'C', 'G', 'A', 'T', 'A', 'A', 'G']




```python
gene.count("G")
```




    2




```python
gene.append("p") #will add to list
```


```python
gene
```




    ['A', 'C', 'T', 'C', 'G', 'A', 'T', 'A', 'A', 'G', 'p']




```python
gene.index("T") #Tells you the place
```




    2




```python
a = [4,2,3,5,4]
```


```python
a
```




    [4, 2, 3, 5, 4]




```python
a.sort() #sort in order
```


```python
a
```




    [2, 3, 4, 4, 5]




```python
a.reverse() #sort in reverse
```


```python
a
```




    [5, 4, 4, 3, 2]




```python
a = (4,2,3,5,4) #cant change after you make it
```


```python
type(a)
```




    tuple




```python
a[2]
```




    3




```python
a[2] = 4 #will run error cause cant change it
```


    ---------------------------------------------------------------------------

    TypeError                                 Traceback (most recent call last)

    Cell In[139], line 1
    ----> 1 a[2] = 4 #will run error cause cant change it
    

    TypeError: 'tuple' object does not support item assignment



```python
a.count(4)
```




    2




```python
a.index(2)
```




    1




```python
dict = {"a":"test", "b":55, "c":[1,2,3]}  #pairs with the other thing :
```


```python
type(dict)
```




    dict




```python
cases = {"Riner":10,
         "Chirstianburg":22,
         "Merrimac":7}
```


```python
cases
```




    {'Riner': 10, 'Chirstianburg': 22, 'Merrimac': 7}




```python
cases["Merrimac"] #number of cases in merrimac
```




    7




```python
cases["Blacksburg"] = 22 #add to dict
```


```python
cases
```




    {'Riner': 10, 'Chirstianburg': 22, 'Merrimac': 7, 'Blacksburg': 22}




```python
cases["Merrimac"] = 13 #updates dict
```


```python
cases
```




    {'Riner': 10, 'Chirstianburg': 22, 'Merrimac': 13, 'Blacksburg': 22}




```python
cases.get("Blacksburg", "Not Found") #gets the information and if nothing then will say not found
```




    22




```python
cases.get("Rocky Mount", "Not Found")
```




    'Not Found'




```python
cases.keys() #shows data
```




    dict_keys(['Riner', 'Chirstianburg', 'Merrimac', 'Blacksburg'])




```python
cases.values() #shows data
```




    dict_values([10, 22, 13, 22])




```python
cases2 = {"RockyMount":32, "Riner":9}
```


```python
cases.update(cases2) #will update cases with cases2
```


```python
cases
```




    {'Riner': 9,
     'Chirstianburg': 22,
     'Merrimac': 13,
     'Blacksburg': 22,
     'RockyMount': 32}




```python
b = [1, 1, 2, 3, 5, 8]
```


```python
b
```




    [1, 1, 2, 3, 5, 8]




```python
b[4:]
```




    [5, 8]




```python
b[4:5]
```




    [5]




```python
b[4:6]
```




    [5, 8]




```python
b.append(13)
```


```python
b
```




    [1, 1, 2, 3, 5, 8, 13]




```python
b.reverse()
```


```python
b
```




    [13, 8, 5, 3, 2, 1, 1]




```python
m = {"a":".-", "b":"-...-", "c":"-.-."}
```


```python
m
```




    {'a': '.-', 'b': '-...-', 'c': '-.-.'}




```python
m2 = {"d":"-.."}
```


```python
m.update(m2)
```

m


```python
m
```




    {'a': '.-', 'b': '-...-', 'c': '-.-.', 'd': '-..'}




```python
a
```




    (4, 2, 3, 5, 4)




```python
num = [3,2,5.6,4,33]
```


```python
max(num)
```




    33




```python
min(num)
```




    2




```python
sum(num) #sum of all numbers
```




    47.6




```python
sum(num)/len(num) #how to get average
```




    9.52




```python
b = ["Computational", "Biology"]
```


```python
b
```




    ['Computational', 'Biology']




```python
max(b)
```




    'Computational'




```python
min(b)
```




    'Biology'




```python
c = "BIOL2214 Intro"
```


```python
max(c) #lowest letter in alphabet
```




    't'




```python
b
```




    ['Computational', 'Biology']




```python
"-".join(b) #joins the words or numbers together
```




    'Computational-Biology'




```python
"".join(b) #join no delimiter
```




    'ComputationalBiology'




```python
"B" in b #see if B exists in the thing given
```




    False




```python
"B" in c
```




    True




```python
dict
```




    {'a': 'test', 'b': 55, 'c': [1, 2, 3]}




```python
"a" in dict
```




    True




```python
55 in dict.values() #looking at in values
```




    True




```python

```
