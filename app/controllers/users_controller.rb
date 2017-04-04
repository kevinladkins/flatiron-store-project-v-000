class UsersController < ApplicationController

 def new
 end
 def create
 end
  def show
  end

  def edit
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end

end
