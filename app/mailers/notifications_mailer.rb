class NotificationsMailer < ActionMailer::Base

  def new_inquiry(contact)
    @contact = contact

    mail(:from "website@peoplenetz.com", :to => "jdavis@peoplenetz.com, bharrison@peoplenetz.com, sales@peoplenetz.com", :subject => 'Peoplenetz: Information Request')
  end
end
