require 'rails_helper'

  describe 'Users can crud status updates' do
    scenario 'User can create status update' do
      visit '/'
      click_on 'New'

      expect(page).to have_content ("New Status")

      fill_in 'update[status]', with: "Test1"
      fill_in 'update[user]', with: 'person'

      click_on 'Submit'

      expect(page).to have_content ('Test1')
      expect(page).to have_content ('person')
    end

    scenario 'User can visit status show page' do
      
  end
