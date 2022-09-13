class User < ActiveRecord::Base
    has_many :ratings
    has_many :comments
    has_many :records, through: :ratings
    has_many :records, through: :comments
end