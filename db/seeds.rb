require './app/models/comedian.rb'
require './app/models/special.rb'

kevin_h = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, PA" )
kevin_special_1 = kevin_h.specials.create(title: "I'm a Grown Little Man", run_time: 60)
kevin_special_2 = kevin_h.specials.create(title: "Laugh at My Pain", run_time: 85)

jerry_s = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City, NY" )
jerry_special_1 = jerry_s.specials.create(title: "Jerry Before Seinfeld", run_time: 45)
jerry_special_2 = jerry_s.specials.create(title: "I'm Telling You for the Last Time", run_time: 90)

sarah_s = Comedian.create(name: "Sarah Silverman", age: 47, city: "Bedford, NH" )
sarah_special_1 = sarah_s.specials.create(title: "We Are Miracles", run_time: 75)
sarah_special_2 = sarah_s.specials.create(title: "Jesus Is Magic", run_time: 80)

chris_r = Comedian.create(name: "Chris Rock", age: 53, city: "Andrews, SC" )
chris_special_1 = chris_r.specials.create(title: "Born Suspect", run_time: 95)
chris_special_2 = chris_r.specials.create(title: "Bigger and Blacker", run_time: 85)

joan_r = Comedian.create(name: "Joan Rivers", age: 81, city: "New York City, NY" )
joan_special_1 = joan_r.specials.create(title: "Don’t Start with Me", run_time: 60)
joan_special_2 = joan_r.specials.create(title: "An Audience with Joan Rivers", run_time: 65)

dave_c = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C." )
dave_special_1 = dave_c.specials.create(title: "Equanimity", run_time: 85)
dave_special_2 = dave_c.specials.create(title: "Deep in the Heart of Texas", run_time: 80)

amy_s = Comedian.create(name: "Amy Schumer", age: 37, city: "Washington, D.C." )
amy_special_1 = amy_s.specials.create(title: "The Leather Special", run_time: 75)
amy_special_2 = amy_s.specials.create(title: " Live at the Apollo", run_time: 70)

steve_m = Comedian.create(name: "Steve Martin", age: 73, city: "Waco, TX")
steve_special_1 = steve_m.specials.create(title: "Steve Martin’s Best Show Ever", run_time: 85)
steve_special_2 = steve_m.specials.create(title: "All Commercials… A Steve Martin Special", run_time: 100)

louis_ck = Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.")
louis_special_1 = louis_ck.specials.create(title: "Hilarious", run_time: 75)
louis_special_2 = louis_ck.specials.create(title: "Shameless", run_time: 80)

robin_w = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
robin_special_1 = robin_w.specials.create(title: "Weapons of Self-Destruction", run_time: 95)
robin_special_2 = robin_w.specials.create(title: "Off the Wall", run_time: 70)

jeaneane_g = Comedian.create(name: "Janeane Garofalo", age: 54, city: "Newton, NJ" )
jeaneane_special_1 = jeaneane_g.specials.create(title: "Comedy Product", run_time: 75)
jeaneane_special_2 = jeaneane_g.specials.create(title: "The A List", run_time: 65)

eddie_m = Comedian.create(name: "Eddie Murphy", age: 57, city: "New York City, NY" )
eddie_special_1 = eddie_m.specials.create(title: "Raw", run_time: 85)
eddie_special_2 = eddie_m.specials.create(title: "Delirious", run_time: 80)
