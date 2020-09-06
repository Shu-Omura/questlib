require 'rails_helper'

RSpec.describe 'Statics', type: :request do
  describe 'GET #top' do
    before { get root_path }

    it 'returns http 200' do
      expect(response).to have_http_status(200)
    end
  end
end
