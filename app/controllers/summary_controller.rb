class SummaryController < ApplicationController

  def index
    @title = params[:type] || 'Email'
    @emails = Email.all
    @total_events = @emails.count
    @sent = type_count('send')
    @opened = type_count('open')
    @clicked = type_count('click')
    @types = find_types
  end

  private

  def type_count(type)
    @emails.select {|email| email.Event == type }.count
  end

  def find_types
    @emails.select(:EmailType).map(&:EmailType).uniq
  end

end
