var firebaseConfig = {
	apiKey : "AIzaSyCOsmsmUhZe_K_-_nn3d4mzrRtZhQ-gfA8",
	authDomain : "official-database.firebaseapp.com",
	databaseURL : "https://official-database.firebaseio.com",
	projectId : "official-database",
	storageBucket : "official-database.appspot.com",
	messagingSenderId : "992211092659",
	appId : "1:992211092659:web:0c0055f716b6d855cddcc6",
	measurementId : "G-7D1FBPWZE9"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);
var username=document.getElementById("hidenode").value;
$(document).ready(function() {
	checkMode();
	moter();
	masterReset();
	slaveReset();
});

function checkMode() {
	database = firebase.database();
	var reff = database.ref('USER/'+username+'/settings/MASTER_MODE/manual');
	var reff1 = database.ref('USER/'+username+'/settings/MASTER_MODE/motor_on_off');
	
	reff.on('value', gotData);

	function gotData(data) {
		var data=data.val();
		if(data==1)
		{
			$("#mode").prop("checked", true);		
			$("#moter").prop("disabled",false);
		}
		else
		{
			$("#mode").prop("checked", false);
			$("#moter").prop("disabled",true);
			reff1.set(0)
		}
	}
    $('#mode').change(function() {
        if(this.checked) {
        	reff.set(1);
        	$("#moter").prop("disabled",false);
        }
        else{
        	reff.set(0);
        	$("#moter").prop("checked", false);	
        	$("#moter").prop("disabled",true);
        }    
    });
}

function moter() {
	database = firebase.database();
	var reff = database.ref('USER/'+username+'/settings/MASTER_MODE/motor_on_off');
	reff.on('value', gotData);

	function gotData(data) {
		var data=data.val();
		if(data==1)
		{
			$("#moter").prop("checked", true);
		}
		else
		{
			$("#moter").prop("checked", false);
		}
	}
    $('#moter').change(function() {
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
	var reff = database.ref('USER/'+username+'/settings/RESET_NODES/MASTER_RESET');
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


function slaveReset() {
	database = firebase.database();
	var ref1 = database.ref('USER/'+username+'/settings/RESET_NODES/node1reset');
	var ref2 = database.ref('USER/'+username+'/settings/RESET_NODES/node2reset');
	var ref3 = database.ref('USER/'+username+'/settings/RESET_NODES/node3reset');
	var ref4 = database.ref('USER/'+username+'/settings/RESET_NODES/node4reset');
	ref1.on('value', gotData);
	ref2.on('value', gotData);
	ref3.on('value', gotData);
	ref4.on('value', gotData);

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
        	ref1.set(1);
        	ref2.set(1);
        	ref3.set(1);
        	ref4.set(1);
        }
        else{
        	ref1.set(0);
        	ref2.set(0);
        	ref3.set(0);
        	ref4.set(0);
        }    
    });
}

