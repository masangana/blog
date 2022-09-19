require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:example) { get '/users/1/posts' }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns correct template' do
      expect(response).to render_template('index')
    end

    it 'returns a list of posts' do
      expect(response.body).to include("All user's posts will be displayed here")
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/1/posts/1' }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns correct template' do
      expect(response).to render_template('show')
    end

    it 'returns correct body' do
      expect(response.body).to include('Here well be displayed a detailled post')
    end
  end
end
