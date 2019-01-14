Rails.application.routes.draw do
  resources :students, only: :index
  
  def index 
    @students = Student.all
    render :index 
  end

def show 
  @students = Student.find_by_id(params)
  render :show 
end 
