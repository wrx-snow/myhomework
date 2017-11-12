class HomeController < ApplicationController
  def delaccountcheck
    @user = User.find_by_account(params[:user][:account])
  	if @user != nil && @user[:password] == params[:user][:password]
    User.find_by_sql("delete from Users where account='"+params[:user][:account]+"'")
  		session['loginedUser'] = nil
  		redirect_to :controller=>'home',:action=>'index'
  	else
  		session['loginedUser'] = @user
  		redirect_to :controller=>'home',:action=>'delaccount'
  	end
  end
  
  def passwdcheck
    @user = User.find_by_account(params[:user][:account])
  	if @user != nil && @user[:password] == params[:user][:oldpassword]
  	  User.find_by_sql("update Users set password='"+params[:user][:newpassword]+"' where account='"+params[:user][:account]+"'")
  		session['loginedUser'] = nil
  		redirect_to :controller=>'home',:action=>'index'
  	else
  		session['loginedUser'] = @user
  		redirect_to :controller=>'home',:action=>'chpasswd'
  	end
  end
  
  def chpasswd

  end
  
  
  def wrxsnow
  end
  
  def login
  end
  
  
  def checkLogin
  	@user = User.find_by_account(params[:user][:account])
  	if @user != nil && @user[:password] == params[:user][:password]
  		session['loginedUser'] = @user
  		redirect_to :controller=>'home',:action=>'index'
  	else
  		session['loginedUser'] = nil
  		redirect_to :controller=>'home',:action=>'login'
  	end
  end
  
  def index
  	@user = session['loginedUser']
  end
  
  def logout
  	session['loginedUser'] = nil
  	redirect_to :controller=>'home',:action=>'index'
  end
  
end
