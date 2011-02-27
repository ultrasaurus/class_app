# START:one
# START:two
require 'spec_helper'

describe PeopleController do  #<label id="code.people_controller_context"/>
  describe "GET index" do #<label id="code.people_index_context"/>
    it "renders" do
      get :index        #<label id="code.get_index"/>
      response.should render_template(:index) #<label id="code.should_render"/>
    end
# END:one     
    it "renders with text param" do
      sample_text = "something"      #<label id="code.local.sample_text"/>
      get :index, {:text => sample_text}    #<label id="code.get.text.param"/>
      assigns[:message].should == sample_text   #<label id="code.assigs.message"/>
      response.should render_template(:index)
    end
# START:one     
  end
end
# END:one     


