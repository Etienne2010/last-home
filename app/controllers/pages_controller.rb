class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/uploads/"
    @spots = Spot.all
  end

  def index
    @base_url = "https://s3.eu-west-3.amazonaws.com/lasthome/uploads/"
    p params[:search_content]
    p params[:search_content].present?
    p params[:good_or_evil]
    p params[:good_or_evil].present?
    good_or_evil = params[:good_or_evil] == "Good"
    if params[:search_content].present? && params[:good_or_evil].present?
      p "cas 1"
      @spots = Spot.where("occupation ILIKE '%#{params[:search_content]}%' AND good=?", good_or_evil)
    elsif params[:search_content].present?
      p "cas 2"
      @spots = Spot.where("occupation ILIKE '%#{params[:search_content]}%'")
    elsif params[:good_or_evil].present?
      p "cas 3"
      @spots = Spot.where("good=?", good_or_evil)
    else
      p "cas 4"
      @spots = Spot.all
    end
    p @spots
    @spots = Spot.all if @spots == []
    p @spots
  end
end
