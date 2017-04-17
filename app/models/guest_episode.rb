class GuestEpisode < ActiveRecord::Base
  belongs_to :episode
  belongs_to :guest

end
