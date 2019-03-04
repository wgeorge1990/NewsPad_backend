class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :comments, through: :favorites
    accepts_nested_attributes_for :favorites, allow_destroy: true

    validates :user_name, uniqueness: true
    validates :password, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
end
