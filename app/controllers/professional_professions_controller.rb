

class ProfessionalProfessionsController < ApplicationController
  before_action :set_professional_profession, only: [:show, :edit, :update, :destroy]

  # GET /professional_professions
  def index
    @professional_professions = ProfessionalProfession.all
  end

  # GET /professional_professions/1
  def show
  end

  # GET /professional_professions/new
  def new
    @professional_profession = ProfessionalProfession.new
  end

  # GET /professional_professions/1/edit
  def edit
  end

  # POST /professional_professions
  def create
    @professional_profession = ProfessionalProfession.new(professional_profession_params)

    if @professional_profession.save
      redirect_to @professional_profession, notice: t('helpers.messages.save' , model:t('activerecord.models.professional_profession.one'))
    else
      render :new
    end
  end

  # PATCH/PUT /professional_professions/1
  def update
    if @professional_profession.update(professional_profession_params)
      redirect_to @professional_profession, notice: t('helpers.messages.update' , model:t('activerecord.models.professional_profession.one'))
    else
      render :edit
    end
  end

  # DELETE /professional_professions/1
  def destroy
    @professional_profession.destroy
    redirect_to professional_professions_url, notice: t('helpers.messages.delete' , model:t('activerecord.models.professional_profession.one'))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professional_profession
      @professional_profession = ProfessionalProfession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def professional_profession_params

      params.require(:professional_profession).permit(:professional_id, :profession_id)

    end
end

