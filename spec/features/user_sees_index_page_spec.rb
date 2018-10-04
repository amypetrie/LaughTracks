RSpec.describe 'user sees the index page' do
  describe 'when user visits the site' do
    it 'should should show the comedians index page' do
      kevin = Comedian.create(name: "Kevin Hart", age: 39, city: "Philadelphia, PA" )
      visit '/comedians'
#within statement - want to build out the HTML and CSS
      expect(page).to have_content(kevin.name)
      expect(page).to have_content(kevin.age)
      expect(page).to have_content(kevin.city)
    end
  end
end
