class SchoolModulesController < ApplicationController
  before_action :set_school_module, only: [:show, :edit, :update, :destroy]

  # GET /school_modules
  # GET /school_modules.json
  
  def destroy_it_module
    @school_module = SchoolModule.find_by(id: params[:id])
    @school_module.destroy
    redirect_to school_modules_path
  end
  
  def choose
    @school_modules = SchoolModule.all
  end
  
  def index
    @school_modules = SchoolModule.all
  end

  # GET /school_modules/1
  # GET /school_modules/1.json
  def show
  end

  # GET /school_modules/new
  def new
    @school_module = SchoolModule.new
  end

  # GET /school_modules/1/edit
  def edit
  end

  # POST /school_modules
  # POST /school_modules.json
  def create
    @school_module = SchoolModule.new(school_module_params)

    respond_to do |format|
      if @school_module.save
        format.html { redirect_to @school_module, notice: 'School module was successfully created.' }
        format.json { render :show, status: :created, location: @school_module }
      else
        format.html { render :new }
        format.json { render json: @school_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_modules/1
  # PATCH/PUT /school_modules/1.json
  def update
    respond_to do |format|
      if @school_module.update(school_module_params)
        format.html { redirect_to @school_module, notice: 'School module was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_module }
      else
        format.html { render :edit }
        format.json { render json: @school_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_modules/1
  # DELETE /school_modules/1.json
  def destroy
    @school_module.destroy
    respond_to do |format|
      format.html { redirect_to school_modules_url, notice: 'School module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_module
      @school_module = SchoolModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_module_params
      params.require(:school_module).permit(:code, :name)
    end

end
