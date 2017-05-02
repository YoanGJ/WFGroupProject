module SessionsHelper
    
    def log_in_admin(admin)
        session[:admin_id] = admin.id
    end
    
    def log_in_student(student)
        session[:student_id] = student.id
    end
    
    def log_in_lecturer(lecturer)
        session[:lecturer_id] = lecturer.id
    end
    
    def log_in_module_admin(module_admin)
        session[:module_admin_id] = module_admin.id
    end
    
    def current_admin
       @current_admin ||= Admin.find_by(id: session[:admin_id])
    end
    
    def current_student
       @current_student ||= Student.find_by(id: session[:student_id])
    end
    
    def current_lecturer
       @current_lecturer||= Lecturer.find_by(id: session[:lecturer_id])
    end
    
    def current_module_admin
       @current_module_admin ||= ModuleAdmin.find_by(id: session[:module_admin_id])
    end
    
    def admin_logged_in?
       !current_admin.nil?
    end
    
    def student_logged_in?
       !current_student.nil? 
    end
    
    def lecturer_logged_in?
       !current_lecturer.nil?
    end
    
    def module_admin_logged_in?
       !current_module_admin.nil?
    end
    
    def remember_admin(admin)
       admin.remember_admin
       cookies.permanent.signed[:admin_id] = admin.id
       cookies.permanent[:remember_token] = admin.remember_token
    end
    
    def remember_student(student)
       student.remember_student
       cookies.permanent.signed[:student_id] = student.id
       cookies.permanent[:remember_token] = student.remember_token
    end
    
    def remember_lecturer(lecturer)
       lecturer.remember_lecturer
       cookies.permanent.signed[:lecturer_id] = lecturer.id
       cookies.permanent[:remember_token] = lecturer.remember_token
    end
    
    def remember_module_admin(module_admin)
       module_admin.remember_module_admin
       cookies.permanent.signed[:module_admin_id] = module_admin.id
       cookies.permanent[:remember_token] = module_admin.remember_token
    end
    
    def log_out_admin
       session.delete(:admin_id)
       @current_admin = nil
    end
    
    def log_out_student
       session.delete(:student_id)
       @current_student = nil
    end
    
    def log_out_lecturer
       session.delete(:lecturer_id)
       @current_lecturer = nil
    end
    
    def log_out_module_admin
       session.delete(:module_admin_id)
       @current_module_admin = nil
    end
    
    def destroy
       log_out_admin
       log_out_student
       log_out_lecturer
       log_out_module_admin
       redirect_to root_url 
    end
    
end
