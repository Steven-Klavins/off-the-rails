# Off the rails

**About**

Off the rails is a web app built in the Ruby on Rails frame-work, users can create, update, delete, and comment on articles. This project is an adaptation of the official [Getting Started with Rails Guide](https://guides.rubyonrails.org/getting_started.html). 

The tech stack I used for this project was Ruby, Rails, RSpec and PostgreSQL apposed to SQLite. In addition to this, I added RSpec/Capybara feature testing and line breaks/styling for posts. I also added some CSS to make the site a little more welcoming and to highlight the navigation links to improve the user experience.

## What you can do

As a user you can post, update and delete articles, articles persist when running the app on a local database. Other users can also leave comments on your posts, they also have the ability to revisit comments or delete them if they wish to do so. At present the site does not have authentication so there is no need for a login, however, this is something I would add if I were to deploy.

<p align="center">
<img src="Screenshot.png" alt="drawing" width="600"/>
</p>


**How to run**

1. In order to run the application first clone the repo to a local directory.

`git clone git@github.com:Steven-Klavins/off-the-rails.git`

2. Next navigate to the off-the-rails folder and run bundle install to add the dependencies.

`bundle install`

3. Setup the PostgreSQL database locally using the following command:

`db:setup`

3. Start the server with the following command:

`rails s` 

4. Well done your off the rails! Visit your local host and you'll be able to create some new articles. 

`http://localhost:3000/`

**Use**

**The landing page (http://localhost:3000/)**

There's not really a lot to say about this page other than click "Continue to blog", this page is essentially just a greeting to the site.

**The articles page (http://localhost:3000/articles)**

When you first run the app the only option available on this page will be to add a new article, once adding an article you will see a list of additional options displayed.

<p align="center">
<img src="article.png" alt="Article screenshot" width="400"/>
</p>

**Show**

Click on show to view an article, here you will see comments and have the ability to add/remove them.

**Edit**

Click the edit option an article and you can update it!

**Delete**

Click delete on an article and you will get a prompt to confirm you want to remove the post.

**The process of building the app**

Whilst making this app I made a series of blogs walking through how I made it step by step. You can find these blogs  These blogs go rather in depth but in short I built the site following the [Getting Started with Rails Guide](https://guides.rubyonrails.org/getting_started.html) with my own modifications. 

Whilst working on this app I made a series of blogs walking through the process step by step. You can find these blogs [here.](https://medium.com/@stevenklavins94/getting-started-with-rails-part-1-c634b59d3e4b) These blogs go rather in-depth but in short, I built the site following the Getting Started with Rails Guide with a number of modifications.

At the start of the project I generated a model using PostgreSQL as my database of choice, I also made a blog on how this is done [here](https://medium.com/@stevenklavins94/setting-up-rails-with-postgresql-cb09f7791331). I quickly learned from previous projects it is far easier to configure this at the start of the project as opposed to changing it later. I chose PostgreSQL as its a database I'm slightly more familiar with and it provided what I needed for this project. However, after using Rails you soon find out a lot of database configuration is done in the background for you!

All of the controllers were generated through the rails framework however I tweaked a few things here and there. 

The views were also generated with the framework, however, a lot of modification was needed to get the desired outcome. The Rails helper methods were particularly useful here, one helper method I found useful was the 'simple_format' method. This allowed article text to retain line breaks, it's a small but really important change in my opinion, before adding this article text looked very clustered. 

**Future updates**

At present, there are a few things about this project I would like to add, probably the biggest being user authentication. If I deployed the site at this moment in time there would be no way of preventing users from editing articles under a false alias. However, to tell the truth, deployment was never really something I was planning on, the purpose of building this site was to help me learn Rails and in that, I achieved my primary goal.
