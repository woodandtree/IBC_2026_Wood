## 5.1 Markdown Homework

## Add and commit file to github repository. Sync the remote and local repository.
#### git add . Adds everything in the repository that was updated to be tracked
#### git status check to look at what was added
#### git commit -m "" commit the information basically a save and writes a comment regarding what is being saved
#### git log shows everything that was commit so it can be used as a check
#### git push pushes all this information from the local system to the remote system in github

```bash
woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git add .

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git status

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git commit -m "Add P1"

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git log

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git push
```

## 5.2 Semicolon-delimited to comma-delimited

### Inside semicolon_csv_converter.sh
#### the tr does the switch of the ; to a , 
#### the $1 represent the input of whatever file is being used so the second file listed when writing the code
#### the  ${1%.txt} removes the file ending and with the _comma.csv it knows to replace it with that ending, the % means remove this part but only if it's at the end
#### the <> means input into this a spit out this other thing
```bash
tr ";" "," < "$1" > "${1%.txt}_comma.csv"
```

### Actual change from Semicolon-delimited to comma-delimited

#### bash says run this program one this file
```bash
woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ bash semicolon_csv_converter.sh semicolon-delimited.txt
```

#### Used ls to list files in the folder and check that it did the right thing
```bash
woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ ls
AnotherFile.txt  semicolon_csv_converter.sh  semicolon-delimited.txt  semicolon-delimited.txt_comma.csv  SomeFile.txt
```

#### Checked to see if it did it correctly cat run/reads the file
```bash
woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ cat semicolon-delimited.txt_comma.csv
Year, carbonaria, typica
1967, 47, 0
1968, 58, 0
```

#### Noticed that the code didn't remove the txt so edited the code into the one listed perform and ran it again
```bash
woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ bash semicolon_csv_converter.sh semicolon-delimited.txt
```

#### Checking again did it right
```bash
woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ ls
AnotherFile.txt             semicolon-delimited.txt            semicolon-delimited_comma.csv
semicolon_csv_converter.sh  semicolon-delimited.txt_comma.csv  SomeFile.txt
```

#### checked the two different files to show the difference
```bash
woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ cat semicolon-delimited.txt
Year; carbonaria; typica
1967; 47; 0
1968; 58; 0

woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ cat semicolon-delimited_comma.csv
Year, carbonaria, typica
1967, 47, 0
1968, 58, 0
```

## Reupload to github
#### Same process as mentioned prior
```bash
woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git add .

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git status

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git commit -m "Added files for P3 and Updated P3"

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git log

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git push
```

