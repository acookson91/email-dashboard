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

def create_order_data
  Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Order',
         :Event => 'send', :Timestamp => 1432820696)
   Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Order',
          :Event => 'send', :Timestamp => 1432820696)
  Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Order',
           :Event => 'open', :Timestamp => 1432820696)
end

def create_bad_data
  Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
         :Event => 'send', :Timestamp => 1432820696)
   Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
          :Event => 'send', :Timestamp => 1432820696)
  Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
           :Event => 'click', :Timestamp => 1432820696)
   Email.create(:Address => 'barney@lostmy.name', :EmailType => 'Shipment',
          :Event => 'click', :Timestamp => 1432820696)
end

def order_event
  {:Address => 'barney@lostmy.name',
  :EmailType => 'Order',
  :Event => 'send',
  :Timestamp => 1432820696}
end
