class Message < ActiveRecord::Base
  after_create :send_sms

  validates :number, :text, uniqueness: true, presence: true
  # validate :send_sms -> egg

  def send_sms
    unless ENV['RACK_ENV'] != 'test'
      # nice octopush integration
      client = Octopush::Client.new

      sms = Octopush::SMS.new
      sms.sms_text = self.text
      sms.sms_recipients = recipient_number self.number
      sms.sms_type = 'FR'

      client.send_sms sms
    end
  end

  def recipient_number number
    return nil unless number.class == Fixnum
    '+' << number.to_s
  end

end
