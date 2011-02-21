require 'spec_helper'

describe "the homepage" do
  it "exists" do
    visit '/' 
    page.status_code.should == 200
  end
end
