class SummaryController < ApplicationController

  def index
    @title = params[:type] || 'Email'
    @all_emails = Email.all
    @filtered = filter_type(@all_emails, params[:type])
    @emails = @filtered.empty? ? @all_emails : @filtered
    @total_events = @emails.count
    @sent = type_count('send')
    @opened = type_count('open')
    @clicked = type_count('click')
    @types = find_types
  end

  private

  def filter_type(emails,type)
    emails.select do |email|
      email.show_type(type)
    end
  end

  def type_count(type)
    @emails.select {|email| email.Event == type }.count
  end

  def find_types
    @all_emails.select(:EmailType).map(&:EmailType).uniq
  end


end
