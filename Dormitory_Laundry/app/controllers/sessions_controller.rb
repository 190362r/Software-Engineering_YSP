# coding: utf-8
class SessionsController < ApplicationController
  def new
	log_out		
  end

  def create
	user = User.find_by(user_id: params[:session][:user_id])
	user_pass = User.find_by(password: params[:session][:password])
	kanri_id = params[:session][:user_id]	
	kanri_pass = params[:session][:password]	
	if kanri_id == 'kanri' && kanri_pass == '0004'
	   render 'kanri'
	elsif user && user_pass
          log_in user      
	   render 'index'
	else
	  #redirect_to 'https://www.yahoo.co.jp'
          flash.now[:danger] = 'ユーザIDかパスワードが正しくありません'
          render 'new'
	end
  end
end
