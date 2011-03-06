class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
# START: create
  def create
    person = Person.new(params[:person])
    if person.save
      redirect_to people_path
    else
      render :new
    end
  end
# END: create
end
