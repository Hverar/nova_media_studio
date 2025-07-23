class ConsultationMailer < ApplicationMailer
  def send_consultation_email
    @consultation = params[:consultation]
    mail(to: 'henrique@novamediastudio.ca', subject: 'New Consultation Request') do |format|
      format.html { render 'consultation_mailer/send_consultation_email' }
    end
  end
end
