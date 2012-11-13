begin
  if Rails.env.production?
    ActionMailer::Base.smtp_settings = {
     :enable_starttls_auto => true,
     :address            => 'smtp.gmail.com',
     :port               => 587,
     :domain             => 'khaos-party.herokuapp.com',
     :authentication     => :plain,
     :user_name          => 'khaoswebmail',
     :password           => ENV['INFO_MAIL_PASS'] # for security reasons you can use a environment variable too. (ENV['INFO_MAIL_PASS'])
    }
    ActionMailer::Base.delivery_method = :smtp
  end
rescue
  nil
end
