require 'net/http'
require 'io/console'
puts 'Please input the username'
uname = gets.chomp
puts 'please input the password'
pass  = STDIN.noecho(&:gets).chomp
uri = URI('http://159.226.39.22/cgi-bin/do_login')
res = Net::HTTP.post_form(uri, 'uname' => uname, 'pass'  => pass)
puts res.body if res.body.include?('error')
