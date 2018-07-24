require 'rails_helper'
include OpenweatherHelper

RSpec.describe FetchTemperatureService do
  describe 'perfom' do
    it 'fetch last 5 city temperatures' do
      success_fetch_temperatures
      temp = FetchTemperatureService.perform("Santiago")
      expect(temp.length).to eq(5)
    end

    it 'does not fetch nothing' do
      unsuccess_fetch_temperatures
      temp = FetchTemperatureService.perform("San Pablo")
      expect(temp).to be nil
    end
  end
end
