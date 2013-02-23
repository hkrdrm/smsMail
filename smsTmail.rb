require 'net/smtp'
require 'rubygems'
require 'tmail'

def send_mail_via_tmail
   
    tomail = 'hkr.drm@gmx.cm'
    frommail = 'hkr.drm@gmx.com'
    mail = TMail::Mail.new
    mail.to = tomail
    mail.from = frommail
    mail.subject = 'Test message'
    mail.date = Time.now
    mail.body = 'Thanks to Locaweb for making this possible.'

    Net::SMTP.start( 'mail.gmx.com', 25, 'localhost', 'hkr.drm@gmx.com', 'nickel.109N', :login) do|smtpclient|
      smtpclient.send_message(
        mail.to_s,
        frommail,
        tomail
      )
    end
end

send_mail_via_tmail
