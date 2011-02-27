# START:one
# START:two
require 'spec_helper'

describe PeopleController do
  describe "GET index" do
    it "renders" do
      get :index        #<label id="code.get_index"/>
      response.should render_template(:index) #<label id="code.should_render"/>
    end
# END:one     

   
# START:one     
  end
end
# END:one     


