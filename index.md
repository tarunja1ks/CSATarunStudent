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







<div class="hobby-container">
    <img src="images/notebooks/foundation/Basketball.jpeg" alt="Basketball Giannis" class="main-image2">
    <p class="basketball-text">
            My favorite sport to play is basketball, and I enjoy to play often times at my neighbhorhood park. Apart from playing basketball for fun, I love to watch nba games and see all of the cool basketball. My favorite team in the NBA is the Bucks, since they have my goat Giannis.
    </p>
    <div class="nbastats">
        <label for="playerName">Player Name</label>
        <input type="text" id="playerName" placeholder="Enter player name">
        <button id="fetchPlayerStats">Fetch Player Stats</button>
        <table id="playerStatsTable">
        <thead>
                <tr>
                    <th>Stat Name</th>
                    <th>Value</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>










<video src="Videos/Robotics.mp4" width="320" height="240" controls></video>














<style>
    .hobby-container {
        display:grid;
        grid-template-columns: repeat(3,1fr);
    }

    .main-image {
        max-width: 500px;
        margin-bottom:50px;
         animation: moving-glow 2s infinite;
        
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

    .nbastats{
         margin-left: 40px;
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




<script>
        document.getElementById('fetchPlayerStats').addEventListener('click', () => {
            var playerName = document.getElementById('playerName').value;
            // var endpoint='https://api-nba-v1.p.rapidapi.com/players?name='+playerName;
            // endpoint="https://api-nba-v1.p.rapidapi.com/players/firstName/Alex";
            const endpoint = `http://b8c40s8.143.198.70.30.sslip.io/api/PlayerDataAdvancedPlayoffs/name/`+playerName;
            if (playerName) {
               fetch(endpoint, {
                    method: 'GET',
                    headers: {
                        // 'x-rapidapi-host': 'api-nba-v1.p.rapidapi.com',
                        // 'x-rapidapi-key': 'dbbcecd80emsh3f4c3a22ac2989ep17e836jsn8ae47631551a'
                    }
                })
                .then(response => response.json())
                .then(data => {
                    // console.log(data);
                    var maxAge=Number(data[0]['age']); // i iterate to get the maximum age to get the latest stats
                    var cur_stats=data[0];
                    for(let i=0;i<data.length;i++){
                        if(Number(data[i]['age'])>maxAge){
                            maxAge=data[i]['age'];
                            cur_stats=data[i];
                        }
                    }
                    console.log(maxAge);
                    console.log(cur_stats);
                    const tableBody = document.getElementById('playerStatsTable').getElementsByTagName('tbody')[0];
                    tableBody.innerHTML = '';
                    Object.entries(cur_stats).forEach(([key, value]) => {
                                const excludedStats = [
                                    'ftr', 'offensiveRBPercent', 'defensiveRBPercent', 'totalRBPercent', 
                                    'assistPercent', 'stealPercent', 'blockPercent', 'turnoverPercent', 
                                    'usagePercent', 'offensiveWS', 'defensiveWS', 'winShares', 
                                    'winSharesPer', 'offensiveBox', 'defensiveBox', 'box', 'vorp','games','minutesPlayed','per','tsPercent',
                                ];
                                if (excludedStats.includes(key)) return;

                                const row = tableBody.insertRow();
                                const cell1 = row.insertCell(0);
                                const cell2 = row.insertCell(1);
                                cell1.textContent = key; 
                                cell2.textContent = value;
                            });

                    })
                .catch(error => {
                    console.error('Error:', error);
                });
            } else {
                console.error('Please enter a player name.');
            }
        });
</script>