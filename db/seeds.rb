User.create!([
  {name: "sujan dey", username: "sujan_d", email: "sujandey.dey@gmail.com", password: 123456, password_confirmation: 123456},
  {name: "Palash Bera", username: "pb123", email: "pbera@kreeti.com", password: 123456, password_confirmation: 123456}
])
Location.create!([
  {latitude: 8737310.0, longitude: 1959690.0, zoom: 6.92812, user_id: 1},
  {latitude: 9835100.0, longitude: 2578000.0, zoom: 6.92812, user_id: 1},
  {latitude: 8594960.0, longitude: 3312460.0, zoom: 4.79762, user_id: 2},
  {latitude: 8110900.0, longitude: 2141700.0, zoom: 4.79762, user_id: 2},
  {latitude: 9011010.0, longitude: 3086830.0, zoom: 4.0, user_id: 2},
  {latitude: 8649000.0, longitude: 1452920.0, zoom: 4.0, user_id: 2}
])
