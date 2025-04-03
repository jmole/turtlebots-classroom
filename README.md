# Turtlebots Classroom

This game includes the turtlebots mod, and basically nothing else. 

The goal is to allow students to play the turtlebots mod without the distraction of other minetest/luanti game mechanics.

## Video Overview

This video provides a quick overview of turtlebots:
<a href="https://www.youtube.com/watch?v=UR30MB3449k">
  <div class="youtube-container">
    <div class="youtube-title">Turtlebots - Programmable Robots for Luanti</div>
    <img src="https://img.youtube.com/vi/UR30MB3449k/0.jpg" alt="Video thumbnail">
    <div class="youtube-overlay">
      <div class="youtube-play-button"></div>
      <div style="visibility: hidden;" class="youtube-text">youtube.com</div>
    </div>  
  </div>
</a>


## More information:

- [void game](https://git.0x7be.net/dirk/void) is the base game that this is forked from.
- [turtlebots mod](https://github.com/jmole/turtlebots) is the mod that adds the turtlebots to the game.

Each of these projects have their own licenses, which you can find in the respective repositories.


<!-- nothing but CSS past this point -->

<style>
  .youtube-container {
    font-family: Arial, sans-serif;
    position: relative;
    width: 100%;
    max-width: 560px;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  }
  
  .youtube-container img {
    width: 100%;
    display: block;
  }
  
  .youtube-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.1);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    cursor: pointer;
  }
  
  .youtube-play-button {
    width: 68px;
    height: 48px;
    background-color: rgba(0, 0, 0, 0.7);
    border-radius: 14px;
    display: flex;
    justify-content: center;
    align-items: center;
    transition: background-color 0.2s;
  }
  
  .youtube-play-button:before {
    content: "";
    border-style: solid;
    border-width: 10px 0 10px 20px;
    border-color: transparent transparent transparent white;
  }
  
  .youtube-container:hover .youtube-play-button {
    background-color: #ff0000;
  }
  
  .youtube-text {
    visibility: visible !important;
    position: absolute;
    bottom: 12px;
    left: 12px;
    color: white;
    font-size: 12px;
    background-color: rgba(0, 0, 0, 0.7);
    padding: 4px 8px;
    border-radius: 4px;
  }
  
  .youtube-title {
    z-index: 10;
    position: absolute;
    top: 4px;
    left: 10px;
    text-align: left;
    font-size: 14px;
    font-weight: bold;
    margin: 8px 0;
    padding: 4px 8px;
    color: #ffffff;
  }
</style>