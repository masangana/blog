require 'rails_helper'

RSpec.describe 'user_path', type: :system do
  before :each do
    @user = User.create(
      name: 'Gabriel',
      photo: 'https://www.pexels.com/photo/silhouette-of-a-person-on-a-swing-3293148/',
      bio: "I'm a student at Microverse",
      posts_counter: 0
    )
    Post.create(user: @user, title: 'Title', text: 'Text', comments_counter: 0, likes_counter: 0)
    Post.create(user: @user, title: 'Title2', text: 'Text2', comments_counter: 0, likes_counter: 0)
    Post.create(user: @user, title: 'Title3', text: 'Text3', comments_counter: 0, likes_counter: 0)
    Post.create(user: @user, title: 'Title4', text: 'Text4', comments_counter: 0, likes_counter: 0)
    Post.create(user: @user, title: 'Title5', text: 'Text5', comments_counter: 0, likes_counter: 0)
    Post.create(user: @user, title: 'Title6', text: 'Text6', comments_counter: 0, likes_counter: 0)
  end

  describe 'user show page' do
    it 'shows the user\'s photo' do
      visit user_path(@user)
      expect(page).to have_css("img[src*='#{@user.photo}']")
    end

    it 'shows the user\'s username' do
      visit user_path(@user)
      expect(page).to have_content(@user.name)
    end

    it 'shows the user\'s bio' do
      visit user_path(@user)
      expect(page).to have_content(@user.bio)
    end

    it 'shows the user\'s number of posts' do
      visit user_path(@user)
      expect(page).to have_content(@user.posts_counter)
    end

    it 'shows the user\'s first 3 posts' do
      visit user_path(@user)
      @user.recent_posts.each do |post|
        expect(page).to have_content(post.title)
      end
    end

    it 'shows the user\'s button to view all posts' do
      visit user_path(@user)
      expect(page).to have_button('See all posts')
    end

    it 'redirects to that user\'s post when clicked' do
      visit user_path(@user)
      click_link("#{@user.posts.last.title}")
      expect(page).to have_current_path(user_post_path(@user.id, @user.posts.last.id))
    end

    it 'redirects to the user\'s post\'s index page' do
      visit user_path(@user)
      expect(page).to have_link('See all posts')
    end
  end
end
