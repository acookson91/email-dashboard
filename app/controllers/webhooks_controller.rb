class WebhooksController < ApplicationController

  skip_before_filter  :verify_authenticity_token

  def receive
    EmailWorker.perform_async(request.body.read)
    render :nothing => true
  end

end
