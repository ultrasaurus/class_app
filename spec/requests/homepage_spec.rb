require 'spec_helper'

describe "the homepage" do
  it "says welcome" do
    visit '/' 
    save_and_open_page
    page.status_code.should == 200
  end
end
