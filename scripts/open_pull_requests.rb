#!/home/jfield/.rubies/2.6.0/bin/ruby
# usage: run in a directory with all git repos for which you want to open pull requests
# ruby open_pull_requests.rb <user_name> <token|password> <pr_title> <pr_body> <your_branch_name>
require 'net/http'
require 'json'

repos = []

repos.each do |repo|
  sleep 2
  puts "Opening PR on #{repo}"
  pr_uri = URI("https://api.github.com/repos/sous-chefs/#{repo}/pulls")

  pr_req = Net::HTTP::Post.new(pr_uri, 'Content-Type': 'text/json')
  pr_req.basic_auth(ARGV[0], ARGV[1])
  pr_req.body = {
    "title": ARGV[2].to_s,
    "body": ARGV[3].to_s,
    "head": ARGV[4].to_s,
    "base": 'master' }.to_json
  pr_http = Net::HTTP.new(pr_uri.hostname, pr_uri.port)
  pr_http.use_ssl = (pr_uri.scheme == 'https')
  pr_resp = pr_http.request(pr_req)
  puts pr_resp.code
end
