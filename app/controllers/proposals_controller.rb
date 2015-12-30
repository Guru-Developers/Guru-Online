class ProposalsController < ApplicationController

  before_action :restrict_to_logged_in, only: [:index, :show]


  def index
    @proposals = Proposal.paginate(page: params[:page])
  end

  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new(proposal_params)
    if @proposal.save
      NotificationMailer.proposal(@proposal).deliver_now
      flash.now[:success] = "Proposal submitted"
    end
    render 'new'
  end

  def show
    @proposal = Proposal.find(params[:id])
  end


  private
    
    def proposal_params
      params.require(:proposal).permit(:first_name, :last_name, :email, :company_name, :company_url, :message, :pitch_deck) 
    end
end
