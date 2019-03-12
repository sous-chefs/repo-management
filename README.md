# repo-management

A repo of helpful things for managing the many repos in sous-chefs org (easily updatable to use in other orgs)

## Usage

Most scripts require you be in a directory containing all the repos you'd like to act on, for example:

```
/home/sous-chefs/
  aptly/
  apache2/
  ...
```

|  Script Name     |  Description     |   Usage    |
|  ---  |  ---  |  ---  |
| add_codeowners_if_not_present.rb      | Adds/updates a `CODEOWNERS` file with the repo name as team name | `ruby add_codeowners_if_not_present.rb <GITHUB_USERNAME> <GITHUB_PASSWORD_OR_TOKEN>` |
| clone_all_repos_in_org.sh | clones all repos in github org | `clone_all_repos_in_org.sh` |
| git_branch_commit_push.sh | Pulls master, then checks out a new branch, commits and pushes | `git_branch_commit_push.sh <path to git ssh key> <branch name> <commit message>` |
| open_pull_requests.rb | Opens a pull request | `ruby open_pull_requests.rb <user_name> <token|password> <pr_title> <pr_body> <your_branch_name>` |
| update_labels.sh | Removes the Dangerfile PR label check | `update_labels.sh` |
| watch_repos.rb | Watches all repos in org | `ruby watch_repos.rb <GITHUB_USERNAME> <GITHUB_PASSWORD_OR_TOKEN>` |
