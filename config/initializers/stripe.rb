if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_eEaxaCFPNETEn4AZSYLvod5p',
    secret_key: 'sk_test_RLH8hjAEyaGepTa2HxNsN3Wl'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
 
