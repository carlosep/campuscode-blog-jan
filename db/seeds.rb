Post.create(title:'Homem',    body:'Quando um homem não se encontra a si
                                    mesmo, não encontra nada.')
Post.create(title:'Ideia',    body:'Qualquer ideia que te agrade, Por isso
                                    mesmo... é tua.')
Post.create(title:'Imoral',   body:'O que é verdadeiramente imoral é ter
                                    desistido de si mesmo.')
Post.create(title:'Quem sou', body:'Curioso como não sei dizer quem sou. Quer
                                    dizer, sei-o bem, mas não posso dizer.')
Post.create(title:'Sinto',    body:'O que eu sinto eu não ajo. O que ajo não
                                    penso. O que penso não sinto.')
Post.create(title:'Nada',     body:'Eu sei que não sou nada e que talvez
                                    nunca tenha tudo.')
Post.create(title:'Voar',     body:'Não sei amar pela metade. Não sei viver de
                                    mentira. Não sei voar de pés no chão.')
Post.create(title:'Não sei',  body:'Não sei o que sinto, não sei o que quero,
                                    não sei o que penso nem o que sou.')
Post.create(title:'Inseguro', body:'Sou uma pessoa insegura, indecisa, sem
                                    rumo na vida, sem leme para me guiar.')
Post.create(title:'Monte',    body:'Sou um monte intransponível no meu
                                    próprio caminho.')
Post.create(title:'Eu',       body:'Sou sempre eu mesmo, mas com certeza não
                                    serei o mesmo pra sempre...')

FactoryGirl.create(:user, name: 'John Doe', email: 'johndoe@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:user, name: 'Mary Doe', email: 'marydoe@blogjan.com',
                   password: 'useruser')
FactoryGirl.create(:admin, name: 'Carlos',   email: 'carlos@blogjan.com',
                   password: 'adminadmin')
