class ServiceAdsController < ApplicationController
  before_action :set_service_ad, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  # GET /service_ads
  def index
    my_hash = {}
    my_join_hash = {}
    if params.key?(:service)
      my_hash['service_id'] = params[:service]
    end
    if params.key?(:category)
      my_hash['category_id'] = params[:category]
    end
    if params.key?(:district)
      my_join_hash['districts'] = {id: params[:district]}
    end
    if my_hash.empty?
      @service_ads = ServiceAd.all
    elsif my_join_hash.empty?
      @service = params[:service]
      @category = params[:category]
      @service_ads = ServiceAd.where(my_hash).find_each
    else
      @service = params[:service]
      @category = params[:category]
      @district = params[:district]
      @service_ads = ServiceAd.where(my_hash).joins(:districts).where(my_join_hash).find_each
    end

  end

  # GET /service_ads/1
  def show
  end

  # GET /service_ads/new
  def new
    user_param = ActionController::Parameters.new(user_id: current_user.attributes['id'], active: true)
    user_param.permit!
    @service_ad = ServiceAd.new(user_param)
    @city_coverages = @service_ad.city_coverages.build
    @district_coverages = @service_ad.district_coverages.build
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
    service_ad_params[:price].gsub!(/,/, '.')
    @service_ad = ServiceAd.new(service_ad_params)
    if @service_ad.save
      redirect_to "/message/index", notice: t('helpers.messages.save', model: t('activerecord.models.service_ad.one'))
    else
      @serviceList = Service.where(:category_id => @service_ad.category_id).to_a
      5.times do
        @service_ad.service_images.build
      end
      render :new
    end
  end

  # PATCH/PUT /service_ads/1
  def update
    if @service_ad.update(service_ad_params)
      redirect_to @service_ad, notice: t('helpers.messages.update', model: t('activerecord.models.service_ad.one'))
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
    redirect_to service_ads_url, notice: t('helpers.messages.delete', model: t('activerecord.models.service_ad.one'))
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_service_ad
    @service_ad = ServiceAd.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def service_ad_params
    params.require(:service_ad).permit!
  end
end
