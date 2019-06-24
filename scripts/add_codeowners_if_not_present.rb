require 'net/http'
require 'json'

url = 'https://api.github.com/orgs/sous-chefs/teams?per_page=100'
uri = URI(url)

req = Net::HTTP::Get.new(uri)
req.basic_auth(ARGV[0], ARGV[1])
http = Net::HTTP.new(uri.hostname, uri.port)
http.use_ssl = (uri.scheme == 'https')
resp = http.request(req)
parsed_response = JSON.parse(resp.body)

teams = []
parsed_response.each do |pr|
  teams << pr['name']
end

Dir.glob('*').each do |dir|
  next unless teams.include?(dir)
  Dir.mkdir "#{Dir.pwd}/#{dir}/.github" unless File.exist?("#{Dir.pwd}/#{dir}/.github")
  f = File.open("#{Dir.pwd}/#{dir}/.github/CODEOWNERS", 'w')
  f.puts "* @sous-chefs/#{dir}"
end
