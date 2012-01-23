namespace :db do
  desc "Erase and fill database."
  task :populate => :environment do
    require 'populator'
    [Client, Facility, Area].each(&:delete_all)
    
    Client.populate 20 do |client|
      client.name = Populator.words(1..3).titlelize
      Facility.populate 10..20 do |facility|
        facility.client.id = client.id
        facility.name = Populator.words(1..3).titleize
      end
    end  
  end
end