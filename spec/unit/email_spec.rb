describe Email do

  before :each do
    details = {"Address":"andrew@lostmy.name",
      "EmailType":"Order",
      "Event":"send",
      "Timestamp":1464858295
    }
    Email.create(details)
  end

  it 'should add a new email event to the email database' do
    Email.first
    expect(Email.first).not_to be(nil)
  end

  it 'should be the email created' do
    expect(Email.last[:Address]).to eq('andrew@lostmy.name')
    expect(Email.last[:EmailType]).to eq('Order')
    expect(Email.last[:Event]).to eq('send')
    expect(Email.last[:Timestamp]).to eq(1464858295)
  end
  
end
