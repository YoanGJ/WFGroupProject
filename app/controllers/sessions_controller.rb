class SessionsController < ApplicationController
  def new
  end
  
  def create
    admin = Admin.find_by(email: params[:session][:email].downcase)
    student = Student.find_by(email: params[:session][:email].downcase)
    lecturer = Lecturer.find_by(email: params[:session][:email].downcase)
    module_admin = ModuleAdmin.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password])
      log_in_admin admin
      redirect_to root_path
    elsif student && student.authenticate(params[:session][:password])
      log_in_student student
      redirect_to root_path
    elsif lecturer && lecturer.authenticate(params[:session][:password])
      log_in_lecturer lecturer
      redirect_to root_path
    elsif module_admin && module_admin.authenticate(params[:session][:password])
      log_in_module_admin module_admin
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

end
