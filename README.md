# Email Dashboard

**Task to build a dashboard that can receive information from a webhook.**

## Installation Instructions

``` 
$ git clone https://github.com/acookson91/email-dashboard.git
$ cd email-dashboard
$ bundle install
brew install redis
$ rake db:create
$ rake db:migrate
```

## Running the Dashboard

Start the rails application

```
rails s
```

Start the Redis/Sidekiq (Worker that ques data storage)

```
#In a new command window
bundle exec sidekiq
#In a new command window
redis-server /usr/local/etc/redis.conf
```


Set up the listener in a new command tab

```
$go run listener.go
```

Set up llirdnam to post data to http://localhost:3000/webhooks/receive in a new command tab

```
go run llirdnam.go http://localhost:3000/webhooks/receive
```

## Technologies used

I used ruby on rails with a postgres database. For testing I'm using Rspec with capybara for feature testing. 

## Features

Once the dashboard starts to recieve data from the webhook it will show a summary for all emails. If the User wants a breakdown by Email type they can click the links on the summary pages. If more Emails types are added to the database it will add new links to the list. When the email type links are selected the data will be filtered to show that email types events. 

## Design approach and Challenges

My approach was to keep the application as simple as possible without repeating myself. I started off with two controllers an emails and summary. The idea was that the emails controller would break down the data further. After starting my first test I noticed that I would be able to filter results all from one controller only adding 2 lines of code to the controller and a method the model.

My biggest challlenge was setting up the webhook, as I have little experience using them. With little documentation online I spiked my first attempt with the aim of getting an understanding of how the webhooks work. While I was unsucessful with this I seeded the email database so I could start to create the dashboard. 

After I managed to set up the webhook, creating a test for the webhook posting data to the webhook controller was my next challange. 

## Future developments and improvement

I would have like to set up AJAX requests for the data so the page didn't have to refresh for the data to be updated. As mentioned above I wasn't able to create a successful controller test for the webhook creating a Email in the database.






