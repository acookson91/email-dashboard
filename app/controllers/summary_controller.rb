class SummaryController < ApplicationController

  def index
    @emails = Email.all
    @total_events = @emails.count
    @opened = type_count('open')
  end

  private

  def type_count(type)
    @emails.select {|email| email.Event == type }.count
  end

end
