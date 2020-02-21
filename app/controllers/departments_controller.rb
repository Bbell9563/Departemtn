class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  def index
    @departments = Department.all
  end

  def show
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  def new
    @department = Department.new
    render partial: "depart"
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to departments_path
    else  
      render :new
    end
  end

  def edit
    render partial: "depart"
  end

  def update
    if @department.update(department_params)
      redirect_to departments_path
    else  
      render :edit
    end
  end

  private
    def set_department
      @department = Department.find(params[:id])
    end

    def department_params
      params.require(:department).permit(:name, :phone)
    end
end
