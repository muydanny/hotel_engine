# Hotel Engine Take Home Assignment

The purpose of this assignment was to create a client that requests and consumes and external API. The API I chose was the Unsplash API to recieve photos. I ran into some challenges trying to populate my database with the search results. The goal was to populate the database with key terms with each request so if a later request fit a similar criteria the results were gathered from the database and not the API. However it being tricky I believe I was successful in accomplishing this initial challenge. 

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
https://github.com/muydanny/hotel_engine

cd he_app
```
Once inside the code base, in order to run tests, type the following command in the terminal:

```
rake db:{create,migrate}
bundle install
```

If you would like to view the application in Development mode, run the following command:

```
rails s
```

Check http://localhost:3000/ and 

## Quering Images

```
https://api.unsplash.com/search/photos/api/v1/image?search=denver co winter
```

## Sorting Images

```
https://api.unsplash.com/search/photos/api/v1/image?search=summer beach&sort=updated&dir=asc
```

## Filtering Images

```
https://api.unsplash.com/search/photos/api/v1/image?search=summer beach&filter=%23dabed8
```

## Sample of Response

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




