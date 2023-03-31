require "twilio-ruby"

# Create an instance of the Twilio Client and authenticate with your API key
twilio_client = Twilio::REST::Client.new(ENV.fetch("TWILIO_ACCOUNT_SID"), ENV.fetch("TWILIO_AUTH_TOKEN"))

# Craft your SMS as a Hash literal with three keys
sms_info = {
  :from => ENV.fetch("TWILIO_SENDING_NUMBER"),
  :to => "+17735564692", # Put your own phone number here if you want to see it in action
  :body => "Hello from twilio-ruby!"
}

# Send your SMS!
twilio_client.api.account.messages.create(**sms_info)
