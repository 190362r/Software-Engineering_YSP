# coding: utf-8
class SessionsController < ApplicationController
  def new
	log_out
		
  end

  def create
	user = User.find_by(user_id: params[:session][:user_id])
	if user && User.find_by(password: params[:session][:password])
          log_in user
	   #redirect_to 'index'       
	   render 'index'
          #redirect_to <a href="../index.html.erb">index.html.erb</a>
	else
	  #redirect_to 'https://www.yahoo.co.jp'
          flash.now[:danger] = 'ユーザIDかパスワードが正しくありません'
          render 'new'
	end
  end

	
end
