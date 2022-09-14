require 'rails_helper'

RSpec.describe User, type: :model do
  first_user = User.create(name: 'Jhon Doe', photo: 'hhttps://unsplash.com/photos/ccXF7zV_f48', bio: 'eu dolor.',
                           posts_counter: 0)

  context 'Write validation tests for User Model' do
    it 'is not valid without a name' do
      first_user.name = nil
      expect(first_user).to_not be_valid
    end

    it 'is valid with a name' do
      first_user.name = 'Mavericks'
      expect(first_user).to be_valid
    end

    it 'is not valid if posts_counter is not an integer' do
      first_user.posts_counter = 'Balitaan'
      expect(first_user).to_not be_valid
    end

    it 'is not valid if posts_counter is negative' do
      first_user.posts_counter = -21
      expect(first_user).to_not be_valid
    end
  end
end
