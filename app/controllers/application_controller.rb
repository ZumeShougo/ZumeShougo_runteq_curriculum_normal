class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login#sorceryが作成するメソッド。ログインしてない時not_authenticatedメソッドを発火する

  private
  def not_authenticated
    flash[:warning] = t('defaults.message.require_login')
    redirect_to login_path
  end
end
