require 'spec_helper'

describe "the homepage" do
  it "says welcome" do
    visit '/'  #<label id="code.root_path"/> 
    page.should have_content("Welcome to class")  #<label id="code.page_should_welcome"/>
  end
end
