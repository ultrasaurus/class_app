require 'spec_helper'

describe PeopleController do
  before do
    @emmy = Person.create! :first_name => "Emmy", :last_name => "Noether"
    @marie = Person.create! :first_name => "Marie", :last_name => "Curie"
    @lise = Person.create! :first_name => "Lise", :last_name => "Meitner"   
  end

  describe "GET index" do 
    before do
      get :index
    end

    it "renders" do
      response.should render_template(:index) 
    end

    it "sets up the whole list of people" do
      assigns[:people].should == [@emmy, @marie, @lise]
    end
  end

# START: post_create
  describe "POST create" do
    it "redirects" do
      post :create, :person => {:first_name => "Barbara", :last_name => "Liskov"}      
      response.should redirect
    end
  end
# END: post_create
end


