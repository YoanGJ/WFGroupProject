class ContactPost < ApplicationRecord
    
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum: 50 }
    validates :phone, presence: true, length: { maximum: 10 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
    validates :subject, presence: true, length: { maximum: 30 }
    validates :message, presence: true, length: { maximum: 500 }
    
end
