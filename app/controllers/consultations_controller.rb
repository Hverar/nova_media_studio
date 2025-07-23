class ConsultationsController < ApplicationController
  # Display the consultation form
  def new
    @consultation = Consultation.new
  end

  # Handle the form submission and send email
  def create
    logger.debug "Form Parameters: #{params.inspect}"
    @consultation = Consultation.new(consultation_params)

    if @consultation.save
      ConsultationMailer.with(consultation: @consultation).send_consultation_email.deliver_later
      redirect_to thank_you_path, notice: "Thank you for reaching out. We’ll get back to you soon!"
    else
      render :new, alert: "There was an issue with your submission. Please try again."
    end
  end


  # Display the thank you page after form submission
  def thank_you
    # You can render a simple thank you message or redirect elsewhere
  end

  private

  # Strong parameters to permit the form data
  def consultation_params
    params.permit(:first_name, :email, :phone, :project_description)
  end

end
