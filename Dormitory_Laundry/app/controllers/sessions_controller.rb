# coding: utf-8
class SessionsController < ApplicationController
  def new
	log_out		
  end

  def create
        user = User.find_by(user_id: params[:session][:user_id])
	# user_pass = User.find_by(user_id: user, password: params[:session][:password])
        user_pass = User.find_by(user_id: params[:session][:user_id], password: params[:session][:password])
	kanri_id = params[:session][:user_id]	
	kanri_pass = params[:session][:password]	
	if kanri_id == 'kanri' && kanri_pass == '0004'
	   render 'kanri'
	   #elsif user && user_pass
	elsif kanri_id == 'gaibu' && kanri_pass == '0005'

  @wash1 = Use.find_by(facility: '1W01')
 	@wash2 = Use.find_by(facility: '1W02')
	@wash3 = Use.find_by(facility: '1W03')
	@wash4 = Use.find_by(facility: '1W04')
	@wash5 = Use.find_by(facility: '1W05')
	@wash6 = Use.find_by(facility: '1W06')
	@wash7 = Use.find_by(facility: '1W07')
	@wash8 = Use.find_by(facility: '1W08')
	@wash9 = Use.find_by(facility: '1W09')
  @wash10 = Use.find_by(facility: '1W10')
  @wash11 = Use.find_by(facility: '1W11')
 	@wash12 = Use.find_by(facility: '1W12')
	@wash13 = Use.find_by(facility: '1W13')
	@wash14 = Use.find_by(facility: '1W14')
	@wash15 = Use.find_by(facility: '1W15')
	@wash16 = Use.find_by(facility: '1W16')
	@wash17 = Use.find_by(facility: '1W17')
	@wash18 = Use.find_by(facility: '1W18')
	@wash19 = Use.find_by(facility: '1W19')
  @wash20 = Use.find_by(facility: '1W20')
  @wash21 = Use.find_by(facility: '1W21')
 	@wash22 = Use.find_by(facility: '1W22')
	@wash23 = Use.find_by(facility: '1W23')
	@wash24 = Use.find_by(facility: '1W24')
	@wash25 = Use.find_by(facility: '1W25')
	@wash26 = Use.find_by(facility: '1W26')
	@wash27 = Use.find_by(facility: '1W27')
	@wash28 = Use.find_by(facility: '1W28')
	@wash29 = Use.find_by(facility: '1W29')
  @wash30 = Use.find_by(facility: '1W30')

	    render 'gaibu'
        elsif user_pass
          log_in user
          SendMailer.notification(current_user).deliver
	   render 'index'
	else
	  #redirect_to 'https://www.yahoo.co.jp'
          flash.now[:danger] = 'ユーザIDかパスワードが正しくありません'
          render 'new'
	end

	def gaibu2
  @wash1 = Use.find_by(facility: '1W01')
 	@wash2 = Use.find_by(facility: '1W02')
	@wash3 = Use.find_by(facility: '1W03')
	@wash4 = Use.find_by(facility: '1W04')
	@wash5 = Use.find_by(facility: '1W05')
	@wash6 = Use.find_by(facility: '1W06')
	@wash7 = Use.find_by(facility: '1W07')
	@wash8 = Use.find_by(facility: '1W08')
	@wash9 = Use.find_by(facility: '1W09')
  @wash10 = Use.find_by(facility: '1W10')
  @wash11 = Use.find_by(facility: '1W11')
 	@wash12 = Use.find_by(facility: '1W12')
	@wash13 = Use.find_by(facility: '1W13')
	@wash14 = Use.find_by(facility: '1W14')
	@wash15 = Use.find_by(facility: '1W15')
	@wash16 = Use.find_by(facility: '1W16')
	@wash17 = Use.find_by(facility: '1W17')
	@wash18 = Use.find_by(facility: '1W18')
	@wash19 = Use.find_by(facility: '1W19')
  @wash20 = Use.find_by(facility: '1W20')
  @wash21 = Use.find_by(facility: '1W21')
 	@wash22 = Use.find_by(facility: '1W22')
	@wash23 = Use.find_by(facility: '1W23')
	@wash24 = Use.find_by(facility: '1W24')
	@wash25 = Use.find_by(facility: '1W25')
	@wash26 = Use.find_by(facility: '1W26')
	@wash27 = Use.find_by(facility: '1W27')
	@wash28 = Use.find_by(facility: '1W28')
	@wash29 = Use.find_by(facility: '1W29')
  @wash30 = Use.find_by(facility: '1W30')
	end

  end
end
