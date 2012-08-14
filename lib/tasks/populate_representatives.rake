require 'sunlight'
Sunlight::Base.api_key = '9d100a5aec4c4e7682548b5b436a57f9'

namespace :populate do
  task :get_info => :environment do
    congresspeople = Sunlight::Legislator.all_where(:gender => "M")
    congresspeople.each do |rep|
      rep_info_hash = {}
      rep_info_hash[:firstname] = rep.firstname
      rep_info_hash[:lastname] = rep.lastname
      rep_info_hash[:bioguide_id] = rep.bioguide_id
      rep_info_hash[:state] = rep.state
      rep_info_hash[:party] = rep.party
      Representative.create(rep_info_hash)
    end
  end
end