Post.create(title:'Homem',    body:'Quando um homem não se encontra a si mesmo, não encontra nada.')
Post.create(title:'Ideia',    body:'Qualquer ideia que te agrade, Por isso mesmo... é tua.')
Post.create(title:'Imoral',   body:'O que é verdadeiramente imoral é ter desistido de si mesmo.')
Post.create(title:'Quem sou', body:'Curioso como não sei dizer quem sou. Quer dizer, sei-o bem, mas não posso dizer.')
Post.create(title:'Sinto',    body:'O que eu sinto eu não ajo. O que ajo não penso. O que penso não sinto.')
Post.create(title:'Nada',     body:'Eu sei que não sou nada e que talvez nunca tenha tudo.')
Post.create(title:'Voar',     body:'Não sei amar pela metade. Não sei viver de mentira. Não sei voar de pés no chão.')
Post.create(title:'Não sei',  body:'Não sei o que sinto, não sei o que quero, não sei o que penso nem o que sou.')
Post.create(title:'Inseguro', body:'Sou uma pessoa insegura, indecisa, sem rumo na vida, sem leme para me guiar.')
Post.create(title:'Monte',    body:'Sou um monte intransponível no meu próprio caminho.')
Post.create(title:'Eu',       body:'Sou sempre eu mesmo, mas com certeza não serei o mesmo pra sempre...')

FactoryGirl.create(:user, name: 'John Doe', email: 'johndoe@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:user, name: 'Roger Rabbit', email: 'roger@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:user, name: 'Jessica Rabbit', email: 'jessica@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:user, name: 'Joseph Smith', email: 'joseph@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:user, name: 'Mary Doe', email: 'marydoe@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:user, name: 'Vicky Vale', email: 'marydoe@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:user, name: 'Sarah Connor', email: 'marydoe@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:admin, name: 'admin',   email: 'admin@admin.com',
                   password: 'adminadmin')

Comment.create(text: 'Nice Post',                       post_id: 1,  user_id: 1);
Comment.create(text: 'Interesting',                     post_id: 2,  user_id: 2);
Comment.create(text: 'Good stuff',                      post_id: 3,  user_id: 3);
Comment.create(text: 'I\'d buy that',                   post_id: 4,  user_id: 4);
Comment.create(text: 'Well tought',                     post_id: 5,  user_id: 5);
Comment.create(text: 'I\'ve seen this before',          post_id: 6,  user_id: 6);
Comment.create(text: 'I think this comes from a song',  post_id: 7,  user_id: 7);
Comment.create(text: 'A song was made based on this',   post_id: 8,  user_id: 8);
Comment.create(text: 'My mom enjoys this post',         post_id: 9,  user_id: 8);
Comment.create(text: 'Very intelligent',                post_id: 10, user_id: 7);
Comment.create(text: 'Keep on Galloping',               post_id: 11, user_id: 6);
Comment.create(text: 'The Horror!',                     post_id: 1,  user_id: 5);
Comment.create(text: 'I don\'t think so...',            post_id: 2,  user_id: 4);
Comment.create(text: 'Nothing to say about this',       post_id: 3,  user_id: 3);
Comment.create(text: 'Atrocious',                       post_id: 4,  user_id: 2);
Comment.create(text: 'Ingenious',                       post_id: 5,  user_id: 1);
Comment.create(text: 'git gud',                         post_id: 6,  user_id: 1);
Comment.create(text: 'You wot m8??',                    post_id: 7,  user_id: 2);
Comment.create(text: 'Veautiful',                       post_id: 8,  user_id: 3);
Comment.create(text: 'Damn good!',                      post_id: 9,  user_id: 4);
Comment.create(text: 'Serves you well',                 post_id: 10, user_id: 5);
Comment.create(text: 'Broken in half',                  post_id: 11, user_id: 6);
Comment.create(text: 'Why you can\'t use emojis here?', post_id: 1,  user_id: 7);
Comment.create(text: 'Where do I buy this',             post_id: 2,  user_id: 8);
Comment.create(text: 'What is the title of the post?',  post_id: 3,  user_id: 8);
Comment.create(text: 'Comment',                         post_id: 4,  user_id: 7);
Comment.create(text: 'I don\'t know how to comment',    post_id: 5,  user_id: 6);
Comment.create(text: 'I am death',                      post_id: 6,  user_id: 5);
Comment.create(text: 'I am the god of war',             post_id: 7,  user_id: 4);
Comment.create(text: 'I am Beowulf',                    post_id: 8,  user_id: 3);
Comment.create(text: 'This is Sparta.',                 post_id: 9,  user_id: 2);
