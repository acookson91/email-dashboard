require 'spec_helper'
require 'helpers'

context 'summary page' do

  before do
    create_email_data
  end

  scenario 'number of email events recieved' do
    visit '/'
    expect(page).to have_content('Total Email Events: 4')
  end

end
