class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to student_path(@student)
  end

  # def edit
  #   set_student
  # end

  # def edit_student
  #   @student = Student.find(params[:id])
  #   params[:status_toggle] == "active" ? @student.update(active: true) : @student.update(active: false)
  #   redirect_to student_path
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
