class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @dogs = Dog.all
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employee_path(@employee)
    else
      render :new
    end
  end

  def edit
    @employee = Employee.new
    @dogs = Dog.all
  end

  def update
    @dogs = Dog.all
    @employee = Employee.new(employee_params)
    if @employee.update
      redirect_to employee_path(@employee)
    else
      render :update
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :office, :title, :dog_id)
    
  end
end
