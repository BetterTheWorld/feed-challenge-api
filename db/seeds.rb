names = [
  "Elaine L. Story",
  "Bobby L. Booker",
  "Tara C. Porter",
  "Hans Casárez Contreras",
  "Yole Fonseca Otero"
]

10.times do |i|
  post = Post.create!(
    user_id: i + 1,
    content: [
      "Did you mean to share that pic?",
      "Want to go grab some pizza?",
      "I hope you like this post."
    ].sample
  )

  Activity.create!(
    object: "Post:#{post.id}",
    actor: names.sample,
    verb: "posted"
  )
end

10.times do |i|
  share = Share.create!(
    user_id: i + 1,
    url: [
      "https://www.flipgive.com",
      "https://www.github.com",
      "https://www.twitter.com"
    ].sample
  )

  Activity.create!(
    object: "Share:#{share.id}",
    actor: names.sample,
    verb: "shared"
  )
end