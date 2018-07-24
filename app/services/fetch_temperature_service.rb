class FetchTemperatureService
  include HTTParty
  base_uri 'https://api.openweathermap.org/data/2.5'
  attr_accessor :city_name

  def initialize(city_name)
    @city_name = city_name
  end

  def perform
    fetch_temperature
  end

  def self.perform(city_name)
    new(city_name).perform
  end

  private

    def build_params
      { query: { q: city_name, appid: '2593e60f12cc40a9b4ebd4d300e17f87' } }
    end

    def fetch_temperature
      response = call_api
      return "N/A" if response['cod'] != 200
      response['main']['temp']
    end

    def call_api
      self.class.get('/weather', build_params)
    end
end
