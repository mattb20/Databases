require './lib/app'

feature 'a bookmark can be added to the list of bookmarks' do
  scenario 'the user has a form to enter bookmark URL' do

    visit '/addbookmark'
    expect(page).to have_field("addbookmarkurl")
  end

  scenario 'the user is not allowed to add a bookmark with an invalid URL' do
    visit '/addbookmark'
    fill_in 'addbookmarkurl', with: 'reddit'
    click_button 'Submit bookmark'
    expect(page).to have_content("That URL you entered was invalid please try again..")



  end
end
