class ApplicationController < ActionController::Base
	# helper_method :current_member

 #  def sign_in(member)
 #    cookies.permanent[:remember_token] = member.remember_token
 #    self.current_member = member
 #  end

 #  def signed_in?
 #    !current_member.nil?
 #  end

 #  def current_member=(member)
 #    @current_member = member
 #  end

 #  def current_member
 #    @current_member ||= Member.find_by_remember_token(cookies[:remember_token])
 #  end

 #  def sign_out
 #    self.current_member = nil
 #    cookies.delete(:remember_token)
 #  end
end
