class HomeController < ApplicationController
  def index
    # pdf = render_to_string :pdf => "some_file_name"
    pdf = render_to_string pdf: 'receipt',
                           header: { right: '[page] of [topage]' },
                           template:'home/index_pdf.html.erb',
                           encoding: "UTF-8",
                           page_size: 'A4',
                           layout: false
    save_path = Rails.root.join('pdfs',"receipt.pdf")
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
    RentalMailer.welcome_email(save_path).deliver_now
    render json: 'ok'.to_json
  end
end
