class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student
  end

  def create
    @student = Student.create(first_name: params[:student][:first_name],
                   last_name: params[:student][:last_name])
    render :show
  end

end
