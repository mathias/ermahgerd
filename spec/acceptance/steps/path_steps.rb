step 'I am on the :path page' do |path|
  visit path
end

step 'I should be on the :path' do |path|
  page.current_path.should == path
end

placeholder :path do
  match /.*/ do |path|
    case path
    when 'home'
      '/'
    when 'posts'
      '/posts'
    when 'new post'
      '/posts/new'
    else
      '/'
    end
  end
end
