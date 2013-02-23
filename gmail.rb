    require 'tlsmail'  
    require 'time'  
      
      
    Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)  

while(true)
    Net::SMTP.start('smtp.gmail.com', 587, 'gmail.com', '@gmail.com', 'cheryP13', :login) do |smtp|  
      smtp.send_message('your a narc ass bitch-made mother fucker', 'fauckyou93@gmail.com', '6019558378@txt.att.net')  
    end  
    Net::SMTP.start('smtp.gmail.com', 587, 'gmail.com', '@gmail.com', 'cheryP13', :login) do |smtp|
      smtp.send_message('cunt ass bitch', 'fauckyou93@gmail.com', '7692573867@csouth1.com')   
    end
    Net::SMTP.start('smtp.gmail.com', 587, 'gmail.com', '@gmail.com', 'cheryP13', :login) do |smtp|
      smtp.send_message('cunt ass bitch', 'fauckyou93@gmail.com', '6016648014@txt.att.net')       
    end

    sleep 90
end
