class PagesController < ApplicationController
  def home
    @spots = Spot.all
    @spots.each do |spot|
      p spot.image
      p spot.user.avatar
    end
  end

  def index
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
