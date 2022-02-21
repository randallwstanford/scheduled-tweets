# Tweet-Scheduler 🐤

## Table of Contents
* [About](#about)
* [Technologies](#technologies)
* [Setup](#setup)
* [Launch](#launch)
* [Screenshots](#screenshots)

## About
- -*In Progress*- 
- Tweet-Scheduler is an app that lets you schedule when you want your tweets to be posted.
- I created Tweet-Scheduler because I wanted to learn the developer workflow of using Ruby on Rails. 
- In this project I learned: 
  - Industry standard use of Ruby on Rails with Bootstrap
  - Routing, re-routing, and CRUD operation with recources
  - Creating dynamic views with html.erb, i.g, for-loops, link_to/button_to tags, before_actions
  - Creating and using Controllers to redirect user and query the database.
  - Creating and migrating database Models 
  - Rails is so nice. 🚂
- See it deployed here: https://my-tweet-scheduler.herokuapp.com/ 

## Technologies
- Ruby on Rails - version 7.0.2.2
- Omniauth - version 2.0
- Twitter API - version 2.0

## Setup
- Clone/fork this repository.
- Make sure you have Rails 7.0.2.2 installed.
- Create Twitter Developer account, create a project, acquire API-key and API-secret.
- Add API-key and API-secret: 
  - For VSCode run: `EDITOR="code --wait" rails credentials:edit --environment=development`
  - For Sublime run: `EDITOR="subl --wait" bin/rails credentials:edit  --environment=development`
  - For Vim run: `EDITOR=vim rails credentials:edit` 

*NOTE: This creates a development yaml file in your var directory to add your API-key and API-secret.*

Add the following code with your API-key and API-secret. 

```
twitter: 
  api_key: xxxxxxxxxxxxxxxxxx
  api_secret: xxxxxxxxxxxxxxxxxx
```

Install project depenencies: 
```
bundle install
```
Create database and schema:
```
rails db:create
rails db:migrate
```
In the Twitter Developer portal, add the following URLS to your project.
- `localhost:3000/auth/twitter/callback`


## Launch
- Once cloned, open up your terminal.
- Go to the scheduled-tweets directory and run the server.
```
$ cd ./scheduled-tweets
$ rails server 
```
- Head to `localhost:3000` 🚀🚀🚀🚀🚀🚀

## Screenshots
![doge](https://i.imgur.com/lNCurPJ.gif)
