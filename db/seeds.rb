Customer.destroy_all
User.destroy_all
Marker.destroy_all
Category.destroy_all

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
 
Customer.create(id: 1, name: 'mexicana', phone: '43997483722', expire_at: '2021-12-12', sex: 1, cpf: '08404417970', status: true, user_id: 1, code: 1231231231)
Customer.create(id: 2, name: 'italiana', phone: '43997483722', expire_at: '2021-10-12', sex: 2, cpf: '08404417970', status: false, user_id: 1, code: 12132321)
Customer.create(id: 3, name: 'japonesa', phone: '43997483722', expire_at: '2021-02-12', sex: 1, cpf: '08404417970', status: true, user_id: 1, code: 43443434)
Customer.create(id: 4, name: 'vegana', phone: '43997483722', expire_at: '2021-11-11', sex: 2, cpf: '08404417970', status: false, user_id: 1, code: 121212)
Customer.create(id: 5, name: 'peruana', phone: '43997483722', expire_at: '2021-12-11', sex: 1, cpf: '08404417970', status: true, user_id: 1, code: 33434345)

puts 'Criando Categorias'

 Category.create(id: 1, name: 'Adaptação para pessoas especiais')
 Category.create(id: 2, name: 'Oficina')
 Category.create(id: 3, name: 'Regulagem')


puts 'Criando Coordenadas'
Marker.create(id: 1, title: 'Centralcar Multimarcas', description: 'Adaptação Veicular para Pessoas Especiais', category_id: 1, phone: '4333543005', latitude: -23.30589212498393, longitude: -51.17681757332609)
Marker.create(id: 2, title: 'Hangar', description: 'Auto Mecânica', category_id: 2, phone: '4333543005', latitude: -23.30576660389023, longitude: -51.17692962501349)
Marker.create(id: 3, title: 'Mecânica Asa', description: 'Oficina Mecanica', category_id: 2, phone: '4333543005', latitude: -23.30568583154993, longitude: -51.17692963049188)
Marker.create(id: 4, title: 'Adilcar Auto Mecânica', description: 'Mecânica para carros', category_id: 2, phone: '4333543005', latitude: -23.301770681753258, longitude: -51.15526951562162)
Marker.create(id: 5, title: 'Londrina Auto Center', description: 'Oficina mecânica', category_id: 2, phone: '4333543005', latitude: -23.315310560852506, longitude: -51.15250544111551)
Marker.create(id: 6, title: 'Auto Mecânica Almeida', description: 'Oficina mecânica', category_id: 2, phone: '4333214772', latitude: -23.305390738618577, longitude: -51.16229222332431 )
Marker.create(id: 7, title: 'Multimarcas Auto Center Mecânica em Geral', description: 'Oficina mecânica', category_id: 2, phone: '4333241931', latitude: -23.31008315987942, longitude: -51.15531397056331)
Marker.create(id: 8, title: 'Rodauto Auto Mecânica', description: 'Regulagem automotiva', category_id: 3, phone: '4333290399', latitude: -23.298677317467575, longitude: -51.1626996822199)
Marker.create(id: 9, title: 'Mecânica Lisboa', description: 'Oficina mecânica', category_id: 2, phone: '4333234665', latitude: -23.326217099803745, longitude: -51.15618871780231)
Marker.create(id: 10, title: 'CLINIMOTORS', description: 'Oficina Mecânica de carros e motos', category_id: 2, phone: '4330286100', latitude: -23.305074523764166, longitude: -51.163954086516675)
Marker.create(id: 11, title: 'Espaço Ar Serv Automotivos', description: 'Mecânica para carros', category_id: 2, phone: '4330252444', latitude: -23.30357728602906, longitude: -51.16532261780231)

