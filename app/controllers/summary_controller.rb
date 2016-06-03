class SummaryController < ApplicationController

  def index
    @title = params[:type] || 'Email'
    @emails = Email.all
    @total_events = @emails.count
    @sent = type_count('send')
    @opened = type_count('open')
    @clicked = type_count('click')
  end

  private

  def type_count(type)
    @emails.select {|email| email.Event == type }.count
  end

end
