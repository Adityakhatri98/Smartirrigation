var firebaseConfig = {
    apiKey: "AIzaSyAS4O2P0xde6bt7KSIARhFBtcIM_uwisTE",
    authDomain: "temp-nodewise.firebaseapp.com",
    databaseURL: "https://temp-nodewise.firebaseio.com",
    projectId: "temp-nodewise",
    storageBucket: "temp-nodewise.appspot.com",
    messagingSenderId: "698349958185",
    appId: "1:698349958185:web:8df63c7d85c0b3dd"
  };
  firebase.initializeApp(firebaseConfig);

  var nodedata= [];
    function show()
    {
        database =firebase.database();

        var reff=database.ref('node_data/allnodedata');
        reff.on('value',gotData,errData);

        function gotData(data)
        {
            var users=data.val();
			
			nodedata[0]=users.node1data;
			nodedata[1]=users.node2data;
			nodedata[2]=users.node3data;

			cssVar();
        }
        function errData(err)
        {
            console.log('error!');
            console.log(err);
        }
    }
     /* function update_usr()
      {
           var user_id=document.getElementById('user_id').value ;
            var user_name=document.getElementById('user_name').value;

        var data=
        {
             user_id:user_id,
              user_name:user_name

        }

        var updates={};
        updates['/users/'+user_id]=data;
        firebase.database().ref().update(updates);

        alert('The user is updated  sucessfully');
        reload_page();

      }*/
      function reload_page()
      {
           window.location.reload();
           show();
      }

	function cssVar(){
		var alpha=1000;
		for(var j=0;j<3;j++)
		{
			var convert=((800-nodedata[j])/435)*100;
			convert=convert.toFixed(2);
			if(convert < 0)
			{
				convert=0;
			}
			if(convert>100)
			{
				convert=100;
			}
			var node=document.getElementById(j).style="width:"+convert+'%';

			var disp=document.getElementById(alpha);
			disp.innerHTML=convert+"%";
			alpha++;
		}
		alpha=1000;
		//  var temp=Number(convert);
		//var send=50+(50*temp/100);
		//var value=(-1)*send+'%';
		//document.getElementById('p').innerHTML = temp + "%";

		//document.documentElement.style.setProperty('--percent', value);
		//return getComputedStyle(document.documentElement).getPropertyValue(name);
	}
