class StudentsController < ApplicationController
  def index
    @students = Student.all
    render :index
  end
  
  def show 
    @students = Student.find_by_id(params)
    erb :show 
  end 
end