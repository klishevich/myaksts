require 'spec_helper'

describe StaticPagesController do

  describe "GET 'about'" do
    it 'returns http success' do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'programme'" do
    it 'returns http success' do
      get 'programme'
      response.should be_success
    end
  end

  describe "GET 'hotel'" do
    it 'returns http success' do
      get 'hotel'
      response.should be_success
    end
  end

  describe "GET 'sponsors'" do
    it 'returns http success' do
      get 'sponsors'
      response.should be_success
    end
  end

end
