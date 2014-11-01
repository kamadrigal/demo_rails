json.array!(@pelitos) do |pelito|
  json.extract! pelito, :id, :forma, :fecha, :grosor
  json.url pelito_url(pelito, format: :json)
end
