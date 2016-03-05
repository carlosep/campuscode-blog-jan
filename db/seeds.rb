# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
create(:post)
create(:post, title:'Homem',    body:'Quando um homem não se encontra a si
                                      mesmo, não encontra nada.')
create(:post, title:'Ideia',    body:'Qualquer ideia que te agrade, Por isso
                                      mesmo... é tua.')
create(:post, title:'Imoral',   body:'O que é verdadeiramente imoral é ter
                                      desistido de si mesmo.')
create(:post, title:'Quem sou', body:'Curioso como não sei dizer quem sou. Quer
                                      dizer, sei-o bem, mas não posso dizer.')
create(:post, title:'Sinto',    body:'O que eu sinto eu não ajo. O que ajo não
                                      penso. O que penso não sinto.')
create(:post, title:'Nada',     body:'Eu sei que não sou nada e que talvez
                                      nunca tenha tudo.')
create(:post, title:'Voar',     body:'Não sei amar pela metade. Não sei viver de
                                      mentira. Não sei voar de pés no chão.')
create(:post, title:'Não sei',  body:'Não sei o que sinto, não sei o que quero,
                                      não sei o que penso nem o que sou.')
create(:post, title:'Inseguro', body:'Sou uma pessoa insegura, indecisa, sem
                                      rumo na vida, sem leme para me guiar.')
create(:post, title:'Monte',    body:'Sou um monte intransponível no meu
                                      próprio caminho.')
create(:post, title:'Eu',       body:'Sou sempre eu mesmo, mas com certeza não
                                      serei o mesmo pra sempre...')
