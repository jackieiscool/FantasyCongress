require 'net/http'

url = URI.parse('http://api.realtimecongress.org/api/v1/bills.json?apikey=9d100a5aec4c4e7682548b5b436a57f9')
req = Net::HTTP::Get.new(url.path)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}

#puts res.body

x = File.open("bills.json", "w+")
x.write(res.body)



# http://api.realtimecongress.org/api/v1/bills.json?apikey=9d100a5aec4c4e7682548b5b436a57f9