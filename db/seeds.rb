require './app/models/comedian.rb'
require './app/models/special.rb'
# require 'DataBaseCleaner'
# DatabaseCleaner.strategy = :truncation
# DataBaseCleaner.clean

kevin_h = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, PA" )
kevin_special_1 = kevin_h.specials.create(title: "I'm a Grown Little Man", run_time: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjI4MTYwNTUzMF5BMl5BanBnXkFtZTcwODk1Mjk3Mw@@._V1_.jpg")
kevin_special_2 = kevin_h.specials.create(title: "Laugh at My Pain", run_time: 85, image_url: "https://m.media-amazon.com/images/M/MV5BMjI4NjA5NTI0OV5BMl5BanBnXkFtZTcwMTU0MzI1Ng@@._V1_.jpg")

jerry_s = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City, NY" )
jerry_special_1 = jerry_s.specials.create(title: "Jerry Before Seinfeld", run_time: 45, image_url: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg")
jerry_special_2 = jerry_s.specials.create(title: "I'm Telling You for the Last Time", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg")

sarah_s = Comedian.create(name: "Sarah Silverman", age: 47, city: "Bedford, NH" )
sarah_special_1 = sarah_s.specials.create(title: "We Are Miracles", run_time: 75, image_url: "https://m.media-amazon.com/images/M/MV5BMzQwZWM0YjQtOTJjNi00MjE4LThmMDEtZjA1NTQ2MDY2MzYxXkEyXkFqcGdeQXVyMTU3NTQyMTg@._V1_SY1000_CR0,0,756,1000_AL_.jpg")
sarah_special_2 = sarah_s.specials.create(title: "Jesus Is Magic", run_time: 80, image_url: "https://m.media-amazon.com/images/M/MV5BZWQ5MTMwZDItZThjZC00ZGY3LWIxMDYtMGUzYzFkZTZiZWRmXkEyXkFqcGdeQXVyNzA5NjUyNjM@._V1_.jpg")

chris_r = Comedian.create(name: "Chris Rock", age: 53, city: "Andrews, SC" )
chris_special_1 = chris_r.specials.create(title: "Born Suspect", run_time: 95, image_url: "https://m.media-amazon.com/images/M/MV5BMTEyNjM5MjgyNzdeQTJeQWpwZ15BbWU3MDAzMzUyODc@._V1.._SY1000_CR0,0,665,1000_AL_.jpg")
chris_special_2 = chris_r.specials.create(title: "Bigger and Blacker", run_time: 85, image_url: "https://m.media-amazon.com/images/M/MV5BMTlhYzMzNzItNWMyYy00ZGRlLWI1N2UtOGI2YjIwOGEwYTViXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_SY1000_CR0,0,666,1000_AL_.jpg")

joan_r = Comedian.create(name: "Joan Rivers", age: 81, city: "New York City, NY" )
joan_special_1 = joan_r.specials.create(title: "Don’t Start with Me", run_time: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjE4NzIxNjc0OF5BMl5BanBnXkFtZTcwODA5MTQzMg@@._V1_.jpg")
joan_special_2 = joan_r.specials.create(title: "An Audience with Joan Rivers", run_time: 65, image_url: "https://m.media-amazon.com/images/M/MV5BMTU4Nzg3MTM5OF5BMl5BanBnXkFtZTcwODI3NjM4OA@@._V1_.jpg")

dave_c = Comedian.create(name: "Dave Chappelle", age: 45, city: "Washington, D.C." )
dave_special_1 = dave_c.specials.create(title: "Equanimity", run_time: 85, image_url: "https://m.media-amazon.com/images/M/MV5BZGQ2MjBjNDEtYWVlNi00Nzc3LTg2NjUtYWY3ZTkwNTAwNDQyXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")
dave_special_2 = dave_c.specials.create(title: "Deep in the Heart of Texas", run_time: 80, image_url: "https://m.media-amazon.com/images/M/MV5BODJkMTAxNmYtZDg4OS00NzA2LTlmZTUtMDc2MjIwMzE4ZDMxXkEyXkFqcGdeQXVyMTk3NDAwMzI@._V1_.jpg")

amy_s = Comedian.create(name: "Amy Schumer", age: 37, city: "Washington, D.C." )
amy_special_1 = amy_s.specials.create(title: "The Leather Special", run_time: 75, image_url: "https://m.media-amazon.com/images/M/MV5BMGMxYWY1MTktZDFlNC00YjdjLTk5MGMtODEwNTZiY2MxZjk1XkEyXkFqcGdeQXVyNTI3NjIyMjI@._V1_.jpg")
amy_special_2 = amy_s.specials.create(title: " Live at the Apollo", run_time: 70, image_url: "https://m.media-amazon.com/images/M/MV5BMTkzMzU1MTc3M15BMl5BanBnXkFtZTgwNjYyMjQ5NjE@._V1_.jpg")

steve_m = Comedian.create(name: "Steve Martin", age: 73, city: "Waco, TX")
steve_special_1 = steve_m.specials.create(title: "Best Show Ever", run_time: 85, image_url: "https://m.media-amazon.com/images/M/MV5BMTI5ZjQzNzktYTk2OS00ZWFiLWFlMjctNGZjMTU3NjAyMjEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg")
steve_special_2 = steve_m.specials.create(title: "All Commercials…", run_time: 100, image_url: "https://m.media-amazon.com/images/M/MV5BZTFlMjI0ZmUtMzdhNS00YTdjLTgzZTctYzhhZjg3MTE1Nzk0XkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg")

louis_ck = Comedian.create(name: "Louis C.K.", age: 51, city: "Washington, D.C.")
louis_special_1 = louis_ck.specials.create(title: "Hilarious", run_time: 75, image_url: "https://m.media-amazon.com/images/M/MV5BNzIxMTUxMjYzMV5BMl5BanBnXkFtZTcwMDYwMjE0Nw@@._V1_.jpg")
louis_special_2 = louis_ck.specials.create(title: "Shameless", run_time: 80, image_url: "https://m.media-amazon.com/images/M/MV5BNTQyODYyNzcxN15BMl5BanBnXkFtZTgwOTA3MzcwMzE@._V1_.jpg")

robin_w = Comedian.create(name: "Robin Williams", age: 63, city: "Chicago, IL")
robin_special_1 = robin_w.specials.create(title: "Weapons of Self-Destruction", run_time: 95, image_url: "https://m.media-amazon.com/images/M/MV5BMTc2NTg2OTQ0OV5BMl5BanBnXkFtZTcwNTcyNjgxMw@@._V1_.jpg")
robin_special_2 = robin_w.specials.create(title: "Off the Wall", run_time: 70, image_url: "https://m.media-amazon.com/images/M/MV5BYWYwNTVkMTQtNTM5Ni00ZTFmLWEyYTEtODViNDQwNDM5ZjEyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMjg5NTA5Mjg@._V1_.jpg")

eddie_m = Comedian.create(name: "Eddie Murphy", age: 57, city: "New York City, NY" )
eddie_special_1 = eddie_m.specials.create(title: "Raw", run_time: 85, image_url: "https://m.media-amazon.com/images/M/MV5BOWEwYTk4YTgtZGVjNi00MmI0LTkwOTItOWUxYzBlN2YwZWFkXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_SY1000_CR0,0,666,1000_AL_.jpg")
eddie_special_2 = eddie_m.specials.create(title: "Delirious", run_time: 80, image_url: "https://m.media-amazon.com/images/M/MV5BMTQ5MDcyODU0Nl5BMl5BanBnXkFtZTcwMTgxNjA0MQ@@._V1_.jpg")
