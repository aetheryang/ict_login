require 'net/http'
require 'io/console'
puts 'Please input the username'
uname = gets.chomp
puts 'please input the password'
pass  = STDIN.noecho(&:gets).chomp
uri = URI('http://159.226.39.22/cgi-bin/do_login')
res = Net::HTTP.post_form(uri, 'uname' => uname, 'pass'  => pass)
puts res.body if res.body.include?('error')

# ATTENTION! If you don't mind to save your password even EVERYONE can get it, change line 2 to line 9 into line 14
# and do not forget change the uname and pass. Also you may just save your uname, find it out by yourself. :)
#
# Net::HTTP.post_form(URI('http://159.226.39.22/cgi-bin/do_login'), 'uname' => 'Goldjin', 'pass' => 'spicy chicken')
#
