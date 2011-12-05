require 'sinatra'
require 'json'
require 'time'

HARD_DATE = Time.parse("2011-12-08 08:28:42 +1100")

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

   contests.to_json
  end

  private

  def contests count=10
    random_contests count
  end

  def random_contests count=1
    contests = []
    (1..count).each do |x|
      status = 'Next'
      start_date = HARD_DATE + (x * 60)
      contests << {
        :id => x,
        :status => status,
        :startDate => start_date,
        :teams => random_teams(2, x)
      }
    end
    contests
  end

  def random_teams count=1, factor=2
    teams = []
    (1..count).each do |x|
      num = x * factor
      teams << {
        :name => "Team #{num}",
        :shortName => "team#{num}",
        :score => {
          :total => num,
          :summary => "#{num} goal(s)"
        }
      }
    end
    teams
  end

end