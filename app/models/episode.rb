class Episode < ApplicationRecord
  has_many :guests, through: :guest_episodes
end
