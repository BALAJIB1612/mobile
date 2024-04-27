function updateTime() {
    var currentTime = new Date();
    var hours = currentTime.getHours();
    var minutes = currentTime.getMinutes();
    var seconds = currentTime.getSeconds();
    var meridiem = "AM"; // Default to AM

    // Convert 24-hour time to 12-hour format
//    if (hours >= 12) {
//        meridiem = "PM";
//        if (hours > 12) {
//            hours -= 12;
//        }
//    }

    // Add leading zeros to single digit minutes and seconds
    minutes = (minutes < 10 ? "0" : "") + minutes;
    seconds = (seconds < 10 ? "0" : "") + seconds;

    // Update the time display
    var clockDiv = document.getElementById('clock');
    clockDiv.innerText = hours + ":" + minutes + ":" + seconds;
    document.getElementById('timetxt').value = hours + ":" + minutes + ":" + seconds;
    //document.getElementById('outtimtTxt').value = hours + ":" + minutes + ":" + seconds;
}

function attachAutoComplete() {
    $find('<%= AutoCompleteExtender2.ClientID %>').set_targetControlID('sidTxt,logoutTxt');
    $find('<%= AutoCompleteExtender2.ClientID %>').set_serviceMethod('Getloginsid,Getlogoutsid');
}

// Update the time every second
setInterval(updateTime, 1000);
Sys.Application.add_load(attachAutoComplete);
