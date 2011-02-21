require 'spec_helper'

describe "the homepage" do
  it "says welcome" do
    visit '/' 
    page.status_code.should == 200
  end
end
