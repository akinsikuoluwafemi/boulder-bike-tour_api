class Slogan < ApplicationRecord
    # validates :first_name, presence: true
    # validates :last_name, presence: true
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true
    #                     uniqueness: { case_sensitive: false },
    #                     length: { maximum: 105 },
    #                     format: { with: VALID_EMAIL_REGEX }
    # validates :content, presence: true,
    #                     length: {minimum: 10, maximum: 50},
    #                     uniqueness: true
end
