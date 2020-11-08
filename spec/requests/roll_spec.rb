require 'rails_helper'

RSpec.describe 'Rolling', type: :request do
  context 'one die' do
    it 'returns a roll' do
      headers = { 'ACCEPT' => 'application/json' }
      get "/api/v1/roll", headers: headers

      expect(response.status).to eq 200
      expect(response).to match_response_schema("dice")
    end
  end
end
