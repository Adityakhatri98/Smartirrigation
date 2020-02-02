var firebaseConfig = {
			apiKey : "AIzaSyAS4O2P0xde6bt7KSIARhFBtcIM_uwisTE",
			authDomain : "temp-nodewise.firebaseapp.com",
			databaseURL : "https://temp-nodewise.firebaseio.com",
			projectId : "temp-nodewise",
			storageBucket : "temp-nodewise.appspot.com",
			messagingSenderId : "698349958185",
			appId : "1:698349958185:web:8df63c7d85c0b3dd"
		};
firebase.initializeApp(firebaseConfig);

$(document).ready(function() {

	checkMode();
	masterReset();
	salveReset();
});

function checkMode() {
	database = firebase.database();
	var reff = database.ref('settings/MASTER_MODE/manual');
	reff.on('value', gotData);

	function gotData(data) {
		var data=data.val();
		if(data==1)
		{
			$("#mode").prop("checked", true);
		}
		else
		{
			$("#mode").prop("checked", false);
		}
	}
    $('#mode').change(function() {
        if(this.checked) {
        	reff.set(1);
        }
        else{
        	reff.set(0);
        }    
    });
}


function masterReset() {
	database = firebase.database();
	var reff = database.ref('settings/RESET_NODES/MASTER_RESET');
	reff.on('value', gotData);

	function gotData(data) {
		var data=data.val();
		if(data==1)
		{
			$("#mreset").prop("checked", true);
		}
		else
		{
			$("#mreset").prop("checked", false);
		}
	}
    $('#mreset').change(function() {
        if(this.checked) {
        	reff.set(1);
        }
        else{
        	reff.set(0);
        }    
    });
}


function salveReset() {
	database = firebase.database();
	var reff = database.ref('settings/RESET_NODES/SLAVE_RESET');
	reff.on('value', gotData);

	function gotData(data) {
		var data=data.val();
		if(data==1)
		{
			$("#sreset").prop("checked", true);
		}
		else
		{
			$("#sreset").prop("checked", false);
		}
	}
    $('#sreset').change(function() {
        if(this.checked) {
        	reff.set(1);
        }
        else{
        	reff.set(0);
        }    
    });
}

