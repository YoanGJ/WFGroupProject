module SchoolModulesHelper
    
def add_module_to_student
    @student = current_student
    @school_module = SchoolModule.find_by(id: params[:id])
    @student.school_modules << @school_module
    redirect_to choose_module_path
end

def delete_module_for_student
    @student = current_student
    @school_module = SchoolModule.find_by(id: params[:id])
    @student.school_modules.delete(@school_module)
    redirect_to choose_module_path
end
    
end
