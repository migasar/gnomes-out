require 'faker'

CATEGORY = %w[Authentique Zombie Bdsm Familial Potache Zen Groupé Mignon Connu]
COLOR = %w[Rouge Vert Blanc Jaune Orange Bleu Noir]
MOOD = %w[Joyeux Triste Colérique Détendu]
Booking.destroy_all
User.destroy_all

User.create!(email: 'user1@gnomes.fr', password: 'user01', first_name: 'User1', last_name: 'One', address: '75, rue Nationale 75006 Paris', phone_number:'01.01.01.01.01')
User.create!(email: 'user2@gnomes.fr', password: 'user02', first_name: 'User2', last_name: 'Two', address: '82, Place de la Madeleine 75012 Paris', phone_number:'01.01.01.01.02')
User.create!(email: 'user3@gnomes.fr', password: 'user03', first_name: 'User3', last_name: 'Three', address: '55, rue Nationale 75004 Paris', phone_number:'01.01.01.01.03')
User.create!(email: 'user4@gnomes.fr', password: 'user04', first_name: 'User4', last_name: 'Three', address: '59, Square de la Couronne 75002 Paris', phone_number:'01.01.01.01.04')

puts 'Creating a lot of User'
15.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alphanumeric(number: 10),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
puts 'Users Created!'

Gnome.destroy_all

Gnome.create!(address: "33 Av. du Général de Gaulle, La Rochelle", name: 'Plouf', size: 40, weight: 650, state: 'Très bon état', category: 'Potache', gender: 'homme', mood: 'Détendu', outsider: false, traveler:false, available: true, price: 15.5, color:'Rouge', photo:'https://cdn.shopify.com/s/files/1/0562/9575/1878/products/H39e3c0c1d25442c1803ec0aa26eeabaaR_5b950993-1784-4987-a1db-7b836738e566_650x.jpg?v=1618995391', user:User.all.sample)
Gnome.create!(address: "28 Rue de Florence, Bruxelles", name: 'Grumpy', size: 35, weight: 550, state: 'bon état', category: 'Potache', gender: 'homme', mood: 'Colérique', outsider: false, traveler:false, available: true, price: 20.5, color:'Vert', photo:'https://cdn.mycrazystuff.com/16632-large_default/xflippy-le-nain-de-jardin-malpoli.jpg.pagespeed.ic.O04nU4NmqY.webp', user: User.all.sample)

Gnome.create!(address: "8 Rue Fabien Calloud, Annecy", name: 'Gnomebi', size: 42, weight: 850, state: 'bon état', category: 'Zombie', gender: 'homme', mood: 'Colérique', outsider: false, traveler:true, available: true, price: 16, color:'Bleu', photo:'https://www.jouerauboulot.fr/36520-large_default/nain-de-jardin-zombie-parfait-pour-halloween-285-x-10-x-115-cm.jpg', user:User.all.sample)
Gnome.create!(address: "10 Rue de Port-Mahon, Paris", name: 'Miambi', size: 36, weight: 420, state: 'bon état', category: 'Zombie', gender: 'homme', mood: 'Colérique', outsider: true, traveler:true, available: true, price: 53, color:'Jaune', photo:'https://www.cdiscount.com/pdt2/3/7/4/4/550x550/auc9347232325374/rw/nain-de-jardin-en-resine-nain-de-jardin-zombie-q.jpg', user:User.all.sample)

Gnome.create!(address: "1 rue principale, Pihem", name: 'kwuir', size: 35, weight: 550, state: 'bon état', category: 'Bdsm', gender: 'homme', mood: 'Détendu', outsider: false, traveler:false, available: true, price: 42, color:'Rouge', photo:'https://m.media-amazon.com/images/I/619kshjp6VL._AC_SL1000_.jpg', user:User.all.sample)
Gnome.create!(address: "112 rue Oberkamph, Paris", name: 'Mustach', size: 62, weight: 450, state: 'bon état', category: 'Bdsm', gender: 'homme', mood: 'Détendu', outsider: false, traveler:false, available: true, price: 23, color:'Noir', photo:'https://i.etsystatic.com/5644347/r/il/119c1d/179046563/il_570xN.179046563.jpg', user:User.all.sample)

Gnome.create!(address: "12 Rue la Bruyère, Saint-Brieuc", name: 'Nyappi', size: 48, weight: 480, state: 'bon état', category: 'Authentique', gender: 'homme', mood: 'Joyeux', outsider: false, traveler:false, available: true, price: 152, color:'Bleu', photo:'https://www.primrose.fr/images/DF2326.jpg', user:User.all.sample)
Gnome.create!(address: "2 avenue Fritzlang, Bois-d'arcy", name: 'Yupi', size: 35, weight: 550, state: 'bon état', category: 'Authentique', gender: 'homme', mood: 'Joyeux', outsider: false, traveler:false, available: true, price: 63, color:'Bleu', photo:'https://www.mr-bricolage.be/77431/nain-de-jardin-bleu-20-x-19-x-515-cm.jpg', user:User.all.sample)

Gnome.create!(address: "9 boulevard voltaire, Issy-les-moulineaux", name: 'Koupin & Purlavi', size: 75, weight: 1320, state:'bon état', category: 'Groupé', gender: 'homme', mood:'Joyeux', outsider: false, traveler:false, available: true, price: 152, color:'Bleu', photo:'https://m.media-amazon.com/images/I/81emNi94qYL._AC_SX425_.jpg', user:User.all.sample)
Gnome.create!(address: "16 villa Gaudelet, Paris", name: 'Amy & Detoujur', size: 68, weight: 968, state:'bon état', category: 'Groupé', gender: 'homme', mood: 'Joyeux', outsider: false, traveler:false, available: true, price: 152, color:'Bleu', photo:'https://content.pearl.fr/media/cache/default/article_large_high_nocrop/shared/images/articles/N/NX1/nain-de-jardin-duo-de-nains-avec-lapin-et-souche-d-arbre-ref_NX1262_1.jpg', user:User.all.sample)

puts 'Creating a lot of Gnomes' 

20.times do
  gnome = Gnome.create!(
    name: Faker::GreekPhilosophers.name,
    size: Faker::Number.decimal(l_digits: 2),
    weight: Faker::Number.decimal(l_digits: 2),
    state: ['Bon état', 'Très bon état', 'Comme neuf', 'Etat moyen'].sample,
    category: CATEGORY.sample,
    gender: ['Homme', 'Femme'].sample,
    mood: MOOD.sample,
    outsider: Faker::Boolean.boolean,
    traveler: Faker::Boolean.boolean,
    available: Faker::Boolean.boolean,
    price: Faker::Number.decimal(l_digits: 2),
    color: COLOR.sample,
    photo: 'https://source.unsplash.com/800x600/?gnome',
    user: User.all.sample,

  )
end
puts 'Gnomes Created!'
