require 'rails_helper'

RSpec.describe Comment, type: :model do
    save_user = User.new(name: "John Doe", photo: "https://unsplash.com/photos/ZGa9d1a_4tA", bio: "Sunt veniam est irure veniam Lorem.", posts_counter: 0)
    save_first_post = Post.new(title: "First Post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", comments_counter: 0, likes_counter: 0, user_id: save_user.id)
    save_second_post = Post.new(title: "Second Post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", comments_counter: 0, likes_counter: 0, user_id: save_user.id)
    save_first_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_first_post.id, user_id: save_user.id)
    save_second_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_first_post.id, user_id: save_user.id)
    save_third_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_second_post.id, user_id: save_user.id)
    save_user.save
    save_first_post.save
    save_second_post.save
    save_first_comment.save
    save_second_comment.save
    save_third_comment.save

    it "is valid with valid attributes" do
        expect(save_first_comment).to be_valid
    end

    it "is not valid without a content" do
        comment = Comment.new(content: nil, post_id: save_first_post.id, user_id: save_user.id)
        expect(comment).to_not be_valid
    end

    it "is not valid without a post_id" do
        comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: nil, user_id: save_user.id)
        expect(comment).to_not be_valid
    end

    it "is not valid without a user_id" do
        comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_first_post.id, user_id: nil)
        expect(comment).to_not be_valid
    end

    it "is not valid with a content length less than 3" do
        comment = Comment.new(content: "Lo", post_id: save_first_post.id, user_id: save_user.id)
        expect(comment).to_not be_valid
    end

end