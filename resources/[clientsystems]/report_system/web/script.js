/*
	Author: Zuck3rFr3i
*/
window.addEventListener('message', (event) => {
    if (event.data.type === 'report') {
		if (event.data.enable === 1){
			document.getElementById("mainbody").hidden=false;
            document.getElementById("disclaimer").hidden=false;
		}else{
		    document.getElementById("mainbody").hidden=true;
            document.getElementById("disclaimer").hidden=true;
		}
    }
});

document.getElementById("mainbody").hidden=true;
document.getElementById("disclaimer").hidden=true;


$("#btnsend").click(function() {
        var descript = document.getElementById('reason');
		var array = descript.value
		var title = document.getElementById('repres').value;
        fetch(`https://${GetParentResourceName()}/sendreport`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body: JSON.stringify({
                state: 'send',
                titlestr: title,
                description: array
            }),
        }).then(resp => resp.json()).then(resp => console.log(resp));
});

$( "#btnclose" ).click(function() {
    fetch(`https://${GetParentResourceName()}/closeui`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify({
            state: 'close'
        })
    }).then(resp => resp.json()).then(resp => console.log(resp));
});