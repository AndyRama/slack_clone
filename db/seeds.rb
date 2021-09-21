Message.destroy_all
Chatroom.destroy_all
User.destroy_all

andy = User.create(email: "andy@gmail.com", password: "488F9MZ)*9QvvP7V26U?3b}vm{j{we7j", nickname: "AndyRamaroson")
recruteur = User.create(email: "recruteur@gmail.com", password: "?d8T97As349*8Cgpj&i8g3cCCs6;Xa", nickname: "Recruteur")

general = Chatroom.create(name: "Tech")

Message.create(chatroom: general, user: andy, content: "Hello all")
Message.create(chatroom: general, user: recruteur, content: "Hello andy")
Message.create(chatroom: general, user: andy, content: "Did you see a new RPI4 8 go!")
Message.create(chatroom: general, user: recruteur, content: "Amazing!")

Emploie = Chatroom.create(name: "work feedback")

Message.create(chatroom: Emploie, user: andy, content: "Bonjour vous avez etudié ma candidature")
Message.create(chatroom: Emploie, user: recruteur, content: "oui elle est tres interessante, on pourrait finaliser entretiens")
Message.create(chatroom: Emploie, user: andy, content: "je suis disponible le jeudi 18 mars 2021")
Message.create(chatroom: Emploie, user: recruteur, content: "14 H cela vous conviendrait")
Message.create(chatroom: Emploie, user: andy, content: "jeudi 18 mars 2021 14H confirmer")

