class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :get_base_url
  def get_base_url
    @base_url2 = "https://s3.eu-west-3.amazonaws.com/lasthome/uploads"
  end

end
