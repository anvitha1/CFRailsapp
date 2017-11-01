if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_Tlq118BwQ5pB0TcroJ3UDLdB',
    secret_key: 'sk_test_UzwVe1amLlRgrWgb2JMiXYw2'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]