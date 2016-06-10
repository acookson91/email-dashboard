class Email < ActiveRecord::Base

  validates 'Address', 'EmailType', 'Event', 'Timestamp', presence: true

  def show_type(type)
    if self.EmailType == type
      self
    end
  end

end
