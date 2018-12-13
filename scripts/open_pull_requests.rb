require 'net/http'
require 'json'

repos = []

repos.each do |repo|
  sleep 2
  puts "Opening PR on #{repo}"
  pr_uri = URI("https://api.github.com/repos/sous-chefs/#{repo}/pulls")

  pr_req = Net::HTTP::Post.new(pr_uri, {'Content-Type': 'text/json'})
  pr_req.basic_auth(ARGV[0], ARGV[1])
  pr_req.body = {
    "title": "#{ARGV[2]}",
    "head": "#{ARGV[3]}",
    "base": "master"}.to_json
  pr_http = Net::HTTP.new(pr_uri.hostname, pr_uri.port)
  pr_http.use_ssl = (pr_uri.scheme == "https")
  pr_resp = pr_http.request(pr_req)
  puts pr_resp.code
end
