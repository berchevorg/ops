control 'check_website' do

  describe http('https://api.github.com/repos/VisitBG/example-kitchen') do
    its('status') { should cmp 200 }
    its('body') { should match 'My awesome codebase' }
  end

end
