# 5.1 Markdown Homework

# Add and commit file to github repository. Sync the remote and local repository.

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

```bash

# 5.2 Semicolon-delimited to comma-delimited

#Inside semicolon_csv_converter.sh

```bash
tr ";" "," < "$1" > "${1%.txt}_comma.csv"
```bash

#changes the ; to , and renames the file

#Actual change from Semicolon-delimited to comma-delimited

```bash
woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ bash semicolon_csv_converter.sh semicolon-delimited.txt

woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ ls
AnotherFile.txt  semicolon_csv_converter.sh  semicolon-delimited.txt  semicolon-delimited.txt_comma.csv  SomeFile.txt

woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ cat semicolon-delimited.txt_comma.csv
Year, carbonaria, typica
1967, 47, 0
1968, 58, 0

woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ bash semicolon_csv_converter.sh semicolon-delimited.txt

woodZ@AT-AT MINGW64 ~/IntroBiolComp-2026/Unix/sandbox (main)
$ ls
AnotherFile.txt             semicolon-delimited.txt            semicolon-delimited_comma.csv
semicolon_csv_converter.sh  semicolon-delimited.txt_comma.csv  SomeFile.txt

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

```bash