require 'rails_helper'

RSpec.describe Post, type: :model do
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
    
    context 'Write validation tests for Post Model' do
        it 'is not valid without a title' do
        first_post.title = nil
        expect(first_post).to_not be_valid
        end
    
        it 'is not valid without a text' do
        first_post.text = nil
        expect(first_post).to_not be_valid
        end
    
        it 'is not valid if comments_counter is not an integer' do
        first_post.comments_counter = 'Balitaan'
        expect(first_post).to_not be_valid
        end
    
        it 'is not valid if comments_counter is negative' do
        first_post.comments_counter = -21
        expect(first_post).to_not be_valid
        end
    
        it 'is not valid if likes_counter is not an integer' do
        first_post.likes_counter = 'Balitaan'
        expect(first_post).to_not be_valid
        end
    
        it 'is not valid if likes_counter is negative' do
        first_post.likes_counter = -21
        expect(first_post).to_not be_valid
        end
    end
end