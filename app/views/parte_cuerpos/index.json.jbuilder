json.array!(@parte_cuerpos) do |parte_cuerpo|
  json.extract! parte_cuerpo, :id, :nombre
  json.url parte_cuerpo_url(parte_cuerpo, format: :json)
end
