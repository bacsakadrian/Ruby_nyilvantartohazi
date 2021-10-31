class EmployeesController < ApplicationController
    def Index
        @employees = Employee.all
    end

    def new 
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(my_params)
        if @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])

        if(@employee.update(my_params))
            redirect_to @employee
        else
            redirect_to :edit
        end
    end

    def show
        @employee = Employee.find(params[:id])
    end


    private
    def my_params
        params.require(:employee).permit(:firstname, :lastname, :age, :days, :daysoff, :isboss, :company_id)
    end
end
