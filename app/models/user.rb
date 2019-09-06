class User < ApplicationRecord
    has_many :subscriptions
    has_many :subreddits, through: :subscriptions
    has_one :setting

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
