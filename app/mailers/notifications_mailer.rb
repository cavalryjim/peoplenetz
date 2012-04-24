class NotificationsMailer < ActionMailer::Base
  default from: "website@peoplenetz.com"
  
  def new_inquiry(contact)
    @contact = contact

    mail(:to => "jdavis@peoplenetz.com, bharrison@peoplenetz.com, sales@peoplenetz.com", :subject => 'Peoplenetz: Information Request')
  end
end
