/*
██ ███    ██ ████████ ██████   ██████  
██ ████   ██    ██    ██   ██ ██    ██ 
██ ██ ██  ██    ██    ██████  ██    ██ 
██ ██  ██ ██    ██    ██   ██ ██    ██ 
██ ██   ████    ██    ██   ██  ██████  
*/
function registerIntroView(introName) {
	$.post(`https://${resName}/registerIntroView`, JSON.stringify({introName}));
}

async function hasIntroBeenViewed(introName) {
	return await $.post(`https://${resName}/hasIntroBeenViewed`, JSON.stringify({introName}));
}


/*
███    ██  ██████  ████████ ██ ███████ ██  ██████  █████  ████████ ██  ██████  ███    ██ ███████ 
████   ██ ██    ██    ██    ██ ██      ██ ██      ██   ██    ██    ██ ██    ██ ████   ██ ██      
██ ██  ██ ██    ██    ██    ██ █████   ██ ██      ███████    ██    ██ ██    ██ ██ ██  ██ ███████ 
██  ██ ██ ██    ██    ██    ██ ██      ██ ██      ██   ██    ██    ██ ██    ██ ██  ██ ██      ██ 
██   ████  ██████     ██    ██ ██      ██  ██████ ██   ██    ██    ██  ██████  ██   ████ ███████ 
*/

const cssLink = document.createElement("link");
cssLink.href = "../utils/dialogs/misc/misc.css";
cssLink.rel = "stylesheet";
cssLink.type = "text/css";

document.head.appendChild(cssLink);

async function confirmDeletion(message) {
	const wantsToDelete = await swal({
		title: getLocalizedText("menu:are_you_sure"),
		text: message,
		icon: "warning",
		buttons: true,
		dangerMode: true,
	});
	return wantsToDelete;
}