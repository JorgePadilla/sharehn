class LinksController < InheritedResources::Base
  before_action :set_link, only: [:show, :edit, :update, :destroy]
  # GET /posts
  # GET /posts.json
  def index
    @links = Link.all
  end
  
  # GET /posts/new
  def new
    @link = Link.new
  end
  
  def show  
  end


  # GET /posts/1/edit
  def edit
  end
   # POST /posts
  # POST /posts.json
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end
  
   # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
 # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end
    def link_params
      params.require(:link).permit(:link, :post_id)
    end
end

