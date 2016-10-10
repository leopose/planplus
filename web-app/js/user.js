$(document).ready(function(){
	var user = {firstName : '',
	lastName : ''}

	
	$("#btnSave").click(function(e){
		e.preventDefault();

		$("#frmUser").validate();

		if($("#frmUser").valid()){
			user.firstName = $("#txtFirst").val();
			user.lastName = $("#txtLast").val();
			
			$.ajax({
				type: 'POST',
				url: '/PlanPlusApplication/user/save',
				data: user,
				success: function (data) {
					
					if(data.status==="500") {
						alert("Fail to create user.");
						console.log("Due to: " + e);
					}else {
						alert("User created.");
						$("#txtFirst").val(null);
						$("#txtLast").val(null);
					}

				} 
			});
		}

	});

	var table = $('#table').DataTable( {
        "ajax": "/PlanPlusApplication/user",
         "columns": [
           
            { "data": "id" },
            { "data": "firstName" },
            { "data": "lastName" }
        ]
    } );

	$("#btnLoad").click(function(){
		table.ajax.reload();
	})
});

function loadData(){
	table.ajax.reload();
}