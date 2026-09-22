```python
about_me.py
```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    Cell In[1], line 1
    ----> 1 about_me.py
    

    NameError: name 'about_me' is not defined



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
