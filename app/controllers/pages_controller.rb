class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/uploads/"
    @spots = Spot.all
  end

  def index
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/uploads/"

    if params[:search_content].present?
      p "cas 1"
      p @spots = Spot.where("occupation ILIKE '%#{params[:search_content]}%'")
    end
    if params[:good_or_evil].present?
      p "cas 2"
      good_or_evil = params[:good_or_evil] == "Good"
      p @spots = Spot.where("good=?", good_or_evil)
    end
    if params[:search_content].present? && params[:good_or_evil].present?
      p "cas 3"
      p @spots = Spot.where("occupation ILIKE '%#{params[:search_content]}%' AND good=?", good_or_evil)
    end
    good_or_evil = params[:good_or_evil] == "Good"
    @spots = Spot.where("good=?", good_or_evil)
  end
end
