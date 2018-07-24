class CitiesController < ApplicationController
  before_action :set_city, only: :show

  def index
    @cities = City.all.includes(:weathers)
  end

  def show; end

  def fetch_temperatures
    City.all.each do |city|
      temperatures = FetchTemperatureService.perform(city.name)
      temperatures&.each do |temperature|
        weather = Weather.find_or_initialize_by(time: temperature['dt'], city: city)
        weather.temp = temperature['main']['temp']
        weather.save
      end
    end
    redirect_to cities_path
  end

  private

    def set_city
      @city = City.find(params[:id])
    end
end
