require 'rails_helper'

RSpec.describe Like, type: :model do
    first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.',
                             posts_counter: 0)
    
    first_post = Post.new(user: first_user, title: 'Hello', text: 'This is my first post', comments_counter: 2,
                            likes_counter: 3)
    second_post = Post.new(user: first_user, title: 'Hello', text: 'This is my second post', comments_counter: 2,
                             likes_counter: 3)
    third_post = Post.new(user: first_user, title: 'Hello', text: 'This is my third post', comments_counter: 2,
                            likes_counter: 3)
    fourth_post = Post.new(user: first_user, title: 'Hello', text: 'This is my fourth post', comments_counter: 2,
                             likes_counter: 3)
    
    context 'Write validation tests for Like Model' do
        it 'is not valid without a user' do
        first_like = Like.new(post: first_post)
        expect(first_like).to_not be_valid
        end
    
        it 'is not valid without a post' do
        second_like = Like.new(user: first_user)
        expect(second_like).to_not be_valid
        end
    
        it 'is valid with a user and a post' do
        third_like = Like.new(user: first_user, post: first_post)
        expect(third_like).to be_valid
        end
    end
    
end