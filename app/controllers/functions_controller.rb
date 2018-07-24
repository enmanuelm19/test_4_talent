class FunctionsController < ApplicationController
  def index
    users = [
      {name: "Juan", country: "Chile", age: 30},
      {name: "Pedro", country: "Argentina", age: 15},
      {name: "Manuel", country: "Perú", age: 26},
      {name: "Jose", country: "Ecuador", age: 22}
    ]
    @ordered_users = ordered_by_country(users)
    @youngest_user = youngest_user(users)
  end

  private

    def ordered_by_country(users)
      users.sort_by { |person| person[:country] }
    end

    def youngest_user(users)
      users.sort_by{ |person| person[:age] }.first[:name]
    end
end
