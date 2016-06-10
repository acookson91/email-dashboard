class EmailWorker
  include Sidekiq::Worker

  def perform(email_data)
    email = JSON.parse( email_data )
    Email.create(Address: email['Address'],EmailType: email['EmailType'],Event: email['Event'], Timestamp: email['Timestamp'])
  end
end
