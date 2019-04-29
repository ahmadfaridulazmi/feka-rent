class RentalMailer < ApplicationMailer

  def welcome_email(pdf = nil)
    @user = 'Umi'
    attachments.inline['receipt.pdf'] = File.read(pdf) if pdf.present?
    mail(to: "ahmadfaridulazmi@gmail.com", subject: 'Feka-rent receipt April')
  end
end
