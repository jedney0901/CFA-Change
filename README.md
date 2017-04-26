# Welcome to my first draft of a political debate generator for my Coderfactory Assignment 2 concept and development README.

This app is in response to the brief presented to us based on the following criteria:

Your application must impress one person/group from this list:
1. Barack Obama (politics)
2. Rupert Murdoch (journalism)
3. Bill & Melinda Gates (social causes/global development)
Each person/group was chosen to represent a particular industry as well as certain expectations and standards.

# Tools and methodologies
1. Trello or similar project management tool to be used to track progress of build.
2. Code review. Demonstrate that you have had your code reviewed by other students and that you have provided a code review for others.
3. Github. Demonstrate use of frequent commits, pull requests, documentation.
4. Use Agile development methodologies.
5. Provide evidence you have used code quality tools (eg. Traceroute, Bullet, Brakeman, Rails Best Practices tool, RuboCop, RubyCritic, CodeClimate).
6. Rails application code
7. Demonstrate Ruby on Rails development skills.
* = optional
8. Create your application using Ruby on Rails.
9. Demonstrate knowledge of Rails conventions.
10. Use postgresql database in development.
11. Use an API (eg. Omniauth, Geocoding, Maps, other..).
12. Use appropriate gems.
13. Use environmental variables to protect API keys etc.
14. Implement a payment system for your product *
15. Your app must send transactional emails (eg. using Mailgun).
16. Your app should have an internal user messaging system.
17. Your app will have some type of searching, sorting and or filtering capability.
18. Your app will have some type of file uploading capability (eg. images).
19. Your app will have authentication (eg. Devise, must have full functionality in place).
20. Your app will have authorisation (users have restrictions on what they can see and edit).
21. Your app will have an admin dashboard for the admin user to administrate the site.
22. Document your application with a README that explains how to setup, configure and use your application.
23. The core functionality of your application needs to be tested with Rspec.


# INTRODUCTION - CHANGEAPP

ChangeApp is designed to do three core things to help the youth of today:

1. Identify where they sit on the political spectrum

2. Be able to interact and discuss various political issues with other groups/individuals

3. To be sharable amongst the community to help spread different opinions and sentiment in a comprehensive manner.

# Trello Board 
<img width="1298" alt="change trello" src="https://cloud.githubusercontent.com/assets/25731546/25416737/c60939fc-2a82-11e7-858b-0312d0f9bdc8.png">



# IDEATION

Working through the ideas for this project were pretty hard considering the areas that we had to look at developing for, especially as they aren't area's I have experience in. From the beginning I knew I wanted to do a political based app to help young people be able to have a platform which could enable them to share and discuss different topics in a safe and easy to navigate environment unlike social media platforms which can turn into mudslinging and bullying.

There were a lot of different features that I thoguht I could incorporate into this project and very quickly I realised that I was going to be biting off more than I could chew especially timeframes and experience. The core features that I wanted to include were:

- Debate generator where people are able to contribute and build on each others responses.
- UI where they can access and see a live feed of all new debates, their current debates and the last submissions on those debates.
- API to Votecompass (An app which allows you to navigate and understand where you sit on the political spectrum based on where major parties are currently at.
- Survey functionality where I would be able to send out large scale emails and host surveys through the site to the target audience and gather information around youth sentiments. This would be allow me to combine the data and present it back for analysis based on current policies.
- News feed based on personal political preferences e.g. environmental, economic etc...
- Incorporating analytics based around popularity of debates, comments, sentiment, political preferences.
- Bibliographical checker API or potentially connect to the Polifacts API

There are a number of limitations around building an app like this which need to be taken into account especially based around how it would be deployed, how to make it as engaging as possible and how to make it scalable so that the analytics produced are strong enough. With the limited amount of time I decided to focus purely on being able to try and make it engaging through making it visually appealing and also see if I was able to get the basic functoinality down before moving onto the next stage and incorporating the more complex elements.


# HOW WAS IT BUILT?

For our project we using a ruby on rails structure utilising the postgresql framework so that we were able to deploy directly to heroku without any issues. As we are planning on deploying through Heroku we also must come up with a way which allows the app to access images and I decided to implement AWS S3 using Nick Whu's guide (Thanks mate). To determine my sitemap and actual App structure I used sketch to plan out all the pages I thought I would need and made a basic wireframe with a general idea of how my colour scheme would turn out but nothing set in stone. In the end, the only one I wasn't able to implement was the preferences page where they could select the type of news and articles they would want to review.

For this project we used the following gems:

1. Bootstrap-sass - Bootstrap CSS Styling
2. Devise - Authentication
3. Carrierwave - Photo and file upload
4. Mini_magick - Required gem for Carrierwave
5. Ransack
6. Omniauth
7. Rolify
8. Pundit

###My site structure looks like as follows:###

###Home Page###

<img width="539" alt="changeapp" src="https://cloud.githubusercontent.com/assets/25731546/25408305/e2d6d2c4-2a50-11e7-85b4-e96bd351e9dd.png">

###Profile Page ###

<img width="531" alt="changeapp-user" src="https://cloud.githubusercontent.com/assets/25731546/25408302/e2d5fa52-2a50-11e7-92d2-020a0a708a3c.png">

###Debate Page ###

<img width="633" alt="changeapp-debate" src="https://cloud.githubusercontent.com/assets/25731546/25408304/e2d67874-2a50-11e7-816e-65400debd24b.png">

###Preferences Page###

<img width="590" alt="changeapp- preferences" src="https://cloud.githubusercontent.com/assets/25731546/25408303/e2d650ec-2a50-11e7-8647-226aefe049e9.png">


The first major hurdle that I faced was the implementation of a based Debate template which I couldn then continue to change and adapt depdning on what the user requirements turned out to be. For my MVP the flow of the debate is:

1. User created a debate and sets the topic/provides a description
2. The user is then able to provide an argument for either For or Against and then wait for someone else to respond.
3. There is a maxiumum of 6 rounds of the debate before it is finished.
4. Other users are always able to update and add to the responses from previous submissions.
5. Users are able to create an account.
6. Each user has a profile which can upload a profile pictured
7. Each user can post and comment in a forum with their other classmates to be able to share information.

There were a few things which weren't able to be complete implemented like the survey results per debate and the follow/unfollow element which would fit really well with the User Debate Interface that they all receive. These elements can be added in the next round of changes depending on feedback from the audience around the MVP product. There were a number of elements that I had to overcome for the debate interface including how I would assign the 'pro' and 'con' argument and how I would restrict the users depending on what they do. I managed to overcome this through creating a separate controller and directing them to two different new paths which would then allow me to do two separate loops and display the data on either side depending on the argument. This also gave me the ability to style and leave open the ability to incorporate different workflows as this progresses to the next stage in the future.

Another part of this project which was a massive learning was around how devise gives you the ability to turn a registration into a profile. Instead of creating a separate scaffold and set of views you are able to use the edit registration path and manage all of your users various details and create a mini dashboard that is easy for them to use. This will be extremely handy in the future as a higher level of involvement and traffic occurs where they will be able to manage multiple debates, submissions and also be able to track their political identity with the VoteCompass API. In regards to the VoteCompass element, the more information the user posts up then we will be able to more accurately.

For the development of the rest of the application, we came up with the structure as pictured above where there were 3 main user cases.


# THE FUTURE OF MY Change

### Social Sharing ###

The core purpose for implementing something like this would be to allow people from different areas to colaborate and develop concepts ideas and be able to share these. The idea behind being able to contribute and add on to different elements will give people the ability 

### Vote Compass API ###

The vote compass API in  will be able to deliver large scale data which can truely reflect what the current population sentiments are through reviewing not only where they sit on the political scale, but also collating inbformation about public opinion through the content in debates and preferences.

### Google News API ### 

Utilsing user preferences on what they are passionate about whether it be economic or environment, they would be able to access up to date articles from various sources and view information.

This could include features such as:

- Keyword association to filter types of news or events that they want to follow in the world.
- Filtering of news sources that they want to keep and sources that they would like to avoid.
- They could save news articles and use these as reference points in their debates/responses.

