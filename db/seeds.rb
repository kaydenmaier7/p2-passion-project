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
  wood_type: 'Holly'
}

wand2 = {
  length:  10.75,
  core: 'Dragon Heartstring',
  wood_type: 'Vine'
}

wand3 = {
  length: 14,
  core: 'Unicorn Hair',
  wood_type: 'Willow'
}

wand4 = {
  length: 12.75,
  core: 'Dragon Heartstring',
  wood_type: 'Hornbeam'
}

User.create(user1)
User.create(user2)
User.create(user3)
User.create(user4)


Wand.create(wand1)
wand = Wand.last
wand.owner_id = 1
wand.creator_id = 4

Wand.create(wand2)
wand = Wand.last
wand.owner_id = 2
wand.creator_id = 4

Wand.create(wand3)
wand = Wand.last
wand.owner_id = 3
wand.creator_id = 4
