class MembersController < ApplicationController
  before_action :current_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all  
  end

  def show

  end

  def new
    @member = Member.new
  end

  def create
    member = Member.create(member_params)
    redirect_to members_path(member)
  end

  def edit

  end

  def update
    @member.update(member_params)
    redirect_to members_path(@member)
  end
  
  def destroy
    @member.destroy
    redirect_to members_path
  end

  private

  def member_params
    params.require(:member).permit(:member_name)
  end

  def current_member
    @member = Member.find(params[:id])
  end

end
