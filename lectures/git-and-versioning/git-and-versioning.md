---
# title: Introduction to Git
revealOptions:
  width: 1400
  height: 900
  transition: 'slide'
  slideNumber: true
  showSlideNumber: 'all'
  customStylesheet: styles.css
  pdfSeparateFragments: false
  pdfMaxPagesPerSlide: 1
---

# Introduction to Git
### What is Version Control?

---

## What is Version Control?
- A system to manage changes to files over time.  
- Enables tracking, collaboration, and versioning.  
- Prevents data loss and streamlines teamwork.

<div style="text-align: center; margin-top: 20px;">
  <img src="https://upload.wikimedia.org/wikipedia/commons/3/3f/Git_icon.svg" alt="Git Logo" style="width: 100px;">
  <p><i>Think of Git as a time machine for your projects!</i></p>
</div>

---

## Why Use Git on Linux?
- Seamless integration with Ubuntu Linux.  
- Command-line tools for efficient workflow.  
- Flexible configuration for development environments.  
- Direct compatibility with popular Linux package managers.

---

### Example Scenario
- Multiple developers collaborating on a techy story titled "Git-tastic Chronicles."
- Resolve conflicts when multiple edits overlap.
- Use Git to merge contributions seamlessly.

<div style="text-align: center;">
  <img src="https://via.placeholder.com/600x300?text=Example+Scenario" alt="Example Scenario" style="width: 80%; border-radius: 8px;">
</div>

---

## Benefits of Version Control
1. Maintain a history of changes.  
2. Collaborate with a team effectively.  
3. Experiment and roll back safely.  
4. Avoid overwriting or losing work.

<div style="text-align: center;">
  <img src="https://via.placeholder.com/150x150?text=Git+Benefits" alt="Git Benefits" style="width: 150px;">
</div>

---

## Visualizing Version Control

<div style="text-align: center;">
  <img src="https://via.placeholder.com/600x300?text=Version+Control+Visualization" alt="Version Control Visualization" style="width: 80%; border-radius: 8px;">
</div>

---

# Setting Up Git
### Preparing Your Environment

---

## Step 1: Installing Git

### Command:
```bash
sudo apt update
sudo apt install git
```

### Explanation:
- `sudo apt update`: Updates the local package index to ensure you get the latest version.
- `sudo apt install git`: Downloads and installs Git from the Ubuntu repositories.

---

## Step 2: Verifying Installation

### Command:
```bash
git --version
```

### Example Output:
```bash
git version 2.x.x
```

---

## Step 3: Configuring Git

### Commands:
```bash
# Set gedit as the default editor for Git
sudo apt install gedit -y
git config --global core.editor "gedit"
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Explanation:
- `--global`: Applies these settings for all repositories on this machine.
- Associates commits with your name and email for tracking changes.

---

## Basic Git Operations
### Repository-Level Operations

---

### Initializing vs Cloning a Repository

#### Option 1: Initializing a New Repository
- Use when starting a project from scratch:
  ```bash
  git init git-tastic-chronicles
  ```
  Example Output:
  ```bash
  Initialized empty Git repository in 
  /path/git-tastic-chronicles/.git/
  ```

#### Option 2: Cloning an Existing Repository
- Use when collaborating on an existing project:
  ```bash
  git clone <repository-url>
  ```
  Example:
  ```bash
  git clone https://github.com/example/git-tastic-chronicles.git
  ```

---

### Initial Project Setup

1. Create a new file:
   ```bash
   # Open the file in gedit 
   # and add the content manually
   gedit README.md 
   ```
2. Stage the file:
   ```bash
   git add README.md
   ```
3. Commit the change:
   ```bash
   git commit -m 
   "Initial commit with README.md"
   ```
4. Push to remote (if applicable):
   ```bash
   git push origin main
   ```

---

## Branching in Git

### Creating and Switching Branches

#### Commands:
1. Create a new branch for Chapter One edits:
   ```bash
   git branch cool-feature
   ```
2. Switch to the branch:
   ```bash
   git checkout cool-feature
   ```
3. Shortcut for creating and switching:
   ```bash
   git switch -c cool-feature
   ```

---

## Editing the File in the New Branch

1. Add content to `README.md`:
   ```bash
   # Open the file and type 
   # "## Chapter One: The Beginning
   # of Git-tastic Chronicles" 
   gedit README.md 
   ```
2. Stage and commit the changes:
   ```bash
   git add README.md
   git commit -m 
   "Add Chapter One to README.md"
   ```

---

## Merging Branches

#### Commands:
1. Switch to the target branch:
   ```bash
   git checkout main
   ```
2. Merge the feature branch:
   ```bash
   git merge cool-feature
   ```

---

## Resolving Merge Conflicts

---

### Step 1: Attempt to Merge

#### Command:
```bash
git merge cool-feature
```

#### Explanation:
This attempts to integrate the changes from `cool-feature` into the current branch. If there are conflicting changes, Git will pause the merge and show the conflict.

---

### Step 2: Resolving the Conflict

#### Scenario:
Two contributors edited the same line in `README.md`, leading to a conflict. Open the conflicting file to see conflict markers:

#### Example Conflict Markers:
```plaintext
<<<<<<< HEAD
Introduction edits by the main branch
=======
Additions to Chapter One
>>>>>>> cool-feature
```

#### Resolution:
Edit the file to combine or choose the appropriate changes.

---

### Step 3: Staging the Resolved File

#### Command:
```bash
git add README.md
```

#### Explanation:
Staging the file marks it as resolved and ready for the next commit.

---

### Step 4: Completing the Merge

#### Command:
```bash
git commit -m "Resolve merge conflict in README.md"
```

#### Explanation:
This finalizes the merge by committing the resolved changes to the repository.

---

## Working with Remotes
### Adding and Managing Remote Repositories

---

### Adding a Remote Repository

#### Commands:
1. Add a remote repository:
   ```bash
   git remote add origin <repository-url>
   ```
2. Push changes to the remote:
   ```bash
   git push origin main
   ```

---

### Pulling Changes

#### Commands:
1. Fetch changes:
   ```bash
   git fetch origin
   ```
2. Merge fetched changes:
   ```bash
   git pull origin main
   ```

---

## Key Takeaways
- Repository-level operations set up your project.
- Branch-level operations isolate and manage changes effectively.
- Merge conflicts are resolved manually by editing files.
- Remote repositories enable team collaboration.
