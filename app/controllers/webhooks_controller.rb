class WebhooksController < ApplicationController

  skip_before_filter  :verify_authenticity_token

  def receive
    email = JSON.parse( request.body.read )
    Email.create(Address: email['Address'],EmailType: email['EmailType'],Event: email['Event'], Timestamp: email['Timestamp'])
    render :nothing => true
  end

end
