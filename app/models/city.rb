class City < ApplicationRecord
  has_many :weathers

  def last_temperature
    weathers.order(id: :desc).pluck(:temp).first
  end
end
