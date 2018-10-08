RSpec.describe 'Create a new comedian' do
  describe 'as a visitor' do
    it 'should allow me to create a new comedian' do
      kevin_h = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, PA" )
      kevin_special_1 = kevin_h.specials.create(title: "I'm a Grown Little Man", run_time: 60, image_url: "https://m.media-amazon.com/images/M/MV5BMjI4MTYwNTUzMF5BMl5BanBnXkFtZTcwODk1Mjk3Mw@@._V1_.jpg")
      kevin_special_2 = kevin_h.specials.create(title: "Laugh at My Pain", run_time: 85, image_url: "https://m.media-amazon.com/images/M/MV5BMjI4NjA5NTI0OV5BMl5BanBnXkFtZTcwMTU0MzI1Ng@@._V1_.jpg")

      jerry_s = Comedian.create(name: "Jerry Seinfeld", age: 64, city: "New York City, NY" )
      jerry_special_1 = jerry_s.specials.create(title: "Jerry Before Seinfeld", run_time: 45, image_url: "https://m.media-amazon.com/images/M/MV5BOTc2N2I0Y2UtOTgyYy00MTU3LTk1YzItZGIwMDcxY2JkMGQzXkEyXkFqcGdeQXVyMjQzNzk2ODk@._V1_.jpg")
      jerry_special_2 = jerry_s.specials.create(title: "I'm Telling You for the Last Time", run_time: 90, image_url: "https://m.media-amazon.com/images/M/MV5BNDM4OTY0NTAyMF5BMl5BanBnXkFtZTcwNTcxMDQyMQ@@._V1_.jpg")

      visit '/comedians/new'

      fill_in("comedian[name]", with: "Amy Petrie")
      fill_in("comedian[age]", with: 26)
      fill_in("comedian[city]", with: "Hinsdale, IL")
      click_button "Submit"

      last_comedian = Comedian.last

      expect(current_path).to eq("/comedians")
        within('.comedian_content') do
        expect(page).to have_content("Amy Petrie")
        expect(page).to have_content("Kevin Hart")
        expect(page).to have_content("Jerry Seinfeld")
      end
    end
  end
end
