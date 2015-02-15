require 'rails_helper'

feature 'Test #6' do

  context 'when countries exist' do
    let!(:country) { create :country }

    scenario 'user can see the countries displayed on page' do
      visit test_6_pages_path
      expect(page).to have_content 'Test #6'
      expect(page).to have_content 'Germany | DE'
    end
  end

  context 'when countries do not exist' do
    scenario 'user can see page with no data' do
      visit test_6_pages_path
      expect(page).to have_content 'Test #6'
      expect(page).to have_content 'No data'
    end
  end

end
