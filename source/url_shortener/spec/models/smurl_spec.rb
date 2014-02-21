require 'spec_helper'

describe Smurl do

  before(:each) do
    @bad_smurl = FactoryGirl.build(:bad_smurl)
    @smurl = FactoryGirl.build(:smurl)
  end

  context 'URL validation' do

    it 'does not work without http or https' do
      expect {
      post '/smurls', l_url: @bad_smurl.l_url
      }.to change(Smurl, :count).by(0)
    end

    it 'does work with http or https' do
      expect {
      post '/smurls', l_url: @smurl.l_url
      }.to change(Smurl, :count).by(1)
    end
  end
  
end