require 'spec_helper'

describe AnimalsController do
  describe 'GET new' do
    it 'returns a successful response' do
      get :new
      expect(response).to be_success
    end
  end
end