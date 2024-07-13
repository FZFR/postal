class MailServer < ApplicationRecord
    belongs_to :organization
  
    validates :send_limit_hourly, :send_limit_daily, :send_limit_monthly,
              :message_retention_days, :raw_message_retention_days,
              :raw_message_retention_size, :outbound_spam_threshold,
              numericality: { greater_than_or_equal_to: 0 }
  
    validates :privacy_mode, inclusion: { in: [true, false] }
    validates :allow_sender_header, inclusion: { in: [true, false] }
  end