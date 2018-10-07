RSpec.describe 'Create a new comedian' do
  describe 'as a visitor' do
    it 'should allow me to create a new comedian' do
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

      visit '/comedians/new'

      fill_in("comedian[name]", with: "Amy Petrie")
      fill_in("comedian[age]", with: 26)
      fill_in("comedian[city]", with: "Hinsdale, IL")
      click_button "Submit"
      last_comedian = Comedian.last

      expect(current_path).to eq("/comedians")
      within('.comedian_content') do
        expect(page).to have_content("Amy Petrie")
      end
    end
  end
end
