json.array!(@links) do |link|
  json.extract! link, :id, :data, :post_id
  json.url link_url(link, format: :json)
end
