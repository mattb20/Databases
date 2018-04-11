require './lib/app'
#
# feature 'a bookmark can be added to the list of bookmarks' do
#   scenario 'the user has a form to enter bookmark URL' do
#
#     visit '/addbookmark'
#     expect(page).to have_field("addbookmarkurl")
#   end
#
#   scenario 'the user is not allowed to add a bookmark with an invalid URL' do
#     visit '/addbookmark'
#     fill_in 'addbookmarkurl', with: 'reddit'
#     expect(page).to have_content("you must enter a valid URL")
#
#
#
#   end
# end

feature 'an error is shown due to an invalid URL' do
  scenario 'the user entered an invalid URL' do
    visit '/invalidbookmark'
    expect(page).to have_content('That URL you entered was invalid please try again..')
  end
end
