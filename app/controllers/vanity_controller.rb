class VanityController < ApplicationController
  include Vanity::Rails::Dashboard

  before_filter :authenticate if !Rails.env.development?

  protected

  def authenticate
    @auth ||= YAML.load(File.open(Rails.root + "config/auth.yml"))
    puts @auth.inspect
    authenticate_or_request_with_http_basic do |username, password|
      username == @auth["username"] && password == @auth["password"]
    end
  end
end
