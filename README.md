# Welcome to Team Happy's Lets Get Git Hackathon concept and development README.

This is a hackathon aimed at addressing issues that arise in education, we were given three options to choose from and two days to get everything ready to go.

***The issues we were presented with were:

1. Poor access to tech education for disabled learners

2. How do you know what you don’t know if self educating?

3. Hard to accommodate both students who are struggling and excelling in a classroom***

This README file explains our concepts, our project and the applications possible.

# INTRODUCTION - VCR BACK TO THE FUTURE

The Virtual Classroom Room is an application designed to help create a real life scenario for disabled or affected people to be able to interact and learn in a constructive environment. The idea behind this stems from the issue of helping people who are unable to participate in normal learning environments and creating a world where they are able to access classes based on different topics, teachers, scenarios to provide them an authentic VR learning experience where they are able to interact in real time with other students, courses and information.


# IDEATION

There were a number of steps that we went through when determining our end concept for this project, the first being deciding what question we would address for this. To begin with, as a team we worked together to brainstorm ideas coming up with a minimum of 1 idea per question, the list of ideas we had are below:

1. ***Accomodating both students who are struggling and excelling in a classroom.***
  * ***Seat Assignment App*** - The idea behind this was to come up with a way to assign a student his chair in the classroom based on a number of factors including their ability, their suitability and basic requirements.

2. ***How do you know what you don't know if self educating.***
  * ***VR Social App*** - Where you can connect with other people in your location who are self-learning the same languages or topic. You could organise meet ups or access a virtual class room which would allow you to discuss, trade and develop your education using informal self-learning channels. It would use a tiered structure where people who are further along are required to teach and help those below them in the learning process.
  * ***VR Internship Simulator*** - Experience a set of simulations of what it's like to be working in a job as an x developer at x company.
  * ***Online Course*** - set deadlines to complete content eg for each week.

3.***Poor access to tech education for disabled learners***
  * ***Virtual Classroom App*** - An app for those who are unable to leave their house or hospital. This    would give people who have access to VR headsets to
  * ***Virtual Guide Dog - An app for the visually disabled*** - A virtual guide dog which helps you teach and navigate topics in a special way that addresses their needs.
  * ***Social Community for disabled tech students*** - An app that connects people studying in the tech sector to try and build a wider community.


We ended up choosing poor access as this was one which had a higher degree of difficulty and it's potential to be used in various types of scenarios with the aim of providing education to lots of niche audiences who are unable to access education at the moment. We envision that an application like this would be a fully accredited course which could then be heavily supported by government programs giving disability students better accessibility and funds for using a program such as this. The idea behind this would be also to extend this past just disability students and extending it to students of all types who either have non-physical disabilities or students who are looking for alternative learning experiences. The user stories that we developed for this idea were boiled down to very basic components we knew we would need to provide as an MVP product. The ability to build out functionality which would fall outside the MVP product are endless and opens up the ability for users to be able to access the wider tech community through one simple medium.

# HOW WAS IT BUILT?

For our project we using a ruby on rails structure utilising the sqlite DB framework that comes standard with new rails projects. When determining the actual structure of the site we used a few different things but the easiest way to lay it all out was using pen and paper to draw the application map assign the required functionality for each step of the way along with the gems required.

Our site structure looks like as follows:

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
