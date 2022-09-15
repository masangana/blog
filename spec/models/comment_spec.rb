require 'rails_helper'

RSpec.describe Comment, type: :model do
  first_user = User.create(name: 'Lex', photo: 'https://unsplash.com/photos/ccXF7zV_f48', bio: 'laborum culpa',
                           posts_counter: 0)

  first_post = Post.new(user: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 2,
                        likes_counter: 3)

  context 'Write validation tests for Comment Model' do
    it 'is not valid without a user' do
      first_comment = Comment.new(post: first_post, text: 'This is my first comment')
      expect(first_comment).to_not be_valid
    end

    it 'is not valid without a post' do
      second_comment = Comment.new(user: first_user, text: 'This is my second comment')
      expect(second_comment).to_not be_valid
    end

    it 'is valid with a user, a post and a text' do
      fourth_comment = Comment.new(user: first_user, post: first_post, text: 'This is my fourth comment')
      expect(fourth_comment).to be_valid
    end
  end
end
