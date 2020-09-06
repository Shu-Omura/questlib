require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) { create(:user) }

  describe 'GET #index' do
    context 'as an authenticated user' do
      before do
        sign_in user
        get posts_path
      end

      it 'returns http 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'as a guest' do
      before { get posts_path }

      it 'returns http 200' do
        expect(response).to have_http_status(302)
      end
    end
  end
end
