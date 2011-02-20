require 'spec_helper'

describe "the homepage" do
  it "says welcome" do
    visit '/' 
    save_and_open_page
    page.should have_content("Welcome to class") 
  end
end
