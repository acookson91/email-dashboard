def create_email_data
  Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
         :Event => 'send', :Timestamp => 1432820696)
   Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
          :Event => 'send', :Timestamp => 1432820696)
  Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
           :Event => 'open', :Timestamp => 1432820696)
   Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
          :Event => 'click', :Timestamp => 1432820696)
end
