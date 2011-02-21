require 'spec_helper'

describe "the homepage" do
  it "says welcome" do
    visit '/'  #<label id="code.root_path"/> 
    page.status_code.should == 200   #<label id="code.page_200_status"/>
  end
end
