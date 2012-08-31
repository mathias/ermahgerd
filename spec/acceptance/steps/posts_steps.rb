step 'some blog posts exist' do
  create_list(:post, 5)
end

step 'I should see the posts listed' do
  within 'ul' do
    page.should have_selector 'li'
  end
end


step 'I fill out the form and submit it' do
  fill_in 'post_title', with: 'foo'
  fill_in 'post_body', with: 'bar'
  click_button 'Create Post'
end

step 'I should see the new post' do
  within 'h1' do
    page.should have_content 'foo'
  end
  page.should have_content 'bar'
end
