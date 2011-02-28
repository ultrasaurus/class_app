class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    redirect_to people_path
  end

end
