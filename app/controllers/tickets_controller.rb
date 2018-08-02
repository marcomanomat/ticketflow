class TicketsController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
  end	

 def new
 end
 
def index
  @tickets = Ticket.all
  if params[:search]
    @tickets = Ticket.all.search(params[:search]).order("created_at DESC")
  else
    @tickets = Ticket.all.order("created_at DESC")
  end
end

 def create
   @ticket = Ticket.new(ticket_params)
 
   @ticket.save
   redirect_to @ticket
 end

 
 private
   def ticket_params
     params.require(:ticket).permit(:number, :status, :url)
   end

end
