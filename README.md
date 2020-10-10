# Hotel Engine Take Home Assignment

The purpose of this assignment was to create a client that requests and consumes and external API. The API I chose was the Unsplash API to recieve photos.

Deployed Application

```
https://hotel-engine-app.herokuapp.com
```

Ruby Version

```
2.5.3
```

Rails Version

```
6.0.3.3
```

API

```
Unsplash API
```

## Installing / Getting started

To view the deployed version of our application, go to the following link:


To view this application in development mode and run tests, follow these steps:


Clone down this repo and change into the newly created directory:

```
$ git clone https://github.com/muydanny/hotel_engine
$ cd hotel_engine
```
Once inside the code base type the following command in the terminal:

```
$ bundle install
$ rake db:{create,migrate}
```

If you would like to query the application locally, start the rails server:

```
rails s
```

Now you can run queries against localhost:3000!

## Quering Images

To query images, include a `search` query parameter and include all the search terms you would like to get images for.

```
https://hotel-engine-app.herokuapp.com/api/v1/image?search=denver winter
```

## Sorting Images

For sorting images, include a `sort` and `dir` query parameter. The `sort` query parameter currently only supports sorting by `updated`, which is a timestamp for when the image was updated in the Unsplash API. For `dir`, the only supported values are `desc` and `asc`. 

```
https://hotel-engine-app.herokuapp.com/api/v1/image?search=summer beach&sort=updated&dir=asc
```

## Filtering Images

If you'd like to filter images, add the `filter` query parameter. Currently only `color_code` is supported. The `color_code` should be a hex value. Don't forget to encode the initial pound sign! 

```
https://hotel-engine-app.herokuapp.com/api/v1/image?search=summer beach&filter=%23dabed8
```

## Sample Response

```
{
  "data": [
    {
      "id": "11",
      "type": "unsplash",
      "attributes": {
          "image_url": "https://images.unsplash.com/photo-1599108859846-d82c3bdf65eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MTI5MH0",
          "color_code": "#C4B5B2",
          "updated": "2020-09-24T22:20:32.000Z"
      }
    },
    {
      "id": "12",
      "type": "unsplash",
      "attributes": {
          "image_url": "https://images.unsplash.com/photo-1599108859613-88a1fff8e2e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MTI5MH0",
          "color_code": "#CCCAC4",
          "updated": "2020-09-24T22:20:32.000Z"
      }
    },
    {
      "id": "13",
      "type": "unsplash",
      "attributes": {
          "image_url": "https://images.unsplash.com/photo-1599108859527-5f30b1631be9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjE3MTI5MH0",
          "color_code": "#D7CFC4",
          "updated": "2020-09-24T22:20:32.000Z"
       }
     }
   ]
}
```

## Future iterations

In the future, this API can be extended to support more sort and filter values however in this initial draft I chose to keep it simple. 


