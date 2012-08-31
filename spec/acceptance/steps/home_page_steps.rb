step 'I should see the welcome message' do
  within('h1') do
    page.should have_content('Ermahgerd Nerd Blergs!')
  end
end
