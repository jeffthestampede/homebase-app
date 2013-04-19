

class PagesController < ApplicationController

  def index
    @team1 = current_user.team1
    @team2 = current_user.team2
    @team3 = current_user.team3

    @x = Team.where(:name => "#{@team1}")

    
    





    # file = open("http://api.espn.com/v1/sports/#{@x.sport}/#{@x.league}/teams/#{@x.espn_id}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    # @results = JSON.load(file.read)["headlines"]

    # file2 = open("http://api.espn.com/v1/sports/basketball/nba/teams/13/news?apikey=mq6g97278vj2y36a2c4kdheb")
    # @results2 = JSON.load(file2.read)["headlines"]

    # file3 = open("http://api.espn.com/v1/sports/football/nfl/teams/24/news?apikey=mq6g97278vj2y36a2c4kdheb")
    # @results3 = JSON.load(file3.read)["headlines"]



  end

end
