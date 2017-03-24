class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = Person.find_by(login: params[:login])
    if user and user.authenticate(params[:password])
      session[:user_id] =user.id
      redirect_to cars_url
    else
    redirect_to login_url alert:"Błedny login lub haslo"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url alert:"Wylogowales sie"
  end
end
