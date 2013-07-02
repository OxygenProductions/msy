class UserMailer < ActionMailer::Base
  default :from => "noreply@markstephensyoga.com"

  def expire_email(user)
    mail(:to => user.email, :subject => "Subscription Cancelled")
  end
  
  def contact_email(contact)
  	mail(:to => contact.email, :subject => "Your Message Was Recieved")
  end
  
  def contact_admin_email(contact)
  	@contact = contact
  	mail(:to => "elliot.weaver@gmail.com", :subject => "New Contact Recieved")
  end
  
  def ytt_email(ytt)
  	mail(:to => ytt.email, :subject => "Your YTT Application Was Recieved")
  end
  
  def ytt_admin_email(ytt)
  	@ytt = ytt
  	mail(:to => "elliot.weaver@gmail.com", :subject => "New YTT Application Recieved")
  end
  
end