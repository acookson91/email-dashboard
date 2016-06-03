class SummaryController < ApplicationController

  def index
    @emails = Email.all
    @total_events = @emails.count
    @opened = @emails.select {|email| email.Event == 'open'}.count
  end

end
