class SummaryController < ApplicationController

  def index
    @title = params[:type] || 'Email'
    @filtered = Email.where("EmailType" => params[:type])
    @emails = @filtered.empty? ? Email.all : @filtered
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
    @emails.where("Event" => type).count
  end

  def find_types
    Email.pluck(:EmailType).uniq
  end


end
