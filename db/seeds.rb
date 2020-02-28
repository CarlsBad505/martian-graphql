bill = User.create!(
  email: 'bill.mckinnon@gmail.com',
  first_name: 'bill',
  last_name: 'mckinnon'
)

emily = User.create!(
  email: 'emily.steadfast@gmail.com',
  first_name: 'emily',
  last_name: 'steadfast'
)

Item.create!(
  [
    {
      title: 'Martian Chronicles',
      description: 'Cult book by Ray Bradbury',
      user: bill,
      image_url: 'https://upload.wikimedia.org/wikipedia/en/4/45/The-Martian-Chronicles.jpg'
    },
    {
      title: 'The Martian',
      description: 'Novel by Andy Weir about an astronaut stranded on Mars trying to survive',
      user: bill,
      image_url: 'https://upload.wikimedia.org/wikipedia/en/c/c3/The_Martian_2014.jpg'
    },
    {
      title: 'Doom',
      description: "A group of Marines is sent to the red planet via an ancient " \
                   "Martian portal called the Ark to deal with an outbreak of a mutagenic virus",
      user: emily,
      image_url: 'https://upload.wikimedia.org/wikipedia/en/5/57/Doom_cover_art.jpg'
    },
    {
      title: 'Mars Attacks!',
      description: 'Earth is invaded by Martians with unbeatable weapons and a cruel sense of humor',
      user: emily,
      image_url: 'https://upload.wikimedia.org/wikipedia/en/b/bd/Mars_attacks_ver1.jpg'
    }
  ]
)

puts "+"*50
puts "#{User.all.count} users created"
puts "#{Item.all.count} items created"
puts "Seeding Finished"
