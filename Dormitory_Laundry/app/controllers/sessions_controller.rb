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


	def gaibu
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


      def gaibu3
@dry1 = Use.find_by(facility: '1D01')
   	@dry2 = Use.find_by(facility: '1D02')
  	@dry3 = Use.find_by(facility: '1D03')
  	@dry4 = Use.find_by(facility: '1D04')
  	@dry5 = Use.find_by(facility: '1D05')
  	@dry6 = Use.find_by(facility: '1D06')
  	@dry7 = Use.find_by(facility: '1D07')
  	@dry8 = Use.find_by(facility: '1D08')
  	@dry9 = Use.find_by(facility: '1D09')
    @dry10 = Use.find_by(facility: '1D10')
    @dry11 = Use.find_by(facility: '1D11')
    @dry12 = Use.find_by(facility: '1D12')
    @dry13 = Use.find_by(facility: '1D13')
    @dry14 = Use.find_by(facility: '1D14')
    @dry15 = Use.find_by(facility: '1D15')
    @dry16 = Use.find_by(facility: '1D16')
    @dry17 = Use.find_by(facility: '1D17')
    @dry18 = Use.find_by(facility: '1D18')
    @dry19 = Use.find_by(facility: '1D19')
    @dry20 = Use.find_by(facility: '1D20')
    @dry21 = Use.find_by(facility: '1D21')
    @dry22 = Use.find_by(facility: '1D22')
    @dry23 = Use.find_by(facility: '1D23')
    @dry24 = Use.find_by(facility: '1D24')
    @dry25 = Use.find_by(facility: '1D25')
    @dry26 = Use.find_by(facility: '1D26')
    @dry27 = Use.find_by(facility: '1D27')
    @dry28 = Use.find_by(facility: '1D28')
    @dry29 = Use.find_by(facility: '1D29')
    @dry30 = Use.find_by(facility: '1D30')
	end

	def gaibu4
@dry1 = Use.find_by(facility: '1D01')
   	@dry2 = Use.find_by(facility: '1D02')
  	@dry3 = Use.find_by(facility: '1D03')
  	@dry4 = Use.find_by(facility: '1D04')
  	@dry5 = Use.find_by(facility: '1D05')
  	@dry6 = Use.find_by(facility: '1D06')
  	@dry7 = Use.find_by(facility: '1D07')
  	@dry8 = Use.find_by(facility: '1D08')
  	@dry9 = Use.find_by(facility: '1D09')
    @dry10 = Use.find_by(facility: '1D10')
    @dry11 = Use.find_by(facility: '1D11')
    @dry12 = Use.find_by(facility: '1D12')
    @dry13 = Use.find_by(facility: '1D13')
    @dry14 = Use.find_by(facility: '1D14')
    @dry15 = Use.find_by(facility: '1D15')
    @dry16 = Use.find_by(facility: '1D16')
    @dry17 = Use.find_by(facility: '1D17')
    @dry18 = Use.find_by(facility: '1D18')
    @dry19 = Use.find_by(facility: '1D19')
    @dry20 = Use.find_by(facility: '1D20')
    @dry21 = Use.find_by(facility: '1D21')
    @dry22 = Use.find_by(facility: '1D22')
    @dry23 = Use.find_by(facility: '1D23')
    @dry24 = Use.find_by(facility: '1D24')
    @dry25 = Use.find_by(facility: '1D25')
    @dry26 = Use.find_by(facility: '1D26')
    @dry27 = Use.find_by(facility: '1D27')
    @dry28 = Use.find_by(facility: '1D28')
    @dry29 = Use.find_by(facility: '1D29')
    @dry30 = Use.find_by(facility: '1D30')
	end


        def sinkoku_kanryo
          #SendMailer.notification(current_user).deliver ランドリー使用完了メール
          ReportMailer.report.deliver # 紛失物申告メール
        end
  end
end
