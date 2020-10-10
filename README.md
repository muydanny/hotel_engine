# Hotel Engine Take Home Assignment

The purpose of this assignment was to create a client that requests and consumes and external API. The API I chose was the Unsplash API to recieve photos. I ran into some challenges trying to populate my database with the search results. The goal was to populate the database with key terms with each request so if a later request fit a similar criteria the results were gathered from the database and not the API. However it being tricky I believe I was successful in accomplishing this initial challenge. 

Ruby Version

'''
2.5.3
'''

Rails Version

'''
6.0.3.3
'''

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

Check http://localhost:3000/


