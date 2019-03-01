class User < ApplicationRecord
    has_many :favorites
    has_many :comments, through: :favorites
end
