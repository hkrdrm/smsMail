require 'net/smtp'
message_body = <<END_OF_EMAIL
From: Your Name <your.name@gmail.com>
To: Other Email <other.email@somewhere.com>
Subject: text message

This is a test message.
END_OF_EMAIL


server = 'mail.gmx.com'
mail_from_domain = 'mail.gmx.com'
port = 465      # or 25 - double check with your provider
username = 'hkr.drm@gmx.com'
password = 'nickel.109N'

smtp = Net::SMTP.new(server, port)
smtp.enable_starttls_auto
smtp.start(server,username,password, :plain)
smtp.send_message(message_body, fromAddress, toAddress) 
