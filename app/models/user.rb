class User < ApplicationRecord
    has_many :favorites
    has_many :comments, through: :favorites

    validates :username, uniqueness: true
    validates :password, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
end
