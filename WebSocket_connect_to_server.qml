import QtQuick
import QtWebSockets

WebSocket {
    id: socketConnection
    active: false
    url: "ws://localhost:3000"

    property string errStr

    signal notRegistred;
    signal connectionError;

      //Стоковый пример, как надо делать
    //onTextMessageReceived: {
    //    messageBox.text = messageBox.text + "\nReceived message: " + message
    //}
    //onStatusChanged: if (socket.status == WebSocket.Error) {
    //                     console.log("Error: " + socket.errorString)
    //                 } else if (socket.status == WebSocket.Open) {
    //                     socket.sendTextMessage("Hello World")
    //                 } else if (socket.status == WebSocket.Closed) {
    //                     messageBox.text += "\nSocket closed"
    //                 }

    onStatusChanged: if (socketConnection.status == WebSocket.Error)
                     {
                         errStr = socketConnection.errorString;
                         socketConnection.connectionError();
                     }
                     else if (socketConnection.status == WebSocket.Open)
                     {

                         socketConnection.notRegistred();
                         socketConnection.addEventListener('message'); //НЕ ЗАБЫТЬ ОТПИСАТЬСЯ ПРИ ОТКЛЮЧЕНИИ
                           //Можно сделать с такой js лямбдой :)
                         //client.addEventListener('message', function(event) {
                         //    console.log('Message from server' , event.data);});


                     } else if (socketConnection.status == WebSocket.Closed) {
                         console.log("\nSocket closed");
                     }







}



