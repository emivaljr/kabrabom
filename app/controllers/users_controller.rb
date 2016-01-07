class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    1.times do
    address = @user.addresses.build
    phones = @user.phones.build
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: t('helpers.messages.save' , model:t('activerecord.models.user.one'))
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: t('helpers.messages.update' , model:t('activerecord.models.user.one'))
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: t('helpers.messages.delete' , model:t('activerecord.models.user.one'))
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:id, :login, :email, :name, :password, :cpf,:email_confirmation,:password_confirmation, addresses_attributes: [:id,:main,:cep,:complement,:num,:district,:city,:state],phones_attributes: [:id,:ddd,:phone])
    end
end
