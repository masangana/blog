require 'rails_helper'

RSpec.describe Like, type: :model do
    save_user = User.new(name: "John Doe", photo: "https://unsplash.com/photos/ZGa9d1a_4tA", bio: "Sunt veniam est irure veniam Lorem.", posts_counter: 0)
    save_first_post = Post.new(title: "First Post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", comments_counter: 0, likes_counter: 0, user_id: save_user.id)
    save_second_post = Post.new(title: "Second Post", content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", comments_counter: 0, likes_counter: 0, user_id: save_user.id)
    save_first_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_first_post.id, user_id: save_user.id)
    save_second_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_first_post.id, user_id: save_user.id)
    save_third_comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", post_id: save_second_post.id, user_id: save_user.id)
    save_first_like = Like.new(post_id: save_first_post.id, user_id: save_user.id)
    save_second_like = Like.new(post_id: save_first_post.id, user_id: save_user.id)

    save_first_post.update_comments_counter
    save_first_post.update_likes_counter
    save_second_post.update_comments_counter
    save_second_post.update_likes_counter
    save_user.update_posts_counter

    it "is valid with valid attributes" do
        expect(save_first_like).to be_valid
    end

    it "is not valid without a post_id" do
        save_first_like.post_id = nil
        expect(save_first_like).to_not be_valid
    end

    it "is not valid without a user_id" do
        save_first_like.user_id = nil
        expect(save_first_like).to_not be_valid
    end

    it "is not valid with a duplicate post_id and user_id" do
        expect(save_second_like).to_not be_valid
    end

    it "is not valid with a post_id that does not exist" do
        save_first_like.post_id = 999
        expect(save_first_like).to_not be_valid
    end

    it "is not valid with a user_id that does not exist" do
        save_first_like.user_id = 999
        expect(save_first_like).to_not be_valid
    end

end
