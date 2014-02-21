require 'spec_helper'


describe 'Smurl Controller' do

  before(:each) do
    @smurl = FactoryGirl.create(:smurl)
  end


  describe 'GETs all short urls' do
    it 'displays all the short urls' do
      get '/'

      expect(last_response).to be_ok
      expect(last_response.body).to include('smurl')
    end
  end

  # Test attempt for count does not work yet.
  # describe 'Increments url counter' do
  #   it 'increases short url count by 1' do
  #     now = @smurl.click_count
  #     get "/smurls/#{@smurl.s_url}"

  #     expect(@smurl.click_count).to eq(now + 1)
  #   end
  # end




end