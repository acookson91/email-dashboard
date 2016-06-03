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

end
