json.array! @markers do |marker|
    json.id marker.id
    json.title marker.title
    json.description marker.description
    json.phone marker.phone
    json.latitude marker.latitude
    json.longitude marker.longitude
end