RSpec.describe 'user sees comedian specific page by criteria' do
  describe 'when user types URL query by comedian attribute' do
    it 'should only show the applicable comedian info on the page' do
      kevin = Comedian.create(name: "Kevin Hart", age: 64, city: "Philadelphia, PA" )
      amy = Comedian.create(name: "amy petrie", age: 50, city: "Chicago, IL" )
      julie = Comedian.create(name: "julie turgeon", age: 64, city: "Berkeley, CA" )
      visit '/comedians?age=64'

      save_and_open_page
      
      expect(current_path).to eq("/comedians/show")
      # expect(page).to have_content(kevin.name, julie.name)
    end
  end
end
