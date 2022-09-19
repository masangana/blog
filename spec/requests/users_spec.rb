require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:example) { get '/users' }

  describe 'GET /index' do
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns correct template' do
      expect(response).to render_template('index')
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/1' }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns correct template' do
      expect(response).to render_template('show')
    end
  end
end
