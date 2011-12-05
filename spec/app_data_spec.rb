require 'spec_helper'

require_relative '../lib/app_data'

describe AppData do

  let(:app_data) { AppData.new }
  let(:random_contest) { app_data.random_contests.first }
  let(:random_team) { app_data.random_teams.first }

  describe '#contests' do
    it 'should return ten contests by default' do
      contests = app_data.contests
      contests.count.should == 10
      contests.should include(random_contest)
    end

    it 'should return 1 contest when argument is passed' do
      contests = app_data.contests(1)
      contests.count.should == 1
      contests.should include(random_contest)
    end
  end

  describe '#random_contests' do
    it 'should return one random contest by default' do
      contests = app_data.random_contests
      contests.count.should == 1
      contests[0][:id].should == 1
      contests.should include(random_contest)
    end

    it 'should return two random contest' do
      contests = app_data.random_contests(2)
      contests.count.should == 2
      contests[0][:id].should == 1
      contests[1][:id].should == 2
      contests.should include(random_contest)
    end
  end

  describe '#random_teams' do
    it 'should return one random team by default' do
      teams = app_data.random_teams
      teams.count.should == 1
      teams[0][:name].should == 'Team 2'
      teams.should include(random_team)
    end

    it 'should return two random team' do
      teams = app_data.random_teams(2)
      teams.count.should == 2
      teams[0][:name].should == 'Team 2'
      teams[1][:name].should == 'Team 4'
      teams.should include(random_team)
    end
  end

end