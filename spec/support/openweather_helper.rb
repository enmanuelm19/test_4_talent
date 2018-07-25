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
           to_return(status: 200, body: File.read(File.expand_path('./../santiago.json', __FILE__)), headers: { 'Content-Type' => 'application/json'})
  end

  def unsuccess_fetch_temperatures
    route = "https://api.openweathermap.org/data/2.5/forecast?appid=2593e60f12cc40a9b4ebd4d300e17f87&cnt=5&q=San%20Pablo"
    stub_request(:get, route).
      with(
        headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'User-Agent'=>'Ruby'
        }).
        to_return(status: 200, body: File.read(File.expand_path('./../bad_name.json', __FILE__)), headers: { 'Content-Type'=>'application/json'})
  end
end

