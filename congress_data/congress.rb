require 'congress'
require 'sunlight'

Congress.key = "9d100a5aec4c4e7682548b5b436a57f9"
Sunlight::Base.api_key = '9d100a5aec4c4e7682548b5b436a57f9'

# johns = Sunlight::Legislator.all_where(:firstname => "John")

# kucinich = Sunlight::Legislator.all_where(:bioguide_id => "K000336")
#
# dudes = Sunlight::Legislator.all_where(:gender => "M")
# chicks = Sunlight::Legislator.all_where(:gender => "F")
# # puts kucinich.class
# # puts kucinich.inspect
#
# senior_senator = dudes[:senior_senator]
# p senior_senator.firstname

congresspeople = Sunlight::Legislator.all_where(:bioguide_id => "K000336")
# s = congresspeople[:senior_senator]
array = []
congresspeople.each do |c|
  array << c.lastname
end
p array