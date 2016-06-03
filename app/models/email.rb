class Email < ActiveRecord::Base

  def show_type(type)
    if self.EmailType == type
      self
    end
  end

end
