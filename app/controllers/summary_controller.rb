class SummaryController < ApplicationController

  def index
    @email = Email.all
    @total_events = @email.count
  end

end
