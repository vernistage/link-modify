class NumbersController < ApplicationController

  def create
    to =  params["number"]
    link = Link.find(params['link_id'].to_i)
    message = "Hi, check out this awesome website: #{link.entry}"

    client = Twilio::REST::Client.new(
      ENV["TWILIO_ACCOUNT_SID"],
      ENV["TWILIO_AUTH_TOKEN"]
    )

    client.messages.create(
      to: to,
      from: ENV["PHONE_NUM"],
      body: message
    )
  end

end
