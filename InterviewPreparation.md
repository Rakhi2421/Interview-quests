# Interview Questions & its answers.
<details>   <summary>Git</summary>
  <br>
 <details> <summary><b>1. What is Git?</b></summary>
  The full form of GIT is Global Information Tracker.  

   
Git is a distributed version control system used to track code changes. I use Git for branching, merging, rollback, and collaboration. In production, Git integrates with CI/CD pipelines to automate deployments.

 </details>

  <details>  <summary><b>2. What is Github?</b>b</summary>
     GitHub is a remote repository hosting platform that allows developers to store code, track changes, collaborate with teams, and manage software projects using Git.
 </details>

<details> <summary><b>3. What are git components?</b></summary>
  Working Directory → Staging Area → Local Repository → Remote Repository

  Git has four main components: Working Directory where code is modified, Staging Area where changes are prepared, Local Repository where commits are stored, and Remote Repository where code is shared with teams.
 </details>


 <details> <summary><b>4. What is the difference between Git and GitHub?</b></summary>
   Git is a version control system, and GitHub is a platform that hosts Git repositories for collaboration.
 </details>

 <details> <summary><b>5. What is git clone?</b></summary>
   git clone is used to copy remote repository to local system.
 </details> 

 <details> <summary><b>6. What is git add?</b></summary>
   git add file.txt
   
   git add moves changes from working directory to staging area.
 </details> 

 <details> <summary><b>7. What is git commit?</b></summary>
   Stores changes in local repo. 

   ```bash
   git commit -m "Fixed bug"     
   ```
git commit saves staged changes in the local repository.
   </details>

<details> <summary><b>8. What is git push?</b></summary>
Uploads changes to remote repo.  

```bash  
git push origin main  
```
git push uploads local commits to remote repository.
</details>

<details> <summary><b>9. What is git pull?</b></summary>
Downloads latest changes.

  ```bash  
git pull origin main  
```
git pull fetches and merges latest changes from remote repository.
</details>

<details> <summary><b>10. What is git fetch vs git pull?</b></summary>
git fetch only downloads changes, git pull downloads and merges changes.
</details>

<details> <summary><b>11. What is branching?</b></summary>
Branch is independent version of code.
  
```bash
 git branch dev
 git checkout dev
```
Branch allows parallel development without affecting main code.
</details>

<details> <summary><b>12. What is merge conflict?</b></summary>

Occurs when same file edited in multiple branches.

Merge conflict happens when Git cannot automatically merge changes.
</details>  

</details>

<details>   <summary>Git-Production-quests</summary>
<br>

<details> <summary><b>Scenario 1: Developer pushed wrong code to production</b></summary>

Solution:

Check commit history:
```bash
git log
```

Rollback:
```bash
git revert commit-id
or
git reset --hard commit-id
```
Interview answer:

I revert to previous stable commit using git revert.

</details>
<details> <summary><b>Scenario 2: Latest code not visible</b></summary>

Solution:

git pull origin main

</details>
<details> <summary><b>Scenario 3: Undo last commit</b></summary>
git reset --soft HEAD~1

</details>
<details><summary>🔥 Important Git Commands (Must Know)</summary>

```bash
git init
git clone
git add .
git commit -m ""
git push
git pull
git branch
git checkout
git merge
git log
git status
```
</details>

🧪 Advanced Interview Questions
<details> <summary><b>What is HEAD?</b></summary>

HEAD points to latest commit.

Interview answer:

HEAD is a pointer to the current branch or commit.

</details>
<details> <summary><b>What is git stash?</b></summary>

Temporarily saves changes.

git stash


Restore:

git stash apply

</details>
<details> <summary><b>What is git rebase?</b></summary>

Reapply commits on another branch.

Cleaner history.

</details>
<details><summary>🏗️ Production Git Flow Architecture</summary>

```bash
Developer
 ↓
git add
 ↓
git commit
 ↓
Local Repo
 ↓
git push
 ↓
Remote Repo (GitHub)
 ↓
CI/CD Pipeline
 ↓
Deployment
```

</details>
⚠️ Common Interview Trap Questions
<details> <summary><b>Difference between git reset and git revert</b></summary>
reset: Deletes history
revert: Safe rollback  
</details>
<details> <summary><b>Difference between clone and pull</b></summary>
clone: First time
pull: Update
</details>
🧪 Real Interview Questions Asked in Companies
<details> <summary><b>How do you rollback code?</b></summary>

Answer:

git revert commit-id

</details>
<details> <summary><b>How do you fix merge conflict?</b></summary>

Answer:

Manual edit → add → commit

</details>
<details> <summary><b>How to see commit history?</b></summary>
git log

</details>
</details>
