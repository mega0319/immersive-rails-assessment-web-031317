class Guest < ApplicationRecord
  has_many :episodes, through: :guest_episodes
end
