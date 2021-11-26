json.array! @customers do |customer|
    json.id customer.id
    json.name customer.name
    json.phone customer.phone
    json.expire_at customer.expire_at
    json.sex customer.sex
    json.cpf customer.cpf
    json.status customer.status
end