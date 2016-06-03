email1 = Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
     :Event => 'send', :Timestamp => 1432820696)

email2 = Email.create(:Address => 'tom@lostmy.name', :EmailType => 'UserConfirmation',
          :Event => 'click', :Timestamp => 1432820702)

email3 = Email.create(:Address => 'vitor@lostmy.name', :EmailType => 'Shipment',
                     :Event => 'open', :Timestamp => 1432820702)
