require "spec_helper"

feature "Seed Data" do 
  scenario "The basics" do
    load Rails.root + "db/seeds.rb"
    user = User.find_by_email!("admin@example.com")
    project = Project.find_by_name!("Ticketee Beta")
  end
end
