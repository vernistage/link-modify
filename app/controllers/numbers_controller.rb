class NumbersController < ApplicationController

  def create
    to =  params["number"]
    @link = Link.find(params['link_id'].to_i)
    host = request.base_url
    message = "Hi, check out this awesome website: #{host}/#{@link.entry}"

    client = Twilio::REST::Client.new(
      ENV["TWILIO_ACCOUNT_SID"],
      ENV["TWILIO_AUTH_TOKEN"]
    )

    client.messages.create(
      to: to,
      from: ENV["PHONE_NUM"],
      body: message
    )

    flash[:notice] = "Sent!"
    redirect_to @link
  end

end
