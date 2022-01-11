ActionMailer::Base.smtp_settings = {
  user_name:      "messakaran011@gmail.com",
  password:       "cfycrdfvpavfaenv",
  address:       'smtp.gmail.com',
  port:          587,
  domain: 'gmail.com',
  authentication: 'plain',
  enable_starttls_auto: true,
  openssl_verify_mode: "none",
}


