class PagesController < ApplicationController
  def home
    @spots = Spot.all
  end

  def index
    p params[:good_or_evil]
    p params[:search_content]
    good_or_evil = params[:good_or_evil] == "Good"
    if !params[:search_content].nil?
      @spots = Spot.where("occupation LIKE '%#{params[:search_content]}%'")
    end
    if !params[:good_or_evil].nil?
      @spots = Spot.where("good=?", good_or_evil)
    end
    if !params[:search_content].nil? && !params[:good_or_evil].nil?
      @spots = Spot.where("occupation LIKE '%#{params[:search_content]}%' AND good=?", good_or_evil)
    end
    p @spots
  end

end
