class FavaritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    post = Micropost.find(params[:micropost_id])
    current_user.like(post) 
    flash[:success] ="お気に入りしました"
    redirect_to "/"
  end
  
  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unlike(post) 
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to "/"
  end  
end
