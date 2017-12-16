class SessionsController < ApplicationController
  def new
  end

  def create
	user = User.find_by(user_id: params[:session][:user_id])
	if user && User.find_by(password: params[:session][:password])
	redirect_to 'https://www.google.co.jp'
	else
	redirect_to 'https://www.yahoo.co.jp'
	end
  end
end
