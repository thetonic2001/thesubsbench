json.array!(@tv_channels) do |tv_channel|
  json.extract! tv_channel, :id, :name, :bt, :freeview, :sky, :virgin, :youview, :rights_held, :weblink, :hd
  json.url tv_channel_url(tv_channel, format: :json)
end
