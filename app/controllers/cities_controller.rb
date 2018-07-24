class CitiesController < ApplicationController
  before_action :set_city, only: :show

  def index
    @cities = City.all.includes(:weathers)
  end

  def show; end

  def fetch_temperatures
    City.all.each do |city|
      Weather.create(temp: FetchTemperatureService.perform(city.name), city: city)
    end
    @cities = City.all.includes(:weathers)
    render :index
  end

  private

    def set_city
      @city = City.find(params[:id])
    end
end
