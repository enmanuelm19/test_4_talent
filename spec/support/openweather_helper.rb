module OpenweatherHelper
  def success_fetch_temperatures
    route = "https://api.openweathermap.org/data/2.5/forecast?appid=2593e60f12cc40a9b4ebd4d300e17f87&cnt=5&q=Santiago"
    stub_request(:get, route).
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Ruby'
           }).
           to_return(status: 200, body: good_response.to_json, headers: {})
  end

  def unsuccess_fetch_temperatures
    route = "https://api.openweathermap.org/data/2.5/forecast?appid=2593e60f12cc40a9b4ebd4d300e17f87&cnt=5&q=Santiago"
    stub_request(:get, route).
         with(
           headers: {
       	  'Accept'=>'*/*',
       	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
       	  'User-Agent'=>'Ruby'
           }).
           to_return(status: 200, body: bad_response.to_json , headers: {})
  end

  def good_response
    {"cod"=>"200","message"=>0.0024,"cnt"=>5,"list"=>[
      {"dt"=>1532466000,"main"=>{
        "temp"=>288.06,"temp_min"=>284.684,"temp_max"=>288.06,"pressure"=>951.33,"sea_level"=>1034.07,"grnd_level"=>951.33,"humidity"=>78,"temp_kf"=>3.38
      },"weather"=>[
        {"id"=>800,"main"=>"Clear","description"=>"clear sky","icon"=>"01d"}
      ],"clouds"=>{"all"=>0},"wind"=>{"speed"=>0.95,"deg"=>281.501},"sys"=>{"pod"=>"d"},"dt_txt"=>"2018-07-24 21=>00=>00"},
      {"dt"=>1532476800,"main"=>{
        "temp"=>279.41,"temp_min"=>277.16,"temp_max"=>279.41,"pressure"=>952.21,"sea_level"=>1035.98,"grnd_level"=>952.21,"humidity"=>84,"temp_kf"=>2.25
      },"weather"=>[
        {"id"=>800,"main"=>"Clear","description"=>"clear sky","icon"=>"01n"}
      ],"clouds"=>{"all"=>0},"wind"=>{"speed"=>0.96,"deg"=>113.001},"sys"=>{"pod"=>"n"},"dt_txt"=>"2018-07-25 00=>00=>00"},
      {"dt"=>1532487600,"main"=>{
        "temp"=>275.73,"temp_min"=>274.607,"temp_max"=>275.73,"pressure"=>952.7,"sea_level"=>1036.66,"grnd_level"=>952.7,"humidity"=>79,"temp_kf"=>1.13},
        "weather"=>[
          {"id"=>800,"main"=>"Clear","description"=>"clear sky","icon"=>"01n"}
        ],"clouds"=>{"all"=>0},"wind"=>{"speed"=>1.21,"deg"=>93.0018},"sys"=>{"pod"=>"n"},"dt_txt"=>"2018-07-25 03=>00=>00"},
      {"dt"=>1532498400,"main"=>{
          "temp"=>273.598,"temp_min"=>273.598,"temp_max"=>273.598,"pressure"=>952.63,"sea_level"=>1036.66,"grnd_level"=>952.63,"humidity"=>82,"temp_kf"=>0},
          "weather"=>[
            {"id"=>800,"main"=>"Clear","description"=>"clear sky","icon"=>"01n"}
          ],"clouds"=>{"all"=>0},"wind"=>{"speed"=>1.21,"deg"=>96.006},"sys"=>{"pod"=>"n"},"dt_txt"=>"2018-07-25 06=>00=>00"},
        {"dt"=>1532509200,"main"=>{
            "temp"=>273.027,"temp_min"=>273.027,"temp_max"=>273.027,"pressure"=>951.94,"sea_level"=>1035.98,"grnd_level"=>951.94,"humidity"=>83,"temp_kf"=>0},
            "weather"=>[
              {"id"=>800,"main"=>"Clear","description"=>"clear sky","icon"=>"01n"}
            ],"clouds"=>{"all"=>0},"wind"=>{"speed"=>1.36,"deg"=>93.0009},"sys"=>{"pod"=>"n"},"dt_txt"=>"2018-07-25 09=>00=>00"}
    ],"city"=>{"id"=>3871336,"name"=>"Santiago","coord"=>{
      "lat"=>-33.4378,"lon"=>-70.6505},"country"=>"CL","population"=>4837295}
    }
  end

  def bad_response
    {"cod"=>"404","message"=>"city not found"}
  end
end

