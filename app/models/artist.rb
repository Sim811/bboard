class Artist < ApplicationRecord
  belongs_to :bboard
  has_many :songs , through: :bboards
end
