

class PagesController < ApplicationController

  def results
   
    @team1 = (Team.where(:name => "#{current_user.team1}")).first
    @team2 = (Team.where(:name => "#{current_user.team2}")).first
    @team3 = (Team.where(:name => "#{current_user.team3}")).first

    twitter = open("http://search.twitter.com/search.json?q=#{URI.escape(current_user.team1)}")
    @tresults = JSON.load(twitter.read)

    file = open("http://api.espn.com/v1/sports/#{@team1.sport}/#{@team1.league}/teams/#{@team1.espn_id}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @results = JSON.load(file.read)["headlines"]

    twitter2 = open("http://search.twitter.com/search.json?q=#{URI.escape(current_user.team2)}")
    @tresults2 = JSON.load(twitter2.read)

    file2 = open("http://api.espn.com/v1/sports/#{@team2.sport}/#{@team2.league}/teams/#{@team2.espn_id}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @results2 = JSON.load(file2.read)["headlines"]

    twitter3 = open("http://search.twitter.com/search.json?q=#{URI.escape(current_user.team3)}")
    @tresults3 = JSON.load(twitter3.read)

    file3 = open("http://api.espn.com/v1/sports/#{@team3.sport}/#{@team3.league}/teams/#{@team3.espn_id}/news?apikey=mq6g97278vj2y36a2c4kdheb")
    @results3 = JSON.load(file3.read)["headlines"]

  end

  def index


  end

end
