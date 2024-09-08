---
layout: base
title: Student Home 
description: Home Page
hide: true
---


<h3>Welcome to Tarun Jaikumar's Page.</h3>









<div class="hobby-container">
    <video src="Videos/Robotics.mp4" width="280" height="240" controls class="video-class"></video>
    <p class="RTT-text">
        - FTC Runtime Terror#22105 (I'm co-captain and programmer)
        <br><br>
        - Made Swerve Drive
        <br><br>
        - Uses kinematics/math for autonomous pathing
        <br><br>
        - Made v1 of a GUI to make auto paths easier to create
    </p>
    <img src="images/notebooks/foundation/Ftcsimexample.png" alt="Side Image" class="Side-image3">
</div>




<h3>Checkout my Media Links.</h3>
Subscribe to my [Youtube Chanel](https://www.youtube.com/@tarunjaikumar9058/featured) !!

Go to my [Github account](https://github.com/tarunja1ks) !!











<style>
    .hobby-container {
        display:grid;
        grid-template-columns: repeat(3,1fr);
        margin-bottom:50px;
    }

    .main-image {
        max-width: 500px;
        margin-bottom:50px;
        animation: moving-glow 2s infinite;
        margin-right:50px;
        
    }

    .main-image2{
        max-width: 500px;
        margin-bottom:70px;
         animation: moving-glow2 2s infinite;
        margin-right:50px;
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
        margin-left: 40px;
        animation: moving-glow 2s infinite;
    }

    .Side-image3 {
        display: block;
        margin-left: 40px;
        animation: moving-glow3 2s infinite;
    }

    .video-class {
        animation: moving-glow3 2s infinite;
        margin-right:50px;
    }

    .nbastats{
         margin-left: 40px;
         animation: moving-glow2 2s infinite;
    }


    @keyframes moving-glow3 {
        0% {
            box-shadow: 0 0 10px rgba(0, 0, 255, 0.8);
        }
        50% {
            box-shadow: 0 0 30px rgba(0, 0, 255, 0.8);
        }
        100% {
            box-shadow: 0 0 10px rgba(0, 0, 255, 0.8);
        }
    }

    @keyframes moving-glow2 {
        0% {
            box-shadow: 0 0 10px rgba(0, 255, 0, 0.8)
        }
        50% {
             box-shadow: 0 0 30px rgba(0, 255, 0, 0.8)
        }
        100% {
            box-shadow: 0 0 10px rgba(0, 255, 0, 0.8)
        }
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
                color: #0D98BA; 
            }
            40% {
                transform: translateY(-5px); 
                color: #32cd32; 
            }
            60% {
                transform: translateY(-5px); /
                color: #32cd32; 
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




