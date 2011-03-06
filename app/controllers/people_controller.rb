class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    Person.create(params[:person])
    redirect_to people_path
  end

end
