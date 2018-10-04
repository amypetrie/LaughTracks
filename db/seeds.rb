require './app/models/comedian.rb'
require './app/models/special.rb'
require 'activerecord-import/base'

# comedian = Comedian.create(...)
# special_1 = comedian.specials.create(...)
# special_2 = comedian.special.create(...)
kevin_h = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, PA" )
jerry_s = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City, NY" )
sarah_s = Comedian.create(name: "Sarah Silverman", age: 47, city: "Bedford, NH" )
chris_r = Comedian.create(name: "Chris Rock", age: 53, city: "Andrews, SC" )
joan_r = Comedian.create(name: "Joan Rivers", age: 81, city: "New York City, NY" )
dave_c = Comedian.create(name: "Dave Chapelle", age: 45, city: "Washington, D.C." )
amy_s = Comedian.create(name: "Amy Schumer", age: 37, city: "Washington, D.C." )
steve_m = Comedian.create(name: "Steve Martin", age: 73, city: "Waco, TX")
louis_ck = Comedian.create(name: "Louis C.K.", age: , city: )
robin_r = Comedian.create(name: "Robin Williams", age: 51, city: "Washington, D.C.")
jeaneane_g = Comedian.create(name: "Janeane Garofalo", age: 54, city: "Newton, NJ" )
eddie_m = Comedian.create(name: "Eddie Murphy", age: 57, city: "New York City, NY" )

puts "added #{comedian.specials.count} specials for #{comedian.name}."
