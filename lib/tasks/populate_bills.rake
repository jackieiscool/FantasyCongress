require 'net/http'
require 'json'
require 'PP'


namespace :bills do
  task :get_info => :environment do

    (1..500).each do |loop|

    url_string = "http://api.realtimecongress.org/api/v1/bills.json?apikey=9d100a5aec4c4e7682548b5b436a57f9&page=#{loop}&per_page=50"
    url = URI.parse(url_string)
    req = Net::HTTP::Get.new(url_string)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    a = res.body
    b = JSON.parse(a, :symbolize_names => 1)

    # bill_id = []
    # b[:bills].each do |b|
    #   bill_id << b[:bill_id]
    # end
    # p bill_id.count

    b[:bills].each do |bill|
         bill_info_hash = {}
         bill_info_hash[:bioguide_id] = bill[:sponsor][:bioguide_id]
         bill_info_hash[:title] = bill[:official_title]
         #bill_info_hash[:actions] = bill[:actions]
         bill_info_hash[:unique_id] = bill[:bill_id]
         bill_info_hash[:bill_type] = bill[:bill_type]
         bill_info_hash[:chamber] = bill[:chamber]
         bill_info_hash[:enacted] = bill[:enacted]
         @bill = Bill.new(bill_info_hash)
         begin
           @bill.save
           p "#{@bill.inspect} successfully added to fantasy congress"
          rescue
           p "#{@bill.inspect} already exists, not added"
          else

          ensure
         #   p "the ensure statement executed"
         end

       end
       p "-----------------------#{loop}---------------------------------"
    end


  end
end
