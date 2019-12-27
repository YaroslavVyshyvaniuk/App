json.extract! song_info, :id, :duration, :date, :song_id, :created_at, :updated_at
json.url song_info_url(song_info, format: :json)
