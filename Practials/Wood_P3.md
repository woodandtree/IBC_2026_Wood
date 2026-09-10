woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git add .

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        renamed:    Wood_P1.txt -> Wood_P1.md


woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git commit -m "file txt to md"
[main 79ae7c4] file txt to md
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Practials/{Wood_P1.txt => Wood_P1.md} (100%)

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git log
commit 79ae7c416be9596574ff65f41d0f946b4409da21 (HEAD -> main)
Author: wood <woodzoe@vt.edu>
Date:   Wed Sep 9 18:42:59 2026 -0400

    file txt to md

commit f20f90f770e05fdc20fa02e289661d5186d23970 (origin/main)
Author: wood <woodzoe@vt.edu>
Date:   Wed Sep 9 18:38:29 2026 -0400

    Add P1

commit eafcaa2009725fe445d9dd385fa146495514f63e
Author: wood <woodzoe@vt.edu>
Date:   Wed Sep 9 18:16:00 2026 -0400

    Initial Commit

woodZ@AT-AT MINGW64 ~/IBC_2026_Wood/Practials (main)
$ git push
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Delta compression using up to 12 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 312 bytes | 312.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To github.com:woodandtree/IBC_2026_Wood.git
   f20f90f..79ae7c4  main -> main