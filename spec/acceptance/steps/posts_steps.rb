step 'some blog posts exist' do
  create_list(:post, 5)
end

step 'a blog post exists' do
  @title = 'Moo'
  @body = 'Woo woo'
  create(:post, title: @title, body: @body)
end

step 'I should see the posts listed' do
  within '#posts' do
    page.should have_selector '.post'
  end
end


step 'I fill out the form and submit it' do
  @title = 'foo'
  @body = 'bar'
  fill_in 'post_title', with: @title
  fill_in 'post_body', with: @body
  click_button 'Create Post'
end

step 'I should see the new post' do
  within 'h1' do
    page.should have_content 'foo'
  end
  page.should have_content 'bar'
end

step 'I go to the first post' do
  within '#posts' do
    page.find('.post').find('a').click
  end
end

step 'I should see the post content' do
  within('h1') do
    page.should have_content(@title)
  end
  page.should have_content(@body)
end

step 'I click to edit the first post' do
  within '#posts' do
    click_on 'Edit'
  end
end

step 'I change the title and submit it' do
  @updated_title = 'Bears are fuzzy'
  fill_in 'post_title', with: @updated_title
  click_button 'Update Post'
end

step 'I should see the edited post content' do
  within 'h1' do
    page.should have_content @updated_title
  end
end
