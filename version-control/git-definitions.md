# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Instead of updating the same code and risk breaking it, **version control** allows the code to be worked on simultaneously amongst a team of web developers without it affecting the original. If something went wrong, the branch can be deleted and the original code unaffected which makes it extremely **useful**.

* What is a branch and why would you use one?

A **branch** in Git allows a copy of the project to be worked on without it affecting the original code. This will **enable** different web developers to work on different aspects of the code (ie, adding a hat or glasses to a cute octopus) and then merging the two together to get a complete project that has a chic octopus.

* What is a commit? What makes a good commit message?

When the web developer makes any changes and it is saved or updated, the **commit** will give important information about a specific update. It will have a unique ID, a message, the author, and a timestamp. With this set of information, a web developer can infer information regarding the project to debug or understand what another member on the team has done. A **good commit message** helps communicate to team members what has been done.

* What is a merge conflict?

A **merge conflict** arises when two branches (the current branch and the branch that you want to merge into) have commits that are not present in the other. A merge updates the master branch with revisions made on another branch and applies changes when present. If there are disagreeing changes, then a merge confict arises but the terminal will explain how to fix it.