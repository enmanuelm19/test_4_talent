class AddTimeToWeather < ActiveRecord::Migration[5.2]
  def change
    add_column :weathers, :time, :integer
  end
end
