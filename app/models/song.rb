class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :bboard, optional: true
end
