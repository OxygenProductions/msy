class AppliesController < ApplicationController
  
  def new
    @apply = Apply.new
    render layout: 'full'
  end

  def create
    @apply = Apply.new(params[:apply])
    if @apply.valid?
      UserMailer.ytt_email(@apply).deliver
      UserMailer.ytt_admin_email(@apply).deliver
      redirect_to root_url, notice: "Application sent! We will contact you shortly."
    else
      render "new", layout: 'full'
    end
  end
  
end