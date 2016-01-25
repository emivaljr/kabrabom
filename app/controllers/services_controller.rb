class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  def index
    @services = Service.all
  end

  # GET /services/1
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

    # GET /services/1/edit
  def retrieveByCategory
    @services = Service.where(:category_id => params[:send_id]).to_a
    render json: @services
  end

  # POST /services
  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to @service, notice: t('helpers.messages.save' , model:t('activerecord.models.service.one'))
    else
      render :new
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      redirect_to @service, notice: t('helpers.messages.update' , model:t('activerecord.models.service.one'))
    else
      render :edit
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
    redirect_to services_url, notice: t('helpers.messages.delete' , model:t('activerecord.models.service.one'))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_params
      params.require(:service).permit(:name, :description, :active, :category_id)
    end
end
