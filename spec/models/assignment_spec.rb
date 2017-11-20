require 'rails_helper'

RSpec.describe Assignment do
  describe 'this file needs to be completed' do
    let(:super_admin) { create(:volunteer, admin: true) }
    let(:region) { build(:region) }
    let(:volunteer) { create(:volunteer, admin: false) }

    it 'validates super_admin' do
      expect(super_admin).to be_valid
    end

    it 'assigns a volunteer to their region' do
      @a = Assignment.new
      @a.volunteer = volunteer
      @a.region = region
      allow_any_instance_of(Assignment).to receive(:save).and_return(true)
    end

  end
end
