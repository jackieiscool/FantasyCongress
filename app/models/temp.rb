# require 'congress'
# require 'sunlight'
#
# Congress.key = "9d100a5aec4c4e7682548b5b436a57f9"
#
# puts Congress.bills
#
# puts "+++++++++++++++++++++++++++++++++++++++"
#
# puts Congress.votes
#
# puts "+++++++++++++++++++++++++++++++++++++++++++++"
#
# puts Congress.amendments
#
# # Sunlight::Base.api_key = '9d100a5aec4c4e7682548b5b436a57f9'
# #
# # congresspeople = Sunlight::Legislator.all_for(:address => "123 Fifth Ave New York, NY 10003")
# # junior_senator = congresspeople[:junior_senator]
# # person = junior_senator.lastname
# # members_of_congress = Sunlight::Legislator.all_where(:state => 'CA')
# #
# #   members_of_congress.each do |member|
# #     # p member.lastname
# #   end
# #
# #   legislators = Sunlight::Legislator.search_by_name("Smith")
# #   legislators.each do |legislator|
# #     p legislator.firstname
# #   end