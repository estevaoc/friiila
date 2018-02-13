puts("Creating users")

users_attributes = [
{user_name: "Estevao", email: "estevaoc@hotmail.com", role: "admin",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518019755/friiila/estevao.jpg"},
{user_name: "Mateus", email: "mateuspa@gmail.com", role: "manager",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518019755/friiila/mateus.jpg"},
{user_name: "Renata", email: "asadebarata@gmail.com", role: "user",password:"splift", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518019755/friiila/renata.jpg"},
{user_name: "Joao Pedro", email: "joaopedro@hotmail.com", role: "admin",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518551973/joao_pedro_fvp2me.jpg"},
{user_name: "Rafael", email: "rafael@gmail.com", role: "manager",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518551973/rafael_ay5wes.jpg"},
{user_name: "Junior", email: "junior@gmail.com", role: "user",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518551975/junior_jigjsi.jpg"},
{user_name: "Flavia", email: "flavia@hotmail.com", role: "admin",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518552324/flavia_w9bnyq.jpg"},
{user_name: "Salete", email: "salete@gmail.com", role: "manager",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518552324/salete_emjp7p.jpg"},
{user_name: "Renato", email: "renato@gmail.com", role: "user",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518551972/renato_krvalg.jpg"},
{user_name: "Flavio", email: "flavio@hotmail.com", role: "admin",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518551972/flavio_hrxpex.jpg"},
{user_name: "Daniel", email: "daniel@gmail.com", role: "manager",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518553044/daniel1_kgissu.png"},
{user_name: "Mariana", email: "mariana@gmail.com", role: "user",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518553042/mariana_bzra58.jpg"},
{user_name: "Fernando", email: "fernando@hotmail.com", role: "admin",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518553042/fernando_ppxolf.jpg"},
{user_name: "Pedro", email: "pedro@gmail.com", role: "manager",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518553042/pedro_qkvnql.jpg"},
{user_name: "Andre", email: "andre@gmail.com", role: "user",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518553041/andre_wlrhys.jpg"},
{user_name: "Tulio", email: "tulio@hotmail.com", role: "admin",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518553043/tulio_clczia.png"},
{user_name: "Bia", email: "bia@gmail.com", role: "manager",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518552324/bia_vcx2e1.jpg"},
{user_name: "Leonor", email: "leonor@gmail.com", role: "user",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518552324/leonor_qtnads.jpg"},
{user_name: "Roberto", email: "roberto@hotmail.com", role: "admin",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518551973/roberto_eennwe.png"},
{user_name: "Lara", email: "lara@gmail.com", role: "manager",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518552324/lara_mk3ev1.jpg"},
{user_name: "Ian", email: "ian@gmail.com", role: "user",password:"123456", remote_photo_url:"http://res.cloudinary.com/doui6owsy/image/upload/v1518553043/ian_mzknew.jpg"}
]

User.create!(users_attributes)

puts("Users created")
puts("Creating places")

places_attributes = [
{place_name: "Jack Rock Bar", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/jack.jpg", address: "Sion, Belo Horizonte", user_id: "1"},
{place_name: "Paco Pigalle", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/pigalle.jpg", address: "Alto Barroca, Belo Horizonte", user_id: "3"},
{place_name: "Lord Pub", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864403/friiila/lord.jpg", address: "Gutierrez, Belo Horizonte", user_id: "1"},
{place_name: "A Obra", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864403/friiila/obra.jpg", address: "Pampulha, Belo Horizonte", user_id: "3"},
{place_name: "Circus Rock Bar", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/circus.jpg", address: "Uniao, Belo Horizonte", user_id: "1"},
{place_name: "Chalezinho", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/chalezinho.jpg", address: "Barro Preto, Belo Horizonte", user_id: "2"},
{place_name: "Woods", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/woods.jpg", address: "Barreiro, Belo Horizonte", user_id: "2"},
{place_name: "Gilboa", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864403/friiila/gilboa.jpg", address: "Bom Jesus, Belo Horizonte", user_id: "2"}
]

Place.create!(places_attributes)

puts("Places created")
puts("Creating items")

items_attributes = [
{product: "Coca-Cola", price: "5", place_id: "1"},
{product: "Hamubrguer", price: "15", place_id: "1"},
{product: "Batata Frita", price: "10", place_id: "1"},
{product: "Long neck", price: "7", place_id: "1"},
{product: "Cerveja artesanal", price: "15", place_id: "1"},
{product: "Vodka dose", price: "20", place_id: "1"},
{product: "Wisky dose", price: "20", place_id: "1"},
{product: "Energetico", price: "15", place_id: "1"},
{product: "Margarita", price: "30", place_id: "1"},
{product: "Pina Colada", price: "32", place_id: "1"},
{product: "Caipirinha", price: "25", place_id: "1"},
{product: "Sex on the beach", price: "29", place_id: "1"},
]

Item.create!(items_attributes)

puts("Items created")
puts("Creating bills")

bills_attributes = [
{paid: "true", user_id: "3", place_id: "1"},
{paid: "true", user_id: "3", place_id: "1"},
{paid: "true", user_id: "3", place_id: "3"},
{paid: "true", user_id: "3", place_id: "4"},
{paid: "true", user_id: "3", place_id: "4"},
{paid: "true", user_id: "3", place_id: "1"},
{paid: "true", user_id: "3", place_id: "1"},
{paid: "true", user_id: "3", place_id: "4"},
{paid: "true", user_id: "3", place_id: "1"},
{paid: "true", user_id: "3", place_id: "1"},
{paid: "false", user_id: "2", place_id: "1"},
{paid: "false", user_id: "3", place_id: "1"},
{paid: "false", user_id: "4", place_id: "1"},
{paid: "false", user_id: "5", place_id: "1"},
{paid: "false", user_id: "6", place_id: "1"},
{paid: "false", user_id: "7", place_id: "1"},
{paid: "false", user_id: "8", place_id: "1"},
{paid: "false", user_id: "9", place_id: "1"},
{paid: "false", user_id: "10", place_id: "1"},
{paid: "false", user_id: "11", place_id: "1"},
{paid: "false", user_id: "12", place_id: "1"},
{paid: "false", user_id: "13", place_id: "1"},
{paid: "false", user_id: "14", place_id: "1"},
{paid: "false", user_id: "15", place_id: "1"},
{paid: "false", user_id: "16", place_id: "1"},
{paid: "false", user_id: "17", place_id: "1"},
{paid: "false", user_id: "18", place_id: "1"},
{paid: "false", user_id: "19", place_id: "1"},
{paid: "false", user_id: "20", place_id: "1"},
{paid: "false", user_id: "21", place_id: "1"}
]

Bill.create!(bills_attributes)

puts("Bills created")
puts("Creating orders")

orders_attributes = [
{amount: "1", item_id: "5", bill_id: "1"},
{amount: "3", item_id: "4", bill_id: "3"},
{amount: "2", item_id: "6", bill_id: "3"},
{amount: "1", item_id: "10", bill_id: "6"},
{amount: "1", item_id: "1", bill_id: "10"},
{amount: "1", item_id: "2", bill_id: "10"},
{amount: "2", item_id: "3", bill_id: "10"},
{amount: "3", item_id: "7", bill_id: "12"},
{amount: "4", item_id: "8", bill_id: "12"},
{amount: "2", item_id: "9", bill_id: "12"},
{amount: "1", item_id: "4", bill_id: "11"},
{amount: "1", item_id: "5", bill_id: "11"},
{amount: "1", item_id: "9", bill_id: "13"},
{amount: "2", item_id: "5", bill_id: "14"},
{amount: "1", item_id: "6", bill_id: "16"},
{amount: "6", item_id: "7", bill_id: "16"},
{amount: "2", item_id: "2", bill_id: "16"},
{amount: "1", item_id: "3", bill_id: "16"},
{amount: "1", item_id: "1", bill_id: "16"},
{amount: "1", item_id: "12", bill_id: "16"},
{amount: "1", item_id: "11", bill_id: "16"},
{amount: "3", item_id: "12", bill_id: "16"},
{amount: "2", item_id: "10", bill_id: "16"},
{amount: "1", item_id: "9", bill_id: "16"},
{amount: "4", item_id: "1", bill_id: "18"},
{amount: "1", item_id: "2", bill_id: "18"},
{amount: "1", item_id: "3", bill_id: "20"},
{amount: "1", item_id: "4", bill_id: "21"},
{amount: "1", item_id: "5", bill_id: "21"},
{amount: "1", item_id: "6", bill_id: "21"}
]

Order.create!(orders_attributes)

puts("Orders created")
