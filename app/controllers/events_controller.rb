class EventsController < ApplicationController
  before_action :client

  def test
    @tweet = client.user_timeline("nanami_3615")
  end


  private

  def client
      client = Twitter::REST::Client.new do |config|
        config.consumer_key = Rails.application.secrets.user_consumer_key
        config.consumer_secret = Rails.application.secrets.consumer_secret
        config.access_token = Rails.application.secrets.access_token
        config.access_token_secret = Rails.application.secrets.access_token_secret
      end
  end
end
