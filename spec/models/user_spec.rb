require 'rails_helper'

RSpec.describe User, type: :model do
    save_user = User.new(name: "John Doe", photo: "https://unsplash.com/photos/ZGa9d1a_4tA", bio: "Sunt veniam est irure veniam Lorem.", posts_counter: 0)
    save_first_post = Post.new(title: "First Post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", comments_counter: 0, likes_counter: 0, user_id: save_user.id)
    save_second_post = Post.new(title: "Second Post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", comments_counter: 0, likes_counter: 0, user_id: save_user.id)
    save_first_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_first_post.id, user_id: save_user.id)
    save_second_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_first_post.id, user_id: save_user.id)
    save_third_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_second_post.id, user_id: save_user.id)
    save_first_like = Like.new(post_id: save_first_post.id, user_id: save_user.id)
    save_second_like = Like.new(post_id: save_first_post.id, user_id: save_user.id)
    save_third_like = Like.new(post_id: save_second_post.id, user_id: save_user.id)
    save_user.save
    save_first_post.save
    save_second_post.save
    save_first_comment.save
    save_second_comment.save
    save_third_comment.save
    save_first_like.save
    save_second_like.save
    save_third_like.save

    it "is valid with valid attributes" do
        expect(save_user).to be_valid
    end

    it "is not valid without a name" do
        user = User.new(name: nil)
        expect(user).to_not be_valid
    end

    it "is not valid without a photo" do
        user = User.new(photo: nil)
        expect(user).to_not be_valid
    end

    it "is not valid without a bio" do
        user = User.new(bio  : nil)
        expect(user).to_not be_valid
    end
end