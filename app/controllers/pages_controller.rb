

class PagesController < ApplicationController

  def results
    
    @team1 = (Team.where(:name => "#{current_user.team1}")).first
    @team2 = (Team.where(:name => "#{current_user.team2}")).first
    @team3 = (Team.where(:name => "#{current_user.team3}")).first

    file1 = open("http://api.espn.com/v1/sports/#{@team1.sport}/#{@team1.league}/teams/#{@team1.espn_id}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @results1 = JSON.load(file1.read)["headlines"]

    team_info_file1 = open("http://api.espn.com/v1/sports/#{@team1.sport}/#{@team1.league}/teams/#{@team1.espn_id}?apikey=mq6g97278vj2y36a2c4kdheb")
    @team_info_results1 = JSON.load(team_info_file1.read)["sports"][0]["leagues"][0]["teams"][0]["links"]["web"]["teams"]["href"]

    league_file1 = open("http://api.espn.com/v1/sports/#{@team1.sport}/#{@team1.league}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @league_results1 = JSON.load(league_file1.read)["headlines"]
  
    file2 = open("http://api.espn.com/v1/sports/#{@team2.sport}/#{@team2.league}/teams/#{@team2.espn_id}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @results2 = JSON.load(file2.read)["headlines"]

    team_info_file2 = open("http://api.espn.com/v1/sports/#{@team2.sport}/#{@team2.league}/teams/#{@team2.espn_id}?apikey=mq6g97278vj2y36a2c4kdheb")
    @team_info_results2 = JSON.load(team_info_file2.read)["sports"][0]["leagues"][0]["teams"][0]["links"]["web"]["teams"]["href"]

    league_file2 = open("http://api.espn.com/v1/sports/#{@team2.sport}/#{@team2.league}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @league_results2 = JSON.load(league_file2.read)["headlines"]
    
    file3 = open("http://api.espn.com/v1/sports/#{@team3.sport}/#{@team3.league}/teams/#{@team3.espn_id}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @results3 = JSON.load(file3.read)["headlines"]

    team_info_file3 = open("http://api.espn.com/v1/sports/#{@team3.sport}/#{@team3.league}/teams/#{@team3.espn_id}?apikey=mq6g97278vj2y36a2c4kdheb")
    @team_info_results3 = JSON.load(team_info_file3.read)["sports"][0]["leagues"][0]["teams"][0]["links"]["web"]["teams"]["href"]

    league_file3 = open("http://api.espn.com/v1/sports/#{@team3.sport}/#{@team3.league}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @league_results3 = JSON.load(league_file3.read)["headlines"]
  end

  def index

  end

  

end
