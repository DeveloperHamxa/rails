class User < ApplicationRecord
    has_secure_password

    validates :name, presence: true, length: { minimum: 3, maximum: 25 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

    has_many :articles, dependent: :delete_all
end
