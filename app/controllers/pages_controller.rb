class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @spots = Spot.all
  end

  def index
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/"
    good_or_evil = params[:good_or_evil] == "Good"
    if params[:search_content] != ""
      @spots = Spot.where("occupation LIKE '%#{params[:search_content]}%'")
    end
    if !params[:good_or_evil].nil?
      @spots = Spot.where("good=?", good_or_evil)
    end
    if params[:search_content] != "" && !params[:good_or_evil].nil?
      @spots = Spot.where("occupation LIKE '%#{params[:search_content]}%' AND good=?", good_or_evil)
    end
  end
end
