require 'spec_helper'

describe PeopleController do
#START:create_people
  before do
    @emmy = Person.create! :first_name => "Emmy", :last_name => "Noether"
    @marie = Person.create! :first_name => "Marie", :last_name => "Curie"
    @lise = Person.create! :first_name => "Lise", :last_name => "Meitner"   
  end
#START:create_people

  describe "GET index" do
    it "renders" do
      get :index       
      response.should render_template(:index) 
    end

#START:setup
    it "sets up the whole list of people" do
      get :index 
      assigns[:people].should == [@emmy, @marie, @lise]
    end
#END:setup
  end
end


