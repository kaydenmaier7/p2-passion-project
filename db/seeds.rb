user1 = {
  first_name: 'Harry',
  last_name: 'Potter',
  username: 'hpotter7',
  email: 'hpotter7@gmail.com',
  password: 'a'
}

user2 = {
  first_name: 'Hermione',
  last_name: 'Granger',
  username: 'hgranger7',
  email: 'hgranger7@gmail.com',
  password: 'a'
}

user3 = {
  first_name: 'Ronald',
  last_name: 'Weasley',
  username: 'ron.wealsey7',
  email: 'ron.wealsey@gmail.com',
  password: 'a'
}

user4 = {
  first_name: 'Garrick',
  last_name: 'Ollivander',
  username: 'gollivander7',
  email: 'gollivander7@gmail.com',
  password: 'a'
}

wand1 = {
  length: 11,
  core: 'Phoenix Feather',
  wood_type: 'Holly',
  owner_id: 1,
  creator_id: 4

}

wand2 = {
  length:  10.75,
  core: 'Dragon Heartstring',
  wood_type: 'Vine',
  owner_id: 2,
  creator_id: 4
}

wand3 = {
  length: 14,
  core: 'Unicorn Hair',
  wood_type: 'Willow',
  owner_id: 3,
  creator_id: 4
}

wand4 = {
  length: 12.75,
  core: 'Dragon Heartstring',
  wood_type: 'Hornbeam',
  owner_id: 4,
  creator_id: 4
}

account1 = {
  user_id: 1,
  balance: 15_000_00,
  interest_rate: 0.04
}

account2 = {
  user_id: 2,
  balance: 1_000_000,
  interest_rate: 0.04
}

account3 = {
  user_id: 3,
  balance: 1_000_000,
  interest_rate: 0.04
}

account4 = {
  user_id: 4,
  balance: 3_000_000,
  interest_rate: 0.04
}

article1 = {
  user_id: 1,
  article_title: 'Harry Potters Info Page',
  article_body: "Info about Harry Potter's Stuff"
}

article2 = {
  user_id: 2,
  article_title: 'Hermione Granger Info Page',
  article_body: "Info about Hermione Granger's Stuff"
}

article3 = {
  user_id: 3,
  article_title: 'Ronald Weasley Info Page',
  article_body: "Info about Ronald Weasley's Stuff"
}

article4 = {
  user_id: 4,
  article_title: 'Garrick Ollivander Info Page',
  article_body: "Info about Garrick Ollivander's Stuff"
}



User.create(user1)
User.create(user2)
User.create(user3)
User.create(user4)


Wand.create(wand1)
Wand.create(wand2)
Wand.create(wand3)
Wand.create(wand4)

Gringotts_Account.create(account1)
Gringotts_Account.create(account2)
Gringotts_Account.create(account3)
Gringotts_Account.create(account4)

Article.create(article1)
Article.create(article2)
Article.create(article3)
Article.create(article4)













