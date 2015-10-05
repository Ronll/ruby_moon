class FeedbackController < ApplicationController
  def create
    @feedback = FeedbackForm.new(params.require(:feedback_form))
    if @feedback.valid?
      FeedbackMailer.send_mail(@feedback).deliver_now
    else
      render :new
    end
  end

  def new
    @feedback = FeedbackForm.new
  end
end
