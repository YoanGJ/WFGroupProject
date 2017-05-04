module SessionsHelper
    
    def log_in_admin(admin)
        session[:admin_id] = admin.id
    end
    
    def current_admin
       @current_admin ||= Admin.find_by(id: session[:admin_id])
    end
    
    def admin_logged_in?
       !current_admin.nil?
    end
    
    def remember_admin(admin)
       admin.remember_admin
       cookies.permanent.signed[:admin_id] = admin.id
       cookies.permanent[:remember_token] = admin.remember_token
    end
    
    def log_out_admin
       session.delete(:admin_id)
       @current_admin = nil
    end
    
    def destroy
       log_out_admin
       redirect_to root_url 
    end
    
end
