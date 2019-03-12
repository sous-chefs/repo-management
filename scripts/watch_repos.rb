require 'net/http'
require 'json'

# Usage: ruby watch_repos.rb <GITHUB_USERNAME> <GITHUB_PASSWORD_OR_TOKEN>
Dir.glob('*').each do |dir|
  sleep 2
  puts "Setting a watch subscription on #{dir}"
  pr_uri = URI("https://api.github.com/repos/sous-chefs/#{dir}/subscription")
  pr_req = Net::HTTP::Put.new(pr_uri, 'Content-Type': 'text/json')
  pr_req.basic_auth(ARGV[0], ARGV[1])
  pr_req.body = { 'subscribed': true }.to_json
  pr_http = Net::HTTP.new(pr_uri.hostname, pr_uri.port)
  pr_http.use_ssl = (pr_uri.scheme == 'https')
  pr_resp = pr_http.request(pr_req)
  puts pr_resp.code
end
