
require 'rails_helper'

describe 'Feedback' do
  
  it 'should be abel to visit the Feedback page' do
    visit ''
    click_link 'Feedback'

    expect(page).to have_content 'Ruby Moon'
  end

  it 'should be able to send the feedback form' do
    visit '/feedback'

    fill_in 'Email', with: 'test@mail.com'
    fill_in 'Name', with: 'Spec Test'
    fill_in 'Subject', with: 'This is a TEST'
    fill_in 'Message', with: 'The cake is a lie'
    click_button 'Send'

    expect(page).to have_content 'Received successfully'
  end
end
