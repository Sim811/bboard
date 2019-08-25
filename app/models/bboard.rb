class Bboard < ApplicationRecord
  has_many :artists, dependent: :destroy
end
