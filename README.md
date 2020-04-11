# repo-management

[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

A repo of helpful things for managing the many repos in sous-chefs org (easily updatable to use in other orgs)

## Usage

### Scripts

Most scripts require you be in a directory containing all the repos you'd like to act on, for example:

```shell
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

### Standard Files

Each folder under `standardfiles/` represents a standard file structure we want in a certian type of repository, such as a cookbook.

Automated tools ensure these are kept in sync.

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
