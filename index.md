---
layout: base
title: Student Home 
description: Home Page
hide: true
---





### Favorite Things to Do


<div class="hobby-container">
    <img src="images/notebooks/foundation/DavesHotChicken.jpeg" alt="Daves Hot Chicken" class="main-image">
    <div class="hobby-description">
        One of my favorite restaurants is Daves Hot Chicken. I enjoy many of their menu options, including their juicy and crispy tenders, and their mouth-watering sliders. The spice level I usually get is Hot, but I can handle it with lots of Daves sauce and honey on my meal.
        <img src="images/notebooks/foundation/davesfood.jpeg" alt="Hover Image" class="hover-image"> 
    </div>
</div>












![](images/notebooks/foundation/Basketball.jpeg)

<video src="Videos/Robotics.mp4" width="320" height="240" controls></video>


<style>
    .hobby-container {
        position: relative;
        display: inline-block;
    }
    
  .hover-image {
        display: none;
        position: absolute;
        top: 0;
        right: -220px; /* Adjust this to control the distance between the images */
        max-width: 200px;
        border: 1px solid #ccc;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
        z-index: 10;
    }

    .hobby-container:hover .hover-image {
        display: block;
    }
</style>
