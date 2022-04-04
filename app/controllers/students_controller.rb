class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
      
    def grades
        # byebug
        grades = Student.all.order(:grade).reverse_order
        render json: grades
    end
end
