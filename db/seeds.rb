require 'faker'

puts "Cleaning database..."
Gear.destroy_all
User.destroy_all

User.create!(email: "a@a.a", password: "123456")
User.create!(email: "b@b.b", password: "123456")
User.create!(email: "c@c.c", password: "123456")

mountain_items = [
  { name: "Mountain bike",
    description: "Perfect bike for casual mountain adventures. Very light and confortable. For your safety, I make some maintenance on the bike every month. 
    Call me or message me for more informations !",
    image_url: "https://images.immediate.co.uk/production/volatile/sites/21/2019/03/vitus-nucleus-29vr-01-1546950934590-28yoc1fsocuj-1549026859608-367lfw54uv0s-3dff6bf-e1564576707898.jpg?quality=90&resize=620,413",
    price: 30.0
  },
  { name: "Walking sticks",
    description: "Walking Sticks from Komperdell. Great quality (penetrates all surfaces except for rock), adjustable size, very comfy grips. Can be use in any season of the year",
    image_url: "https://instantcomptant.ca/wp-content/uploads/2021/01/6DA885C8-C871-CB4F-B7E3-A531DA2F9FE1_1.jpg",
    price: 10.0
  },
  { name: "Mountain biking helmet",
    description: "Renting my awesome Smith' biking helmet for biking lovers. Very solid, high quality, black matte color.",
    image_url: "https://images.singletracks.com/blog/wp-content/uploads/2020/07/SmithMainline-9830.jpg",
    price: 30.0
  },
  { name: "Hiking Backpack",
    description: "Hi, I have this awesome backpack that I put in rent, I don't want to sell it so !!! It's from the brand Yeti and is in excellent quality ! Keeps everything you have in a safe place and away from humidity ! how cool is that !",
    image_url: "https://www.yeti.com/dw/image/v2/BBRN_PRD/on/demandware.static/-/Sites-masterCatalog_Yeti/default/dwf9f8f607/images/pdp-Panga/Panga%20Backpack%2028/180222-Panga-Backpack-Studio-Website-Assets--Panga-Front-Quarter-Facing-Hero-Secondary-1680x1024.jpg?sw=1152&sfrm=jpg&q=100",
    price: 15.0
  },
  { name: "Kids moutain bike",
    description: "My son does not use his bike as much as he used to, but he does not want to sell it, so why not putting in for rent ? It's perfect for a ten-year-old child (boy or girl!). I can add a helmet for free if needed. Just be careful please !",
    image_url: "https://rascalrides.com/wp-content/uploads/trailcraft-20-inch.png",
    price: 20.0
  },
  { name: "Climbing harness",
    description: "Great harness for advanced mountain climber, works perfectly fine, no usury so you're safe ! S size",
    image_url: "https://www.mountainsports.com/product_images/022454GR.jpg",
    price: 10.0
  },
  { name: "Climbing shoes",
    description: "Size 8, golden tan color, can also put some socks if needed",
    image_url: "https://www.mountainsports.com/product_images/096116.jpg",
    price: 20.0
  },
  { name: "Cycling short",
    description: "Perfect to protect your private parts when biking",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/71j--bvnN3L._AC_SL1168_.jpg",
    price: 20.0
  },
  { name: "Biking pads",
    description: "Pads for knee, elbow and hand",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/616luQxCh2L._AC_SL1003_.jpg",
    price: 10.0
  },
  { name: "Hiking rope",
    description: "great quality rope to keep you safe",
    image_url: "https://images-na.ssl-images-amazon.com/images/I/81x1cleRqcL._AC_SL1500_.jpg",
    price: 30.0
  },
  { name: "Walking Shoes",
    description: "I know hiking can get your shoes dirty ! that's why I put in rent those shoes so you don't have to take care of the cleaning ! You use them, you bring them back and you can go home ! no cleaning for you ! Isn't that awesome ?",
    image_url: "https://img.cdn.mountainwarehouse.com/product/031463/031463_pet_outdoor_womens_walking_shoe_ii_ftw_ss20_1.jpg?w=500",
    price: 10.0
  },
  { name: "Complete hiking set",
    description: "Complete hiking set for 2 people, perfect for casual hiking with your best friend or your lover !! ",
    image_url: "https://www.freshoffthegrid.com/wp-content/uploads/Backpacking-Gear.jpg",
    price: 80.0
  }
]

mountain_items.each do |item|
  Gear.create!(
    name: item[:name],
    description: item[:description],
    price: item[:price],
    img_url: item[:image_url],
    category: "mountain",
    user: User.all.sample
  )
end

User.create!(email: "demo@demo.demo", password: "123456")

# pairs = {
  #   "biking" => ["Moutain Bike", "Helmet", "Twin Bike", "Pedals With clips", "Compressor", "Trail Building Tools"],
  #   "hiking" => ["Hiking Watch", "Ropes", "Crampons", "Backpack", "Camel Back"],
  #   "scuba" => ["Tank", "Fins", "Boat", "Mask", "Spear Gun", "Dry Suit"],
  #   "skiing" => ["Skis", "Helmet", "Poles", "Goggles", "Ski Boots"]
  # }
  
  # puts "Creating Gears..."
  
  # User.all.each do |user|
  #   pairs.each do |category, name_array|
  #     name_array.each do |name|
  #       Gear.create!(
  #         name: name,
  #         description: "Rent my #{category} #{name}, It rocks! :)",
  #         price: Faker::Number.decimal(l_digits: 2),
  #         category: category,
  #         user: user
  #       )
  #     end
  #   end
  # end
