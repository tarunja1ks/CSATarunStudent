---
layout: base
title: Student Home 
description: Home Page
hide: true
---


<h3>Welcome to Tarun Jaikumar's Page.</h3>



<div class="hobby-container">
    <img src="images/notebooks/foundation/DavesHotChicken.jpeg" alt="Daves Hot Chicken" class="main-image">
   <p class="daves-text">
            One of my favorite restaurants is Daves Hot Chicken. I enjoy many of their menu options, including their juicy and crispy tenders, and their mouth-watering sliders. The spice level I usually get is Hot, but I can handle it with lots of Daves sauce and honey on my meal.
    </p>
    <img src="images/notebooks/foundation/davesfood.jpeg" alt="Side Image" class="Side-image">
</div>







![](images/notebooks/foundation/Basketball.jpeg)









<video src="Videos/Robotics.mp4" width="320" height="240" controls></video>














<style>
    .hobby-container {
        display:grid;
        grid-template-columns: repeat(3,1fr);
    }

    .main-image {
        max-width: 500px;
        margin-bottom:50px;
        
    }

    .daves-text {
        position: relative;
        display: inline-block;
        text-align: center;
        max-width: 320px; 
    }

    .hobby-description {
        margin-bottom: 10px; 
    }

    .Side-image {
        display: block;
        border: 1px solid #ccc; 
        margin-left: 40px;
        animation: moving-glow 2s infinite;
    }


    @keyframes moving-glow {
        0% {
            box-shadow: 0 0 10px rgba(255, 0, 0, 0.8);
        }
        50% {
            box-shadow: 0 0 30px rgba(255, 0, 0, 0.8);
        }
        100% {
            box-shadow: 0 0 10px rgba(255, 0, 0, 0.8);
        }
    }

    @keyframes bounce {
    0%, 20%, 50%, 80%, 100% {
        transform: translateY(0);
    }
    40% {
        transform: translateY(-10px);
    }
    60% {
        transform: translateY(-5px);
    }
}

    h3 {
        text-align: center;
        margin: 20px 0; 
        margin-bottom:30px;
        color: #ff4500; 
        animation: bounce 2s infinite;
    }

</style>
