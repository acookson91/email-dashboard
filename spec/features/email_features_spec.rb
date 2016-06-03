require 'spec_helper'
require 'helpers'

context 'summary page' do

  before do
    create_email_data
    visit '/'
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
    expect(page).to have_content('Click Rate: 0.5%')
  end

  scenario 'shows the open rate' do
    expect(page).to have_content('Open Rate: 50%')
  end


end
