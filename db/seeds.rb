# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

startup = Startup.create(name: "Villwock Ventures")
Location.new(city: "Green Bay, WI",
            locationable_id: startup.id,
            locationable_type: startup.class.name).save
Profile.new(description: "Currently in stealth mode",
            profileable_id: startup.id,
            profileable_type: startup.class.name).save
user = User.create(name: "Matt", startup_id: startup.id)
Location.new(city: "San Francisco",
            locationable_id: user.id,
            locationable_type: user.class.name).save
Profile.new(description: "A curious guy with a big heart",
            profileable_id: user.id,
            profileable_type: user.class.name).save