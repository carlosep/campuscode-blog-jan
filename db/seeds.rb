Post.create(title:'Homem',        body:'Quando um homem não se encontra a si mesmo, não encontra nada.')
Post.create(title:'Ideia',        body:'Qualquer ideia que te agrade, Por isso mesmo... é tua.')
Post.create(title:'Imoral',       body:'O que é verdadeiramente imoral é ter desistido de si mesmo.')
Post.create(title:'Quem sou',     body:'Curioso como não sei dizer quem sou. Quer dizer, sei-o bem, mas não posso dizer.', created_at: '2016-04-02 12:00:00')
Post.create(title:'Sinto',        body:'O que eu sinto eu não ajo. O que ajo não penso. O que penso não sinto.', created_at: '2016-04-03 12:00:00')
Post.create(title:'Nada',         body:'Eu sei que não sou nada e que talvez nunca tenha tudo.', created_at: '2016-03-01 12:00:00')
Post.create(title:'Voar',         body:'Não sei amar pela metade. Não sei viver de mentira. Não sei voar de pés no chão.', created_at: '2016-03-02 12:00:00')
Post.create(title:'Não sei',      body:'Não sei o que sinto, não sei o que quero, não sei o que penso nem o que sou.', created_at: '2016-03-03 12:00:00')
Post.create(title:'Inseguro',     body:'Sou uma pessoa insegura, indecisa, sem rumo na vida, sem leme para me guiar.', created_at: '2016-01-02 12:00:00')
Post.create(title:'Monte',        body:'Sou um monte intransponível no meu próprio caminho.', created_at: '2016-01-04 12:00:00')
Post.create(title:'Eu',           body:'Sou sempre eu mesmo, mas com certeza não serei o mesmo pra sempre...', created_at: '2016-01-06 12:00:00')
Post.create(title:'Imaginação',   body:'A imaginação é mais importante que o conhecimento.', created_at: '2015-11-02 12:00:00')
Post.create(title:'Males',        body:'É preferível suportar os males que temos do que voar para aqueles que não conhecemos.', created_at: '2015-11-04 12:00:00')
Post.create(title:'Deus',         body:'Quero conhecer os pensamentos de Deus... O resto é detalhe.', created_at: '2015-06-02 12:00:00')
Post.create(title:'Tempo',        body:'O tempo é o melhor autor; sempre encontra um final perfeito.', created_at: '2015-05-02 12:00:00')
Post.create(title:'Conhecimento', body:'Pouco conhecimento é uma coisa perigosa, muito conhecimento, também.', created_at: '2015-02-02 12:00:00')
Post.create(title:'Naufrágio',    body:'Quem decidir se colocar como juiz da verdade e do conhecimento é naufragado pela gargalhada dos deuses.', created_at: '2014-05-02 12:00:00')
Post.create(title:'Vida',         body:'A vida vai ficando cada vez mais dura perto do topo.', created_at: '2016-04-19 12:00:00')
Post.create(title:'Convicções',   body:'As convicções são inimigas mais perigosas da verdade do que as mentiras.', created_at: '2016-04-20 12:00:00')
Post.create(title:'Consciência',  body:'É mais fácil lidar com uma má consciência do que com uma má reputação.', created_at: '2016-04-21 12:00:00')
Post.create(title:'Porção',       body:'Para a maioria, quão pequena é a porção de prazer que basta para fazer a vida agradável!')

FactoryGirl.create(:user,  name: 'John Doe',       email: 'johndoe@blogjan.com')
FactoryGirl.create(:user,  name: 'Roger Rabbit',   email: 'roger@blogjan.com')
FactoryGirl.create(:user,  name: 'Jessica Rabbit', email: 'jessica@blogjan.com')
FactoryGirl.create(:user,  name: 'Joseph Smith',   email: 'joseph@blogjan.com')
FactoryGirl.create(:user,  name: 'Mary Doe',       email: 'marydoe@blogjan.com')
FactoryGirl.create(:user,  name: 'Vicky Vale',     email: 'vicky@blogjan.com')
FactoryGirl.create(:user,  name: 'Sarah Connor',   email: 'sarah@blogjan.com')
FactoryGirl.create(:admin, name: 'admin',          email: 'admin@admin.com')

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
Comment.create(text: 'The Horror!',                     post_id: 12, user_id: 5);
Comment.create(text: 'I don\'t think so...',            post_id: 13, user_id: 4);
Comment.create(text: 'Nothing to say about this',       post_id: 14, user_id: 3);
Comment.create(text: 'Atrocious',                       post_id: 15, user_id: 2);
Comment.create(text: 'Ingenious',                       post_id: 16, user_id: 1);
Comment.create(text: 'git gud',                         post_id: 17, user_id: 1);
Comment.create(text: 'You wot m8??',                    post_id: 18, user_id: 2);
Comment.create(text: 'Veautiful',                       post_id: 19, user_id: 3);
Comment.create(text: 'Damn good!',                      post_id: 20, user_id: 4);
Comment.create(text: 'Serves you well',                 post_id: 21, user_id: 5);
Comment.create(text: 'Broken in half',                  post_id: 1,  user_id: 6);
Comment.create(text: 'Why you can\'t use emojis here?', post_id: 2,  user_id: 7);
Comment.create(text: 'Where do I buy this',             post_id: 3,  user_id: 8);
Comment.create(text: 'What is the title of the post?',  post_id: 4,  user_id: 8);
Comment.create(text: 'Comment',                         post_id: 5,  user_id: 7);
Comment.create(text: 'I don\'t know how to comment',    post_id: 6,  user_id: 6);
Comment.create(text: 'I am death',                      post_id: 7,  user_id: 5);
Comment.create(text: 'I am the god of war',             post_id: 8,  user_id: 4);
Comment.create(text: 'I am Beowulf',                    post_id: 9,  user_id: 3);
Comment.create(text: 'This is Sparta.',                 post_id: 10, user_id: 2);
Comment.create(text: 'Nice Post',                       post_id: 11, user_id: 1);
Comment.create(text: 'Interesting',                     post_id: 12, user_id: 2);
Comment.create(text: 'Good stuff',                      post_id: 13, user_id: 3);
Comment.create(text: 'I\'d buy that',                   post_id: 14, user_id: 4);
Comment.create(text: 'Well tought',                     post_id: 15, user_id: 5);
Comment.create(text: 'I\'ve seen this before',          post_id: 16, user_id: 6);
Comment.create(text: 'I think this comes from a song',  post_id: 17, user_id: 7);
Comment.create(text: 'A song was made based on this',   post_id: 18, user_id: 8);
Comment.create(text: 'My mom enjoys this post',         post_id: 19, user_id: 8);
Comment.create(text: 'Very intelligent',                post_id: 20, user_id: 7);
Comment.create(text: 'Keep on Galloping',               post_id: 21, user_id: 6);
Comment.create(text: 'The Horror!',                     post_id: 1,  user_id: 5);
Comment.create(text: 'I don\'t think so...',            post_id: 2,  user_id: 4);
Comment.create(text: 'Nothing to say about this',       post_id: 3,  user_id: 3);
Comment.create(text: 'Atrocious',                       post_id: 4,  user_id: 2);
Comment.create(text: 'Ingenious',                       post_id: 5,  user_id: 1);
Comment.create(text: 'git gud',                         post_id: 6,  user_id: 1);
Comment.create(text: 'You wot m8??',                    post_id: 6,  user_id: 2);
Comment.create(text: 'Veautiful',                       post_id: 7,  user_id: 3);
Comment.create(text: 'Damn good!',                      post_id: 8,  user_id: 4);
Comment.create(text: 'Serves you well',                 post_id: 9,  user_id: 5);
Comment.create(text: 'Broken in half',                  post_id: 10, user_id: 6);
Comment.create(text: 'Why you can\'t use emojis here?', post_id: 11, user_id: 7);
Comment.create(text: 'Where do I buy this',             post_id: 12, user_id: 8);
Comment.create(text: 'What is the title of the post?',  post_id: 13, user_id: 8);
Comment.create(text: 'Comment',                         post_id: 14, user_id: 7);
Comment.create(text: 'I don\'t know how to comment',    post_id: 15, user_id: 6);
Comment.create(text: 'I am death',                      post_id: 16, user_id: 5);
Comment.create(text: 'I am the god of war',             post_id: 17, user_id: 4);
Comment.create(text: 'I am Beowulf',                    post_id: 18, user_id: 3);
Comment.create(text: 'This is Sparta.',                 post_id: 19, user_id: 2);
