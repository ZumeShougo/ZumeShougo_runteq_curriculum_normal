class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: %i[show edit update destroy]
  def index
    @q = User.ransack(params[:q])
    @user = @q.result(distinct: true).order(created_at: :desc).page(params[:page])
  end

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user), success: t('defaults.message.edited')
    else
      flash.now[:danger] = t('defaults.message.not_edited')
      render 'edit'
    end
  end

  def destroy
    @user.destroy!
    redirect_to admin_users_path, success: t('defaults.message.deleted')
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :abatar)
  end
end
