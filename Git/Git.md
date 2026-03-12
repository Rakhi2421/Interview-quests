
# Interview Questions & its answers.
## Git

 <details> 
 <summary><b>1. What is Git?</b></summary><br><b>

   - The full form of GIT is Global Information Tracker.
   - Git is a distributed version control system used to track code changes. I use Git for branching, merging, rollback, and collaboration. In production, Git integrates with CI/CD pipelines to automate deployments.

 </b></details>

  <details> 
  <summary><b>2. What is Github?</b></summary><br><b>

  - GitHub is a remote repository hosting platform that allows developers to store code, track changes, collaborate with teams, and manage software projects using Git.

    </b></details>

     <details> 
 <summary><b>3. What are git components?</b></summary><br><b>

   - Working Directory → Staging Area → Local Repository → Remote Repository
   - Git has four main components: Working Directory where code is modified, Staging Area where changes are prepared, Local Repository where commits are stored, and Remote Repository where code is shared with teams.

 </b></details>

 <details> 
 <summary><b>4. What is the difference between Git and GitHub?</b></summary><br><b>

   - Git is a version control system, and GitHub is a platform that hosts Git repositories for collaboration.
     
 </b></details>

 <details> 
 <summary><b>5. What is git clone?</b></summary><br><b>
   git clone is used to copy remote repository to local system.
 </b></details> 

 <details> 
 <summary><b>6. What is git add?</b></summary><br><b>

   - git add file.txt
   - git add moves changes from working directory to staging area.
     
 </b> </details> 

 <details> 
 <summary><b>7. What is git commit?</b></summary><br><b>

   - Stores changes in local repo.
   - git commit saves staged changes in the local repository.

   ```bash
   git commit -m "Fixed bug"     
   ```

 </b></details>

 <details> 
 <summary><b>8. What is git push?</b></summary><br><b>

   - Uploads changes to remote repo.
   - git push uploads local commits to remote repository.
     ```bash  
        git push origin main  
     ```
 </b></details>

<details>
<summary><b>9. What is git pull?</b></summary><br><b>

  - Downloads latest changes.
  - git pull fetches and merges latest changes from remote repository.
  ```bash  
    git pull origin main  
  ```

</b></details>

<details> 
<summary><b>10. What is git fetch vs git pull?</b></summary><br><b>
  - git fetch only downloads changes
  - git pull downloads and merges changes.
</b> </details>

<details> 
<summary><b>11. What is branching?</b></summary><br><b>

  - Branch is independent version of code.
  - Branch allows parallel development without affecting main code.
  
```bash
 git branch dev
 git checkout dev
```

</b></details>

<details> 
<summary><b>12. What is merge conflict?</b></summary><br><b>

  - Occurs when same file edited in multiple branches.
  - Merge conflict happens when Git cannot automatically merge changes.
</b> </details>  

---
## Git-Production-quests

<details> <summary><b>Scenario 1: Developer pushed wrong code to production</b></summary><br><b>

  Solution:
  - Check commit history:
    ```bash
     git log
    ```
  - Rollback:
    ```bash
     git revert commit-id
      or
     git reset --hard commit-id
    ```
  -  Interview answer:
      I revert to previous stable commit using git revert. 

</b> </details>
<details> <summary><b>Scenario 2: Latest code not visible</b></summary>
</details>

```bash
  git pull origin main
```

<details> <summary><b>Scenario 3: Undo last commit</b></summary>
</details>

```bash
 git reset --soft HEAD~1
```
---
<details><summary>🔥 Important Git Commands (Must Know)</summary>
</details>

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
---

🧪 Advanced Interview Questions
<details> 
<summary><b>What is HEAD?</b></summary><br><b>
  
  - HEAD points to latest commit.
  - HEAD is a pointer to the current branch or commit.
    
</b></details>

<details> <summary><b>What is git stash?</b></summary><br><b>

  - Temporarily saves changes.
    ```bash
    git stash
    ```
  - Restore:
    ```bash
    git stash apply
    ```
</b></details>

<details> <summary><b>What is git rebase?</b></summary><br><b>

  - Reapply commits on another branch.
  - Cleaner history.
    
</b></details>

<details><summary>🏗️ Production Git Flow Architecture</summary>
</details>

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

---
⚠️ Common Interview Trap Questions
<details> <summary><b>Difference between git reset and git revert</b></summary><br><b>

  - reset: Deletes history
  - revert: Safe rollback 
  
</b> </details>

<details> <summary><b>Difference between clone and pull</b></summary><br><b>

  - clone: First time
  - pull: Update
  
</b></details>

---
🧪 Real Interview Questions Asked in Companies

<details> <summary><b>How do you rollback code?</b></summary><br><b>
  
  - git revert commit-id
</b> </details>

<details> <summary><b>How do you fix merge conflict?</b></summary><br><b>

  ```bash
  Manual edit → add → commit
 ```
</b> </details>

<details> <summary><b>How to see commit history?</b></summary>
</details>

```bash
 git log
```

