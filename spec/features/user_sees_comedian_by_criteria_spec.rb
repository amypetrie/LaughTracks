RSpec.describe 'user sees comedian specific page by criteria' do
  describe 'when user types URL query by comedian attribute' do
    it 'should only show the applicable comedian info on the page' do

      kevin_h = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, PA" )
      kevin_special_1 = kevin_h.specials.create(title: "I'm a Grown Little Man", run_time: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjI4MTYwNTUzMF5BMl5BanBnXkFtZTcwODk1Mjk3Mw@@._V1_.jpg")
      kevin_special_2 = kevin_h.specials.create(title: "Laugh at My Pain", run_time: 85, image_url: "https://m.media-amazon.com/images/M/MV5BMjI4NjA5NTI0OV5BMl5BanBnXkFtZTcwMTU0MzI1Ng@@._V1_.jpg")

      jerry_s = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City, NY" )
      jerry_special_1 = jerry_s.specials.create(title: "Jerry Before Seinfeld", run_time: 45, image_url: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg")
      jerry_special_2 = jerry_s.specials.create(title: "I'm Telling You for the Last Time", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg")

      sarah_s = Comedian.create(name: "Sarah Silverman", age: 64, city: "Bedford, NH" )
      sarah_special_1 = sarah_s.specials.create(title: "We Are Miracles", run_time: 75, image_url: "https://m.media-amazon.com/images/M/MV5BMzQwZWM0YjQtOTJjNi00MjE4LThmMDEtZjA1NTQ2MDY2MzYxXkEyXkFqcGdeQXVyMTU3NTQyMTg@._V1_SY1000_CR0,0,756,1000_AL_.jpg")
      sarah_special_2 = sarah_s.specials.create(title: "Jesus Is Magic", run_time: 80, image_url: "https://m.media-amazon.com/images/M/MV5BZWQ5MTMwZDItZThjZC00ZGY3LWIxMDYtMGUzYzFkZTZiZWRmXkEyXkFqcGdeQXVyNzA5NjUyNjM@._V1_.jpg")

      visit '/comedians?age=64'

      within('.comedian_content') do
        expect(page).to_not have_content(kevin_h.name)
        expect(page).to have_content(jerry_s.name)
        expect(page).to have_content(sarah_s.name)
      end
    end
  end
end
