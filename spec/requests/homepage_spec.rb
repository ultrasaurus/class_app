require 'spec_helper'

describe "the homepage" do
  it "exists" do
    visit '/' 
    save_and_open_page
    page.status_code.should == 200
  end
end
