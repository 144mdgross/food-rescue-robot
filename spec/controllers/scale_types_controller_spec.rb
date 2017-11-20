require 'rails_helper'

RSpec.describe ScaleTypesController do
  feature 'feature' do
  let(:boulder) { create(:region, name: 'Boulder')}
  let(:volunteer) { create(:volunteer_with_assignment, regions: [], admin: true ) }

  before do
    login volunteer
  end

    it 'can initialize a scale type' do
      visit '/'
      expect(page).to have_content('Schedule')
    end
  end
end
