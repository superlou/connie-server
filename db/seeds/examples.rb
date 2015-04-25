#require './factory_girl'
#require File.dirname(__FILE__) + '/../../test/factories.rb'
require 'yaml'
require 'open-uri'

puts "== Add Example Data =="
puts "Deleting existing data"
Con.delete_all
Event.delete_all
Place.delete_all

def load_convention(file_name)
  data = YAML::load(File.open(file_name))

  puts "Creating example convention"
  convention = Con.create!(:name => data["convention"]["name"])
  puts "- #{convention.name}"

  convention_places = data["places"]
  if convention_places
    puts "Creating example places"

    convention_places.each do |place|
      p = Place.create!(name: place["name"],
                        parent: Place.find_by(name: place["parent"]),
                        con: convention
                        )

      puts "- #{p.name}"
    end
  end

  convention_events = data["events"]
  if convention_events
    puts "Creating example events"

    convention_events.each do |event|
      puts "- #{event["name"]}"
      e = Event.create!(name: event["name"],
                        description: event["description"],
                        con: convention
                        )

      if event['start'] and event['end']
        e.start = DateTime.parse("#{event["start"]} EST")
        e.finish = DateTime.parse("#{event["end"]} EST")
        e.save
      end
    end
  end
end

load_convention("#{Rails.root}/db/seeds/anext_data.yaml")
load_convention("#{Rails.root}/db/seeds/bcon_data.yaml")
