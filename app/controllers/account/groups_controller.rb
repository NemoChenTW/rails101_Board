class Account::GroupsController < ApplicationController

  #檢查是否登入
  before_action :authenticate_user!

  def index
    @groups = current_user.participated_groups.order("posts_count DESC")
  end
  
end
