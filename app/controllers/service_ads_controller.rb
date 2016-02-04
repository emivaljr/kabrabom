class ServiceAdsController < ApplicationController
  before_action :set_service_ad, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /service_ads
  def index
    @service_ads = ServiceAd.all
  end

  # GET /service_ads/1
  def show
  end

  # GET /service_ads/new
  def new
    user_param = ActionController::Parameters.new(user_id: current_user.attributes['id'],active:true)
    user_param.permit!
    @service_ad = ServiceAd.new(user_param)
    @serviceList = Array.new
    5.times do
      @service_ad.service_images.build
    end
  end

  # GET /service_ads/1/edit
  def edit
  end

  # POST /service_ads
  def create
    @service_ad = ServiceAd.new(service_ad_params)
    if @service_ad.save
      redirect_to "/message/index", notice: t('helpers.messages.save' , model:t('activerecord.models.service_ad.one'))
    else
      @serviceList = Service.where(:category_id => @service_ad.category).to_a
      5.times do
        @service_ad.service_images.build
      end
      render :new
    end
  end

  # PATCH/PUT /service_ads/1
  def update
    if @service_ad.update(service_ad_params)
      redirect_to @service_ad, notice: t('helpers.messages.update' , model:t('activerecord.models.service_ad.one'))
    else
      @serviceList = Service.where(:category_id => @service_ad.category).to_a
      5.times do
        @service_ad.service_images.build
      end
      render :edit
    end
  end

  # DELETE /service_ads/1
  def destroy
    @service_ad.destroy
    redirect_to service_ads_url, notice: t('helpers.messages.delete' , model:t('activerecord.models.service_ad.one'))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_ad
      @service_ad = ServiceAd.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_ad_params
      params.require(:service_ad).permit(:title, :description, :active, :price, :service_id, :user_id,:category,:service,:service_unit_id, service_images_attributes: [:photo])
    end
end
