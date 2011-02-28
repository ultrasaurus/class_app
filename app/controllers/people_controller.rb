class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
  end
end
