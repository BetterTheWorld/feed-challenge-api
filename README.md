# FlipGive Feed Challenge

This is the API for the challenge. There are 2 versions of it: Ruby on Rails and React. Choose the one which matches the role you are applying for.

The API Endpoint details can be found below.

## Ruby on Rails Challenge

Fork/Clone https://github.com/BetterTheWorld/feed-challenge-rails and implement the `/feed` endpoint. The goal is to render JSON for the activities which you will pull from the API. There are 2 types of activities: `shared` and `posted`... for the different activities, you will need to pull the related data using the additional endpoints provided below. The `object` field contains a string with the ID needed to pull.

Do your best to make it efficient. The API is written poorly (totally beyond our control), and responds in 500ms... so the fewer requests we can make the better.

The JSON being rendered should look like (changes slightly based on the activity):

```json
[
  {
    "verb": "posted",
    "actor": "My Name",
    "content": "I am quite hungry!",
    "description": "My Name posted I am quite hungry!"
  },
  {
    "verb": "shared",
    "actor": "My Name",
    "url": "https://www.flipgive.com",
    "description": "My Name shared https://www.flipgive.com"
  }
]
```

## React Challenge

Fork/Clone https://github.com/leighhalliday/feed-challenge-react and implement the `Activities` component. You must load the data before you can display it. There are 2 types of activities: `shared` and `posted`... for the different activities, you will need to pull the related data using the additional endpoints provided below. The `object` field contains a string with the ID needed to pull.

Do your best to make it efficient. The API is written poorly (totally beyond our control), and responds in 500ms... so the fewer requests we can make the better.

It is up to you to decide how to display these activities and whether to use additional components.

## Endpoints

* https://feed-challenge-api.herokuapp.com/activities Index of activities
* https://feed-challenge-api.herokuapp.com/shares/1 An individual share.
* https://feed-challenge-api.herokuapp.com/shares?ids=1,2,3 Index of shares, filtered by comma separated list of ids.
* https://feed-challenge-api.herokuapp.com/posts/1 An individual post.
* https://feed-challenge-api.herokuapp.com/posts?ids=1,2,3 Index of posts, filtered by comma separated list of ids.
