RSpec.describe 'user sees the comedians index page' do
  describe 'when user visits the site' do
    it 'should should show the comedians index page' do
      kevin = Comedian.create(name: "Kevin Hart", age: 50, city: "Philadelphia, PA" )
      visit '/'

      within('#yield_content') do
      expect(page).to have_content(kevin.name)
      expect(page).to have_content(kevin.age)
      end
      within('#stat_bullets') do
      expect(page).to have_content(50)
      end
    end
  end
end
