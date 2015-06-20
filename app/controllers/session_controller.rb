class SessionController < ApplicationController

  def new
    @user = User.new
  end

  def create
  end


  def destroy
    session.delete :user_id
    redirect_to sign_in_path

  end

end
