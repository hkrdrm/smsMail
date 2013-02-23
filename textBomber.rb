require 'mail'

options = { :address              => "mail.gmx.com",
            :port                 => 465,
            :domain               => 'mail.gmx.com',
            :user_name            => 'hkr.drm@gmx.com',
            :password             => 'nickel.109N',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }



Mail.defaults do
  delivery_method :smtp, options
end


mail = Mail.new do
       to 'hkr.drm@gmx.com'
     from 'hkr.drm@gmx.com'
  subject 'testing sendmail'
     body 'testing sendmail'
end

mail.deliver!
