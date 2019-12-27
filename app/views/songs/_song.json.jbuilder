json.extract! song, :id, :name, :genre, :author_id, :created_at, :updated_at
json.url song_url(song, format: :json)
