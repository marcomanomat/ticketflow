class MembersController < ApplicationController
  before_action :logged_in_member, only: [:index, :edit, :update, :destroy]
  before_action :correct_member,   only: [:edit, :update]    
  before_action :admin_member,     only: :destroy

  def show
    @member = Member.find(params[:id])
  end	

 def new
    @member = Member.new
 end

 def index
 	@members = Member.all
 end



 def create
   @member = Member.new(member_params)

   if @member.save
      log_in @member
      flash[:success] = "Boom - Welcome to the Support Org Checklist App!"
      redirect_to @member
   else
      flash[:danger] = "Try Again!"
      render 'new'
    end
 end

  def edit
    @member = Member.find(params[:id])
  end 

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(member_params)
      flash[:success] = "Profile updated"
      redirect_to @member
    else
      render 'edit'
    end  
  end

  def destroy
    Member.find(params[:id]).destroy
    flash[:success] = "Member deleted"
    redirect_to members_url
  end  
 
 private
   def member_params
     params.require(:member).permit(:name, :email, :password, :password_confirmation)
   end

    def logged_in_member
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end   

    def correct_member
      @member = Member.find(params[:id])
      redirect_to(root_url) unless @member == current_member
    end

    def admin_member
      redirect_to(root_url) unless current_member.admin?
    end    



end
