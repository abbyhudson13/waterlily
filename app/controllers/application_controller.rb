class ApplicationController < ActionController::Base
  include Pundit
  def default_url_options
    {host: ENV["DOMAIN"] || "localhost:3000"}
  end
end
