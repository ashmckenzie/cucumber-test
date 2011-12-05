require 'sinatra'
require 'json'
require 'time'

require_relative './app_data'

class App < Sinatra::Base

  get '/' do
    erb 'Hello world!'
  end

  post '/form-output' do
    erb <<EOS
Hello #{params[:name]}
EOS
  end

  get '/form' do
    erb <<EOS
<form action="/form-output" method="post">
  <input type="input" name="name" />
  <input type="submit" name="submit" value="ok" />
</form>
EOS
  end

  get '/redirect-me' do
    redirect to('/redirected')
  end

  get '/redirected' do
    erb 'Should be on /redirected'
  end

  get '/api/contests' do
   content_type :json

   app_data = AppData.new
   app_data.contests.to_json
  end

end