class MembersController < ApplicationController

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
   redirect_to @member
   else
      flash[:danger] = "Try Again!"
      render 'new'
    end
 end
 
 private
   def member_params
     params.require(:member).permit(:name, :email, :password, :password_confirmation)
   end



end
