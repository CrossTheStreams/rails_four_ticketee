require 'spec_helper.rb'

feature 'Creating Projects' do 

  scenario "can create a project" do 
    visit "/"
    click_link "New Project"
    
    # Using field id selectors
    fill_in "project_name", with: 'TextMate 2'
    fill_in "project_description", with: 'A text-editor for OS X'

    click_button 'Create Project'
    expect(page).to have_content('Project has been created.')

    project = Project.find_by_name("TextMate 2")
   
    expect(page.current_url).to eql(project_url(project))

    title = "TextMate 2 - Projects - Ticketee"

    expect(page).to have_title(title)
  end

end
