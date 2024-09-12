# app/mailers/user_mailer.rb
class UserMailer < Devise::Mailer
    default template_path: 'devise/mailer' # ensures that Devise uses your custom mailer views
  
    # You can add custom methods here
  end
  