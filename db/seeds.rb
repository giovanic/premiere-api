Customer.destroy_all
User.destroy_all

puts 'Criando Usuários'

c = User.create(id: 1, email: 'isabella@gmail.com', password: '123456')
c.generate_authentication_token!
c.save
c = User.create(id: 2, email: 'samuel@gmail.com', password: '1234567')
c.generate_authentication_token!
c.save
c = User.create(id: 3, email: 'giovani@gmail.com', password: '1234568')
c.generate_authentication_token!
c.save

puts 'Criando Clientes'
 
Customer.create(id: 1, name: 'mexicana', phone: '43997483722', expire_at: '2021-12-12', sex: 1, cpf: '08404417970', status: true, user_id: 1)
Customer.create(id: 2, name: 'italiana', phone: '43997483722', expire_at: '2021-10-12', sex: 2, cpf: '08404417970', status: false, user_id: 1 )
Customer.create(id: 3, name: 'japonesa', phone: '43997483722', expire_at: '2021-02-12', sex: 1, cpf: '08404417970', status: true, user_id: 1 )
Customer.create(id: 4, name: 'vegana', phone: '43997483722', expire_at: '2021-11-11', sex: 2, cpf: '08404417970', status: false, user_id: 1 )
Customer.create(id: 5, name: 'peruana', phone: '43997483722', expire_at: '2021-12-11', sex: 1, cpf: '08404417970', status: true, user_id: 1 )
