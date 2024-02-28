let resource

var AutoFill
var alreadyLoggedIn = false
var username
var password

function SaveCredentials() {
		if (username && password) {
			$.post('http://' + resource +'/saveUserData', JSON.stringify({
				username: username,
				password: password
			}));
		}
}

function FrameReloaded() {
	var iframe = document.getElementById("frame")
	var isource = iframe.contentWindow.location.href

	if (isource == "https://emergencyos.de/index.php") {
		Logout()
	}
}

function AutoFillCreds()
{
	var iframe = document.getElementById("frame")
	var inputusername = iframe.contentDocument.getElementById("username")
	var inputpassword = iframe.contentDocument.getElementById("password")
	inputusername.value = username;
	inputpassword.value = password;
}

function AutoLogin() {

	var iframe = document.getElementById("frame")
	var inputusername = iframe.contentDocument.getElementById("username")
	var inputpassword = iframe.contentDocument.getElementById("password")
	inputusername.value = username;
	inputpassword.value = password;
	var button = iframe.contentDocument.getElementById("loginbutton")

	button.click()

	setTimeout(LoginUser, 1000)
}

function LoginUser() {
	alreadyLoggedIn = IsUserLoggedIn()

	if (alreadyLoggedIn) {
		SaveCredentials()
		sendResouceName()
	} else {
		ManualLogin()
	}
}

function sendResouceName() {
	console.log("pasting client message")
	var iframe = document.getElementById("frame")
	iframe.contentWindow.postMessage(resource, '*')
}

function Logout() {
	if (AutoFill.AutoFillLogout) {
			AutoFillCreds()
			ManualLogin()
	} else {
		ManualLogin()
	}
}

function ManualLogin() {
	var iframe = document.getElementById("frame")
	var inputusername = iframe.contentDocument.getElementById("username")
	var inputpassword = iframe.contentDocument.getElementById("password")
	var loginbutton = iframe.contentDocument.getElementById("loginbutton")
	
	loginbutton.addEventListener("click", function(e) {
		username = inputusername.value
		password = inputpassword.value
		setTimeout(LoginUser, 500)
	}, false);
}

function IsUserLoggedIn() {
	var iframe = document.getElementById("frame")
	var isource = iframe.contentWindow.location.href

	if (isource.includes('https://emergencyos.de/App/')) {
		return true
	} else {
		return false
	}
}


$(document).ready(function(){
	window.addEventListener('message', function(event) {
		var data = event.data;

		if (data.name) {
			resource = data.name
		}

		AutoFill = data.autofillcfg

		if (data.show == true) {
			document.getElementById('emos-body').style.display = 'block';

			username = data.username
			password = data.password
			console.log("IsFullScreen", data.fullScreen)
			if (data.fullScreen) { //Warum auc immer vertauscht dont ask
				document.getElementById("wrapper").classList.remove("wrapper");
				document.getElementById("wrapper").classList.add("wrapper-fullscreen");
			} else {
				document.getElementById("wrapper").classList.remove("wrapper-fullscreen");
				document.getElementById("wrapper").classList.add("wrapper");
			}

			var islogged = IsUserLoggedIn()

			if (!islogged) {

				if (username && password) {
					if (AutoFill.AutoFillPW) {
						if (AutoFill.AutoLogin) {
							AutoFillCreds()
							AutoLogin()
						} else {
							AutoFillCreds()
							ManualLogin()
						}
					} else {
						ManualLogin()
					}
				} else {
					ManualLogin()
				}
			} else {
				alreadyLoggedIn = true
				sendResouceName()
			}
		} else {
			document.getElementById('emos-body').style.display = 'none';
		}
	});


	$(document).keydown((event) => {
		if (event.which == 27 || event.which == 77) {
			$.post('http://' + resource +'/close', JSON.stringify({}));
		}
	})
});