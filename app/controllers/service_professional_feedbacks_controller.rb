

class ServiceProfessionalFeedbacksController < ApplicationController
  before_action :set_service_professional_feedback, only: [:show, :edit, :update, :destroy]

  # GET /service_professional_feedbacks
  def index
    @service_professional_feedbacks = ServiceProfessionalFeedback.all
  end

  # GET /service_professional_feedbacks/1
  def show
  end

  # GET /service_professional_feedbacks/new
  def new
    @service_professional_feedback = ServiceProfessionalFeedback.new
  end

  # GET /service_professional_feedbacks/1/edit
  def edit
  end

  # POST /service_professional_feedbacks
  def create
    @service_professional_feedback = ServiceProfessionalFeedback.new(service_professional_feedback_params)

    if @service_professional_feedback.save
      redirect_to @service_professional_feedback, notice: t('helpers.messages.save' , model:t('activerecord.models.service_professional_feedback.one'))
    else
      render :new
    end
  end

  # PATCH/PUT /service_professional_feedbacks/1
  def update
    if @service_professional_feedback.update(service_professional_feedback_params)
      redirect_to @service_professional_feedback, notice: t('helpers.messages.update' , model:t('activerecord.models.service_professional_feedback.one'))
    else
      render :edit
    end
  end

  # DELETE /service_professional_feedbacks/1
  def destroy
    @service_professional_feedback.destroy
    redirect_to service_professional_feedbacks_url, notice: t('helpers.messages.delete' , model:t('activerecord.models.service_professional_feedback.one'))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_professional_feedback
      @service_professional_feedback = ServiceProfessionalFeedback.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_professional_feedback_params

      params.require(:service_professional_feedback).permit(:professional_service_id, :quantity_stars, :user_id, :feedback)

    end
end

