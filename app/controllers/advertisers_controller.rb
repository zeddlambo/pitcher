class AdvertisersController < ApplicationController
  
  before_action :set_advertiser, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [ :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /advertisers
  # GET /advertisers.json
  def index
    @advertisers = current_user.advertisers.today
    respond_to do |format|
      format.html
      format.csv { send_data @advertisers.to_csv }
    end
  end

  # GET /advertisers/1
  # GET /advertisers/1.json
  def show
  end


  # GET /advertisers/new
  def new
    @advertiser = current_user.advertisers.build
    
  end


  # GET /advertisers/1/edit
  def edit
  end

  # POST /advertisers
  # POST /advertisers.json
  def create
    @advertiser = current_user.advertisers.build(advertiser_params)

    respond_to do |format|
      if @advertiser.save
        format.html { redirect_to @advertiser }
        format.json { render action: 'show', status: :created, location: @advertiser }
        mixpanel.track("New Case");
      else
        format.html { render action: 'new' }
        format.json { render json: @advertiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advertisers/1
  # PATCH/PUT /advertisers/1.json
  def update
    respond_to do |format|
      if @advertiser.update(advertiser_params)
        format.html { redirect_to advertiser_path}
        format.json { head :no_content }
        
      else
        format.html { render action: 'edit' }
        format.json { render json: @advertiser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertisers/1
  # DELETE /advertisers/1.json
  def destroy
    @advertiser.destroy
    respond_to do |format|
      format.html { redirect_to advertisers_url }
      format.json { head :no_content }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertiser
      @advertiser = Advertiser.find(params[:id])
    end

    def correct_user
      @advertiser = current_user.advertisers.find_by(id: params[:id])
      redirect_to advertisers_path, notice: "That action is not allowed" if @advertiser.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advertiser_params
      params.require(:advertiser).permit(:name, :security, :cid, :issue, :points, :finished, :created_at)
    end
end