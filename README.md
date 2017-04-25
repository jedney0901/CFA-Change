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


# IDEATION

Working through the ideas for this project were pretty hard considering the areas that we had to look at developing for, especially as they aren't area's I have experience in. From the beginning I knew I wanted to do a political based app to help young people be able to have a platform which could enable them to share and discuss different topics in a safe and easy to navigate environment unlike social media platforms which can turn into mudslinging and bullying.

There were a lot of different features that I thoguht I could incorporate into this project and very quickly I realised that I was going to be biting off more than I could chew especially timeframes and experience. The core features that I wanted to include were:

- Debate generator where people are able to contribute and build on each others responses.
- UI where they can access and see a live feed of all new debates, their current debates and the last submissions on those debates.
- API to Votecompass (An app which allows you to navigate and understand where you sit on the political spectrum based on where major parties are currently at.
- Survey functionality where I would be able to send out large scale emails to the target audience and gather information around youth sentiments. This would be allow me to combine the data and present it back for analysis based on current policies.
- News feed based on personal political preferences e.g. environmental, economic etc...
- Incorporating analytics based around popularity of debates, comments, sentiment, political preferences.
- Bibliographical checker API or potentially connect to the Polifacts API

There are a number of limitations around building an app like this which need to be taken into account especially based around how it would be deployed, how to make it as engaging as possible and how to make it scalable so that the analytics produced are strong enough. With the limited amount of time I decided to focus purely on being able to try and make it engaging through making it visually appealing and also see if I was able to get the basic functoinality down before moving onto the next stage and incorporating the more complex elements.


# HOW WAS IT BUILT?

For our project we using a ruby on rails structure utilising the postgresql framework so that we were able to deploy directly to heroku without any issues. As we are planning on deploying through Heroku we also must come up with a way which allows the app to access images and I decided to implement AWS S3 using Nick Whu's guide (Thanks mate). To determine my sitemap and actual App structure I used sketch to plan out all the pages I thought I would need and made a basic wireframe with a general idea of how my colour scheme would turn out but nothing set in stone. In the end, the only one I wasn't able to implement was the preferences page where they could select the type of news and articles they would want to review.

My site structure looks like as follows:

![login register](https://cloud.githubusercontent.com/assets/25731546/24841758/9d352326-1dce-11e7-8621-a2b0778a1658.png)

![home](https://cloud.githubusercontent.com/assets/25731546/24841759/9d369d14-1dce-11e7-96f7-bf5ae3f1fb03.png)

![profile](https://cloud.githubusercontent.com/assets/25731546/24841757/9d34ec8a-1dce-11e7-914d-429bbb7c9aec.png)

![forum](https://cloud.githubusercontent.com/assets/25731546/24841756/9d344096-1dce-11e7-8b67-9e52912293a3.png)

For this project we used the following gems:

1. Bootstrap-sass - Bootstrap CSS Styling
2. Devise - Authentication
3. Carrierwave - Photo and file upload
4. Mini_magick - Required gem for Carrierwave


There were a few different factors that we needed to take into account when scoping out this idea, especially the fact that none of us were VR gurus with the capability of building a fully fledged Virtual Class Room. For the VR component we used A-Frame which is a framework which utilises JavaScript and basic HTML code to format and develop your ideas. The language is fairly intuitive but one of the things we noticed pretty quickly is that there are very limited tutorials and documentation to provide guidance. As we were using a fairly basic structure for our application we were able to allocate some resources to purely developing the VR scenarios which gave them time to understand and play around with the framework to come up with an MVP Solution. Using real life imagery and resources from our Coder Factory course, we were able to create a two step process for the users, the first being that they could land on a site and choose the topic/class that they were looking to join and the second being the actual VR classroom. The VR classroom incorporates a virtual teacher (Jamie), a blackboard which can use audio/video such as a screen record showing step throughs of their code courses and the ability to have a large scale amount of students accessing those resources from anywhere.

For the development of the rest of the application, we came up with the structure as pictured above where there were 3 main user cases.

- Users are able to create an account.
- Each user has a profile which can upload a profile pictured
- Each user can post and comment in a forum with their other classmates to be able to share information.

This was a fairly simple structure to work with and it didn't really provide too many roadblocks during development. The only issue that we were having was including the profile picture for each different profile. Firstly we started off creating a migration which added a new column to the User mode, we wanted to save it to the User model because it could be used for multiple things tied to that user. It was only once we had fully implemented Carrierwave we noticed that there was a few issues when trying to access their User image through their profiles. The issue was that the image was being uploaded without a problem but it was unable to be saved directly to the User model due to an issue with bi-directional access**. As part of troubleshooting this issue, we ran through a series of alternatives but in the end the easiest and most functional way of doing it was to attach the profile image directly to their profile and access it through that.



# THE FUTURE OF VCR

The development of this concept comes with the ability for significant growth as accessibility and funding become more available. Currently as our MVP product stands the application can accomodate Users need to be able to access an online classroom, a forum to access and share materials, and a way for them to interact with the wider tech community. If this product were to extend to the next stage then we would look at including other user stories such as:

- Implementing better accessibility practices into our application.
- Complete development of the classroom experience including any additional functionality our research would show they require.
- Providing after class student areas where they can interact and share experiences like community areas and study rooms.
- Ability to put up and share code snippets/resources directly in the virtual space, we would like to make this as visually compelling as possible.
- Recording the teacher segments so they are able to alter and improve their teaching skills.
