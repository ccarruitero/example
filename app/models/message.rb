class Message < ActiveRecord::Base
  after_create :send_sms

  def send_sms
    # nice octopush integration
  end

end
