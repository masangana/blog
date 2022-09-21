# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'cleaning database ...'
User.destroy_all
Post.destroy_all
Comment.destroy_all
p 'database cleaned !'

p 'Seeding...'

# Create users
users = User.create([{ name: 'Joe Kasongo', photo: '1.jpg', bio: 'A passionate developer and a great cooker. PDG of JKLM group. 26 years old.',
                       posts_counter: 3 },
                     { name: 'Kessy Masangana', photo: '2.jpg', bio: 'Very clever. 16 years old. A very good gamer',
                       posts_counter: 0 },
                     { name: 'Mamadou Kasongo', photo: '2.jpg',
                       bio: 'A very good cook. 26 years old. A very good gamer', posts_counter: 0 },
                     { name: 'Doverly Kapinga', photo: '2.jpg', bio: 'Host, weeding planer. very beautyfull girl',
                       posts_counter: 0 }])

posts = Post.create([
                      { user: users.last, title: 'How to plan a  good weeding', text: 'Eu nisi fugiat
elit deserunt mollit veniam consequat et duis qui est. Id labore exercitation
ea cillum velit est. Quis veniam est incididunt dolore consectetur laboris
sunt culpa. Nulla ex sit commodo elit culpa adipisicing id anim ad magna
occaecat id ullamco proident. Sunt tempor ex irure officia elit laboris
quis reprehenderit officia non. Consequat magna consequat officia tempor sit. Labore esse adipisicing deserunt quis minim.
Incididunt id sint ad reprehenderit qui fugiat tempor ullamco mollit aliqua.
Occaecat est qui eiusmod aliquip magna sint exercitation laboris ullamco
laboris ad proident. Eiusmod do pariatur mollit et ut anim voluptate aliqua cupidatat officia sunt nisi quis velit.
Laborum aliqua sunt eiusmod culpa voluptate esse. Magna aliquip ut
et exercitation do est laboris aliqua commodo aliquip dolore mollit
laborum elit. Aliqua aute nulla exercitation esse ex nulla non.
Eu fugiat eu anim proident dolore anim anim culpa labore enim et.
Veniam sunt qui consectetur ea laborum laboris ad culpa ut dolore.
Irure in deserunt minim aliquip minim irure excepteur officia duis
culpa reprehenderit deserunt commodo. Tempor ipsum nisi veniam est
irure exercitation do esse id est. Enim aliquip esse est eu mollit
sint est qui cupidatat. Laborum exercitation amet cillum excepteur
amet officia qui velit. Laboris elit nisi et aute consequat consectetur.
Aliquip ea nulla sunt do eiusmod. Veniam adipisicing excepteur cillum enim quis.
Occaecat labore et ad ad enim reprehenderit occaecat minim proident
ex occaecat laboris irure proident. Ea deserunt ipsum consequat pariatur
officia. Nisi nisi adipisicing veniam enim non elit magna ea laboris labore.
Reprehenderit commodo mollit fugiat duis excepteur nulla nisi culpa.
Consequat qui officia in deserunt laborum aute sit quis aute esse consectetur sunt elit proident.
Exercitation eiusmod mollit ullamco qui commodo labore fugiat. Reprehenderit et deserunt non ipsum.', comments_counter: 0, likes_counter: 0 },

                      { user: users.first, title: 'Work for your live', text: 'Eu nisi fugiat
elit deserunt mollit veniam consequat et duis qui est. Id labore exercitation
ea cillum velit est. Quis veniam est incididunt dolore consectetur laboris
sunt culpa. Nulla ex sit commodo elit culpa adipisicing id anim ad magna
occaecat id ullamco proident. Sunt tempor ex irure officia elit laboris
quis reprehenderit officia non. Consequat magna consequat officia tempor sit. Labore esse adipisicing deserunt quis minim.
Incididunt id sint ad reprehenderit qui fugiat tempor ullamco mollit aliqua.
Occaecat est qui eiusmod aliquip magna sint exercitation laboris ullamco
laboris ad proident. Eiusmod do pariatur mollit et ut anim voluptate aliqua cupidatat officia sunt nisi quis velit.
Laborum aliqua sunt eiusmod culpa voluptate esse. Magna aliquip ut
et exercitation do est laboris aliqua commodo aliquip dolore mollit
laborum elit. Aliqua aute nulla exercitation esse ex nulla non.
Eu fugiat eu anim proident dolore anim anim culpa labore enim et.
Veniam sunt qui consectetur ea laborum laboris ad culpa ut dolore.
Irure in deserunt minim aliquip minim irure excepteur officia duis
culpa reprehenderit deserunt commodo. Tempor ipsum nisi veniam est
irure exercitation do esse id est. Enim aliquip esse est eu mollit
sint est qui cupidatat. Laborum exercitation amet cillum excepteur
amet officia qui velit. Laboris elit nisi et aute consequat consectetur.
Aliquip ea nulla sunt do eiusmod. Veniam adipisicing excepteur cillum enim quis.
Occaecat labore et ad ad enim reprehenderit occaecat minim proident
ex occaecat laboris irure proident. Ea deserunt ipsum consequat pariatur
officia. Nisi nisi adipisicing veniam enim non elit magna ea laboris labore.
Reprehenderit commodo mollit fugiat duis excepteur nulla nisi culpa.
Consequat qui officia in deserunt laborum aute sit quis aute esse consectetur sunt elit proident.
Exercitation eiusmod mollit ullamco qui commodo labore fugiat. Reprehenderit et deserunt non ipsum.', comments_counter: 0, likes_counter: 0 },

                      { user: users.first, title: 'Renegate', text: '
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec arcu odio. Nulla feugiat, ipsum quis facilisis
vulputate, elit metus vehicula risus, sit amet suscipit mauris sem at est. Aliquam erat volutpat. Vivamus id ligula
pretium, iaculis risus vitae, eleifend nibh. Donec bibendum pharetra eleifend. Nunc enim ligula, sodales venenatis
efficitur sit amet, hendrerit id metus. Nulla dapibus, neque mattis varius dapibus, mi purus laoreet odio, quis
venenatis elit nunc a ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;
Nullam lacinia velit arcu, non tincidunt orci sagittis sed. Pellentesque pretium lobortis leo.
Ut lacinia ipsum quis lacus sagittis bibendum. Pellentesque habitant morbi tristique senectus et netus et malesuada
fames ac turpis egestas. Morbi vel congue justo. Sed cursus fringilla metus, sollicitudin sagittis mi sagittis vel.
Phasellus magna tortor, dignissim non quam id, gravida ultrices augue. Sed pellentesque accumsan erat, non blandit diam
fringilla non. Sed eget risus posuere, ornare orci eu, feugiat sem. Aenean dignissim cursus elementum. Nulla aliquet
faucibus lacus, a congue est fermentum ut. Etiam non elementum risus, in dapibus augue. Nam eu nulla dictum, cursus
dolor at, eleifend sem. Cras sapien augue, sollicitudin in enim vitae, dictum pharetra elit. Lorem ipsum dolor sit amet,
consectetur adipiscing elit. Integer at justo luctus, pulvinar mauris vel, viverra urna. Vivamus risus libero, egestas
vehicula lectus at, elementum cursus turpis. Donec quam nibh, ultricies eu condimentum at, volutpat ac orci.',
                        comments_counter: 0, likes_counter: 0 }
                    ])

# Create comments
comments = Comment.create([{ post: posts.first, user: users.first, text: 'Can you give me your contact?' },

                           { post: posts.first, user: users.last,
                             text: 'Hi! Ask me by mail. My email is: contact@weeding.com ' },
                           { post: posts.first, user: users[1], text: 'Good subject' },
                           { post: posts.last, user: users.last, text: 'Very strong!' },
                           { post: posts.last, user: users[1], text: 'I like it!' },
                           { post: posts.last, user: users.first, text: 'I like it too!' },
                           { post: posts[1], user: users.first, text: 'I like it too!' },
                           { post: posts[1], user: users.last, text: 'I like it too!' },
                           { post: posts[1], user: users[1], text: 'I like it too!' }])

p "Successfully created #{User.count} users"
p "Successfully created #{Post.count} posts"
p "Successfully created #{Comment.count} comments"
p 'Seeding finished'
