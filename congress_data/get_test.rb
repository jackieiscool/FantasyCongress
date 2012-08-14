require 'net/http'

# #{x}
#  25236

(1..504).each do |x|

  url_string = "http://api.realtimecongress.org/api/v1/bills.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&page=#{x}&per_page=50"
  url = URI.parse(url_string)
  req = Net::HTTP::Get.new(url_string)
  res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req)
  }
  p "--------------------------------------"
  p x
  p res.body
  p "--------------------------------------"
  File.open("bills_new.json", "a") do |f|
    f << res.body
  end

end



