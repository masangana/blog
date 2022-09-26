require 'rails_helper'

RSpec.describe "users/index", type: :system do
  before :each do
    @user = User.create(
      name: 'Gabriel',
      photo: 'https://www.pexels.com/photo/silhouette-of-a-person-on-a-swing-3293148/',
      bio: "I'm a student at Microverse",
      posts_counter: 0
    )
  end
  describe 'index page' do
    it 'displays all users' do
      visit users_path
      expect(page).to have_content(@user.name)
    end

    it 'displays all users pictures' do
      visit users_path
      expect(page).to have_css("img[src*='#{@user.photo}']")
    end

    it 'shows the user number of posts' do
      visit users_path
      expect(page).to have_content(@user.posts_counter)
    end

    it 'redirects to user page' do
      visit users_path
      click_link('Gabriel')
      expect(page).to have_content(@user.name)
    end
  end
end