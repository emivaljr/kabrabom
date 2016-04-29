

class ProfessionalsController < ApplicationController
  before_action :set_professional, only: [:show, :edit, :update, :destroy]

  # GET /professionals
  def index
    @professionals = Professional.all
  end

  # GET /professionals/1
  def show
  end

  # GET /professionals/new
  def new
    @professional = Professional.new
  end

  # GET /professionals/1/edit
  def edit
  end

  # POST /professionals
  def create
    @professional = Professional.new(professional_params)

    if @professional.save
      redirect_to @professional, notice: t('helpers.messages.save' , model:t('activerecord.models.professional.one'))
    else
      render :new
    end
  end

  # PATCH/PUT /professionals/1
  def update
    if @professional.update(professional_params)
      redirect_to @professional, notice: t('helpers.messages.update' , model:t('activerecord.models.professional.one'))
    else
      render :edit
    end
  end

  # DELETE /professionals/1
  def destroy
    @professional.destroy
    redirect_to professionals_url, notice: t('helpers.messages.delete' , model:t('activerecord.models.professional.one'))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional
      @professional = Professional.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def professional_params

      params.require(:professional).permit(:user_id, :integer, :nothing_on_record, :integer, :active, :integer, :phone_id, :integer, :address_id, :integer)

    end
end

