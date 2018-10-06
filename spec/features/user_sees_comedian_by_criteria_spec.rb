RSpec.describe 'user sees comedian specific page by criteria' do
  describe 'when user searches by comedian age' do
    it 'should only show the applicable comedians' do
      kevin = Comedian.create(name: "Kevin Hart", age: 64, city: "Philadelphia, PA" )
      amy = Comedian.create(name: "amy Hart", age: 50, city: "Chicago, IL" )
      julie = Comedian.create(name: "julie Hart", age: 64, city: "Berkeley, CA" )
      visit '/comedians?age=64'

      expect(page).to have_content(kevin.name, julie.name)
    end
  end
end
