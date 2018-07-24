require 'rails_helper'
include OpenweatherHelper

RSpec.describe FetchTemperatureService do
  describe 'perfom' do
    it 'fetch city temperature' do
      temp = FetchTemperatureService.perform("Santiago")
      expect(temp).to eq('289.14')  
    end
  end
end
