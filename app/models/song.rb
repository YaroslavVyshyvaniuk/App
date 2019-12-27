class Song < ActiveRecord::Base
  has_one :song_info
  belongs_to :author
end
