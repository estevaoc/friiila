puts("Creating users")

users_attributes = [
{user_name: "Estevao", email: "estevaoc@hotmail.com", role: "admin",password:"123456", photo:"http://res.cloudinary.com/doui6owsy/image/upload/v1518019755/friiila/estevao.jpg"},
{user_name: "Mateus", email: "mateuspa@gmail.com", role: "manager",password:"123456", photo:"http://res.cloudinary.com/doui6owsy/image/upload/v1518019755/friiila/mateus.jpg"},
{user_name: "Renata", email: "asadebarata@gmail.com", role: "user",password:"splift", photo:"http://res.cloudinary.com/doui6owsy/image/upload/v1518019755/friiila/renata.jpg"}
]

User.create!(users_attributes)

puts("Users created")
puts("Creating places")

places_attributes = [
{place_name: "Jack Rock Bar", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/jack.jpg", address: "Sion, Belo Horizonte", user_id: "1"},
{place_name: "Paco Pigalle", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/pigalle.jpg", address: "Alto Barroca, Belo Horizonte", user_id: "1"},
{place_name: "Lord Pub", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864403/friiila/lord.jpg", address: "Gutierrez, Belo Horizonte", user_id: "1"},
{place_name: "A Obra", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864403/friiila/obra.jpg", address: "Pampulha, Belo Horizonte", user_id: "1"},
{place_name: "Circus Rock Bar", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/circus.jpg", address: "Uniao, Belo Horizonte", user_id: "1"},
{place_name: "Chalezinho", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/chalezinho.jpg", address: "Barro Preto, Belo Horizonte", user_id: "1"},
{place_name: "Woods", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864404/friiila/woods.jpg", address: "Barreiro, Belo Horizonte", user_id: "1"},
{place_name: "Gilboa", remote_photo_url: "http://res.cloudinary.com/doui6owsy/image/upload/v1517864403/friiila/gilboa.jpg", address: "Bom Jesus, Belo Horizonte", user_id: "1"}
]

Place.create!(places_attributes)

puts("Places created")
puts("Creating items")

items_attributes = [
{product: "Coca-Cola", price: "5", place_id: "1"},
{product: "Hamubrguer", price: "15", place_id: "1"},
{product: "Batata Frita", price: "10", place_id: "1"}
]

Item.create!(items_attributes)

puts("Items created")
