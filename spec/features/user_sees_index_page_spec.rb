RSpec.describe 'user sees the comedians index page' do
  describe 'when user visits the site' do
    it 'should should show the comedians index page' do
      kevin = Comedian.create(name: "Bryant", age: 25, city: "Raleigh, NC" )
      lala = Comedian.create(name: "lala flamingo", age: 50, city: "Philadelphia, PA" )
      delilah = Comedian.create(name: "delilah bonnaroo", age: 15, city: "Chicago, IL" )
      seymore = Comedian.create(name: "seymore fries", age: 10, city: "Berkeley, CA" )
      visit '/'

      within('#stat_bullets') do
      expect(page).to have_content(Comedian.all.average(:age).round)
      end
    end
  end
end
