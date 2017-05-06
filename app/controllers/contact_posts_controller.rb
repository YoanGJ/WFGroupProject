class ContactPostsController < ApplicationController
  before_action :set_contact_post, only: [:show, :edit, :update, :destroy]

  def destroy_it_contact_post
    @contact_post = ContactPost.find_by(id: params[:id])
    @contact_post.destroy
    redirect_to contact_posts_path
  end

  # GET /contact_posts
  # GET /contact_posts.json
  def index
    @contact_posts = ContactPost.all
  end

  # GET /contact_posts/1
  # GET /contact_posts/1.json
  def show
  end

  # GET /contact_posts/new
  def new
    @contact_post = ContactPost.new
    @page = Page.find_by(id: 4)
  end

  # GET /contact_posts/1/edit
  def edit
  end

  # POST /contact_posts
  # POST /contact_posts.json
  def create
    @contact_post = ContactPost.new(contact_post_params)

    respond_to do |format|
      if @contact_post.save
        format.html { redirect_to new_contact_post_path, notice: 'Message sent successfully' }
        format.json { render :show, status: :created, location: @contact_post }
      else
        format.html { render :new }
        format.json { render json: @contact_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_posts/1
  # PATCH/PUT /contact_posts/1.json
  def update
    respond_to do |format|
      if @contact_post.update(contact_post_params)
        format.html { redirect_to @contact_post, notice: 'Contact post was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_post }
      else
        format.html { render :edit }
        format.json { render json: @contact_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_posts/1
  # DELETE /contact_posts/1.json
  def destroy
    @contact_post.destroy
    respond_to do |format|
      format.html { redirect_to contact_posts_url, notice: 'Contact post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_post
      @contact_post = ContactPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_post_params
      params.require(:contact_post).permit(:name, :phone, :email, :message, :subject)
    end
end
