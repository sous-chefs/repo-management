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

## Contributors

This project exists thanks to all the people who contribute.
<img src="https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false" /></a>


### Backers

Thank you to all our backers! 🙏 [[Become a backer](https://opencollective.com/sous-chefs#backer)]
<a href="https://opencollective.com/sous-chefs#backers" target="_blank"><img src="https://opencollective.com/sous-chefs/backers.svg?width=890"></a>

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website. [[Become a sponsor](https://opencollective.com/sous-chefs#sponsor)]
<a href="https://opencollective.com/sous-chefs/sponsor/0/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/0/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/1/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/1/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/2/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/2/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/3/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/3/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/4/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/4/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/5/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/5/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/6/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/6/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/7/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/7/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/8/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/8/avatar.svg"></a>
<a href="https://opencollective.com/sous-chefs/sponsor/9/website" target="_blank"><img src="https://opencollective.com/sous-chefs/sponsor/9/avatar.svg"></a>
