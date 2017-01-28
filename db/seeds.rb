# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blanket.create(
  name: "Everest's turnout",
  type: "turnout",
  colour: "navy",
  trim: "light blue",
  note: "has matching neck cover",
  photo: "http://cdn3.volusion.com/hxsed.knlnq/v/vspfiles/photos/BLA1113-2T.jpg",
  status: "in use"
)

Blanket.create(
  name: "Liberty's turnout",
  type: "turnout",
  colour: "black",
  trim: "tan",
  note: "front snaps broken",
  photo: "http://images.greenhawk.com/large/Greenhawk_BLS4014_.jpg",
  status: "needs repair"
)

Blanket.create(
  name: "Mesh Back on Track",
  type: "therapeutic",
  colour: "black",
  trim: "black",
  note: "",
  photo: "http://www.bahrsaddlery.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/b/o/bot-mesh-rug.jpg",
  status: ""
)

Blanket.create(
  name: "Everest's medium stable",
  type: "stable",
  colour: "black",
  trim: "grey",
  note: "",
  photo: "http://images.greenhawk.com/large/Greenhawk_BLS4005_.jpg",
  status: "in use"
)

Blanket.create(
  name: "Bucas power cooler",
  type: "cooler",
  colour: "black",
  trim: "Black/grey",
  note: "",
  photo: "http://cdn3.volusion.com/hxsed.knlnq/v/vspfiles/photos/BLA1122-2T.jpg",
  status: ""
)

Blanket.create(
  name: "scrim",
  type: "cooler",
  colour: "navy",
  trim: "navy/white",
  note: "",
  photo: "http://www.bahrsaddlery.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/a/ramboblocknetcooler1.jpg",
  status: ""
)

Blanket.create(
  name: "show cooler",
  type: "cooler",
  colour: "black",
  trim: "black, with black/grey cord",
  note: "embroidered 'Summit Stables'",
  photo: "http://images.greenhawk.com//Large/Greenhawk_BLC0025BK.jpg",
  status: "in storage"
)

Blanket.create(
  name: "irish knit",
  type: "cooler",
  colour: "aqua",
  trim: "grey",
  note: "",
  photo: "http://images.greenhawk.com/large/Greenhawk_BLC3043XB.jpg",
  status: ""
)
