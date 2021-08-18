# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

User.create(email: 'user1@gnomes.fr', password: 'user01', first_name: 'User1', last_name: 'One', address: '1, rue villa godelet 75011 Paris', phone_number:'01.01.01.01.01')
User.create(email: 'user2@gnomes.fr', password: 'user02', first_name: 'User2', last_name: 'Two', address: '2, rue villa godelet 75011 Paris', phone_number:'01.01.01.01.02')
User.create(email: 'user3@gnomes.fr', password: 'user03', first_name: 'User3', last_name: 'Three', address: '3, rue villa godelet 75011 Paris', phone_number:'01.01.01.01.03')
User.create(email: 'user4@gnomes.fr', password: 'user04', first_name: 'User4', last_name: 'Three', address: '4, rue villa godelet 75011 Paris', phone_number:'01.01.01.01.04')

Gnome.destroy_all

Gnome.create(name: 'Plouf', size: 40, weight: 650, state: 'Très bon état', category: 'potache', gender: 'homme', mood: 'détendu', outsider: false, traveler:false, available: true, price: 15.5, color:'rouge', photo:'https://cdn.shopify.com/s/files/1/0562/9575/1878/products/H39e3c0c1d25442c1803ec0aa26eeabaaR_5b950993-1784-4987-a1db-7b836738e566_650x.jpg?v=1618995391', user:User.all.sample)
Gnome.create(name: 'Grumpy', size: 35, weight: 550, state: 'bon état', category: 'potache', gender: 'homme', mood: 'colérique', outsider: false, traveler:false, available: true, price: 20.5, color:'vert', photo:'https://cdn.mycrazystuff.com/16632-large_default/xflippy-le-nain-de-jardin-malpoli.jpg.pagespeed.ic.O04nU4NmqY.webp', user: User.all.sample)

Gnome.create(name: 'Gnomebi', size: 42, weight: 850, state: 'bon état', category: 'zombie', gender: 'homme', mood: 'colérique', outsider: false, traveler:true, available: true, price: 16, color:'bleu', photo:'https://www.jouerauboulot.fr/36520-large_default/nain-de-jardin-zombie-parfait-pour-halloween-285-x-10-x-115-cm.jpg', user:User.all.sample)
Gnome.create(name: 'Miambi', size: 36, weight: 420, state: 'bon état', category: 'zombie', gender: 'homme', mood: 'colérique', outsider: true, traveler:true, available: true, price: 53, color:'jaune', photo:'https://www.cdiscount.com/pdt2/3/7/4/4/550x550/auc9347232325374/rw/nain-de-jardin-en-resine-nain-de-jardin-zombie-q.jpg', user:User.all.sample)

Gnome.create(name: 'kwuir', size: 35, weight: 550, state: 'bon état', category: 'bdsm', gender: 'homme', mood: 'détendu', outsider: false, traveler:false, available: true, price: 42, color:'rouge', photo:'https://m.media-amazon.com/images/I/619kshjp6VL._AC_SL1000_.jpg', user:User.all.sample)
Gnome.create(name: 'Mustach', size: 62, weight: 450, state: 'bon état', category: 'bdsm', gender: 'homme', mood: 'détendu', outsider: false, traveler:false, available: true, price: 23, color:'noir', photo:'https://i.etsystatic.com/5644347/r/il/119c1d/179046563/il_570xN.179046563.jpg', user:User.all.sample)

Gnome.create(name: 'Nyappi', size: 48, weight: 480, state: 'bon état', category: 'authentique', gender: 'homme', mood: 'joyeux', outsider: false, traveler:false, available: true, price: 152, color:'bleu', photo:'https://www.primrose.fr/images/DF2326.jpg', user:User.all.sample)
Gnome.create(name: 'Yupi', size: 35, weight: 550, state: 'bon état', category: 'authentique', gender: 'homme', mood: 'joyeux', outsider: false, traveler:false, available: true, price: 63, color:'bleu', photo:'https://www.mr-bricolage.be/77431/nain-de-jardin-bleu-20-x-19-x-515-cm.jpg', user:User.all.sample)

Gnome.create(name: 'Koupin & Purlavi', size: 75, weight: 1320, state:'bon état', category: 'groupé', gender: 'homme', mood:'joyeux', outsider: false, traveler:false, available: true, price: 152, color:'bleu', photo:'https://m.media-amazon.com/images/I/81emNi94qYL._AC_SX425_.jpg', user:User.all.sample)
Gnome.create(name: 'Amy & Detoujur', size: 68, weight: 968, state:'bon état', category: 'groupé', gender: 'homme', mood: 'joyeux', outsider: false, traveler:false, available: true, price: 152, color:'bleu', photo:'https://content.pearl.fr/media/cache/default/article_large_high_nocrop/shared/images/articles/N/NX1/nain-de-jardin-duo-de-nains-avec-lapin-et-souche-d-arbre-ref_NX1262_1.jpg', user:User.all.sample)
