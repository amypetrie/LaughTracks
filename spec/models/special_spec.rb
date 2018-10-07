RSpec.describe Special do
  describe 'Validations' do
    describe 'Required Field(s)' do
      it 'should be invalid if missing a title' do
        special = Special.create(run_time: 60)

        expect(special).to_not be_valid
      end
      it 'should be invalid if missing a run_time' do
        special = Special.create(title: "Example")

        expect(special).to_not be_valid
      end
    end
  end
end
