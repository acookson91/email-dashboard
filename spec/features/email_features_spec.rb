require 'spec_helper'
require 'helpers'

context 'summary page' do

  before do
    create_email_data
    visit '/'
  end

  scenario 'links show dependant on email types' do
    expect(page).to have_content('Shipment')
  end

  scenario 'shows order link once added' do
    expect(page).not_to have_content('Order')
    Email.create(order_event)
    visit '/'
    expect(page).to have_content('Order')
  end

  scenario 'title shows summary' do
    expect(page).to have_content('Email Summary')
  end

  scenario 'shows number of email events recieved' do
    expect(page).to have_content('Total Email Events: 4')
  end

  scenario 'shows number of opened emails' do
    expect(page).to have_content('Opened: 1')
  end

  scenario 'shows number of clicked emails' do
    expect(page).to have_content('Clicked: 1')
  end

  scenario 'shows number of clicked sent' do
    expect(page).to have_content('Sent: 2')
  end

  scenario 'shows the click rate' do
    expect(page).to have_content('Click Rate: 100.0%')
  end

  scenario 'shows the open rate' do
    expect(page).to have_content('Open Rate: 50.0%')
  end

end

context 'Shipment Summary' do

  before do
    create_email_data
    visit '/?type=Shipment'
  end

  scenario 'title shows correct summary of shipment' do
    expect(page).to have_content('Shipment Summary')
  end

end

context 'Bad data' do

  before do
    create_bad_data
    visit '/'
  end

  scenario 'not enough data to calculate open rate' do
    expect(page).not_to have_content('Open Rate: 0.0%')
    expect(page).to have_content('Open Rate: Not enough information')
  end

  scenario 'not enough data to calculate click rate' do
    expect(page).not_to have_content('Click Rate: Infinity%')
    expect(page).to have_content('Click Rate: Not enough information')
  end

end
