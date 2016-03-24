class SmtpController < ApplicationController
  def edit
    @smtp = current_user.smtp || Smtp.new
  end

  def update
    @smtp = current_user.smtp || Smtp.new
    @smtp.update smtp_params
    @smtp.user = current_user
    if @smtp.save
      redirect_to :edit
    else
      render :edit
    end
  end

  private

  def smtp_params
    params.require(:smtp).permit(:server, :username, :port)
  end
end
