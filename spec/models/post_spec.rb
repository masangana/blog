require 'rails_helper'

RSpec.describe Post, type: :model do
    save_user = User.new(name: "John Doe", photo: "https://unsplash.com/photos/ZGa9d1a_4tA", bio: "Sunt veniam est irure veniam Lorem.", posts_counter: 0)
    save_post = Post.new(title: "First Post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", comments_counter: 0, likes_counter: 0, user_id: save_user.id)
    save_user.save
    save_post.save

    it "is valid with valid attributes" do
        expect(save_post).to be_valid
    end

    it "is not valid without a title" do
        post = Post.new(title: nil)
        expect(post).to_not be_valid
    end

    it "is not valid without a content" do
        post = Post.new(content: nil)
        expect(post).to_not be_valid
    end

    it "is not valid without a user_id" do
        post = Post.new(user_id: nil)
        expect(post).to_not be_valid
    end

    it "is not valid without a comments_counter" do
        post = Post.new(comments_counter: nil)
        expect(post).to_not be_valid
    end

    it "is not valid without a likes_counter" do
        post = Post.new(likes_counter: nil)
        expect(post).to_not be_valid
    end

    it "is not valid with a comments_counter less than 0" do
        post = Post.new(comments_counter: -1)
        expect(post).to_not be_valid
    end

    it "is not valid with a likes_counter less than 0" do
        post = Post.new(likes_counter: -1)
        expect(post).to_not be_valid
    end

    it "is not valid with a title less than 3 characters" do
        post = Post.new(title: "12")
        expect(post).to_not be_valid
    end

    it "is not valid with a title more than 250 characters" do
        post = Post.new(title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        expect(post).to_not be_valid
    end
end