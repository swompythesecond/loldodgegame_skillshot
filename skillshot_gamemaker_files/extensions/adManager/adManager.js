var currentRoom = "lobby";


function adRoom(room) {
    currentRoom = room;
    console.log("Room set to: " + currentRoom);
    parent.updateAds();
}
