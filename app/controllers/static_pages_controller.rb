class StaticPagesController < ApplicationController
  before_action :require_login, only: %i[top]
  def top;
  end
end
