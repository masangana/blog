require 'rails_helper'

RSpec.describe "users/index", type: :system do
  describe 'index page' do
    it 'displays all users' do
      visit users_path
      expect(page).to have_content('Joe Kasongo')
    end

    it 'displays all users pictures' do
      visit users_path
      expect(page).to have_css("img[src*='#{User.first.photo}']")
    end

    it 'redirects to user page' do
      visit users_path
      click_link('Joe Kasongo')
      expect(page).to have_content('Joe Kasongo')
    end
  end
end 