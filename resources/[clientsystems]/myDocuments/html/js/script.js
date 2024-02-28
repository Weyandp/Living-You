$(document).ready(function () {
	var selectedLicenses = []
	var targetLicenses = []
	var currentIdentifier = ""
	var showString = ""
	var deleteString = ""
	var subtitleString = ""
	var clickTo = ""
	closeAll()
	// changeLanguage()
	$.getJSON("config.json", function (json) {
		for (const [primKey, primvalue] of Object.entries(json)) {
			const prefix = primKey.substring(0, 2);
			for (const [key, value] of Object.entries(primvalue)) {
				$(`#${prefix}_${key}`).html(value);
			}
			if (primKey == "menu") {
				showString = primvalue["show"]
				deleteString = primvalue["delete"]
				subtitleString = primvalue["subtitle"]
				$('#openLicenseMenu').text(primvalue["openLicenseMenu"]);
				$('.titleDoc').text(primvalue["documents"]);
				$('.titleSubDoc').text(primvalue["documentsSubtitle"]);
				$('#myDocuments').text(primvalue["myDocuments"]);
				$('#savedDocuments').text(primvalue["savedDocuments"]);
			}

			if (primKey == "giveLicenseMenu") {
				$("#verticalTitle").text(primvalue["title"]);
				$("#giveLicensesTitle").text(primvalue["giveTo"]);
				$("#accept").text(primvalue["accept"]);
				$("#abort").text(primvalue["abort"]);
				clickTo = primvalue["assign"]
			}

		}
	});

	window.addEventListener('message', (event) => {
		const data = event.data
		switch (data.type) {
			case "showCard":
				showCard(data.card, data.data)
				break;
			case "closeAll":
				closeAll()
				break;
			case "closeCard":
				$(`#${data.card}`).hide();
				break;
			case "openMenu":
				openMenu(data.ownedDocs, data.savedDocs, data.giveableLicenses)
				break;
			case "hideMenu":
				$('#menu').hide();
				break;
			case "showMenu":
				$('#menu').show();
				break;
			case "refreshSavedDocs":
				refreshSavedDocs(data.datas)
				break;
			case "setName":
				selectedLicenses = []
				for (const i in data.targetLicenses) {
					const v = data.targetLicenses[i];
					var elem = $("#licenses").find(`[data-type='${v.type}']`)
					selectedLicenses.push(v.type)
					if (elem.text() != "") {
						elem.find("i").text("check_circle")
						elem.toggleClass("selected")
					} 
				}
				currentIdentifier = data.identifier
				var string = $('#giveLicensesTitle').text();
				$('#giveLicensesTitle').text(string.replace("NAMEPLACEHOLDER", data.name));
				$('#licensesMenu').show();
				$('#menu').hide();
				break;
			case "setCardLocation":
				const list = document.getElementsByClassName("sect")
				while (list.length != 0) {
					list[0].className = data.position
				}
				break;
			default:
				console.log("The type is not registered");
				break;
		}
	})

	$('#savedDocuments').click(function (e) {
		$("#myDocumentsList").hide()
		$("#savedDocumentsList").show()
		$("#myDocuments").removeClass("selected");
		$(this).addClass("selected")
	});

	$('#myDocuments').click(function (e) {
		$("#savedDocumentsList").hide()
		$("#myDocumentsList").show()
		$("#savedDocuments").removeClass("selected");
		$(this).addClass("selected")
	});

	$('#closeBtn').click(function (e) {
		$("#menu").hide()
		$.post('http://myDocuments/closeMenu');
	});

	$('#openLicenseMenu').click(function (e) {
		$.post('http://myDocuments/openLicenseMenu');
	});

	$('#accept').click(function (e) {
		console.log(currentIdentifier);
		$.post('http://myDocuments/addLicenses', JSON.stringify({ licenses: selectedLicenses, identifier: currentIdentifier }));
		$('#licensesMenu').hide();
		$('#menu').show();
		selectedLicenses = []
		currentIdentifier = ""

		const elem = document.getElementById("licenses")
		const list = elem.getElementsByClassName("selected")
		while (list.length != 0) {
			$('#licenses').find(".selected").find("i").text("lens");
			list[0].className = "license"
		}
		$.post('http://myDocuments/removeBlur');
	});

	$('#abort').click(function (e) {
		$('#licensesMenu').hide();
		$('#menu').show();
		selectedLicenses = []
		currentIdentifier = ""
		const elem = document.getElementById("licenses")
		const list = elem.getElementsByClassName("selected")
		while (list.length != 0) {
			$('#licenses').find(".selected").find("i").text("lens");
			list[0].className = "license"
		}
		$.post('http://myDocuments/removeBlur');
	});
	// showCard("hunting", {firstname: "Flo", name: "Wayne", address: "Hier und da", sex: "M", dob: "06.06.1993", id: 37216168453, doi: "27.07.2022"})
	// console.log(JSON.stringify({firstname: "Flo", name: "Flo Wayne", address: "Hier und da", sex: "M", dob: "06.06.1993", id: 37216168453, doi: "27.07.2022"}));
	function showCard(card, data) {
		$("#" + card).show();
		var prefix = "#" + card.substring(0, 2) + "_"
		for (const v in data) {
			// console.log(prefix + v);
			$(prefix + v).html(data[v]);
		}

		if ($(prefix + "sexImg")) {
			if (card != "businessCard") {
				if (data["sex"] == "M") {
					$(prefix + "sexImg").attr("src", "./img/male.png");
				} else {
					$(prefix + "sexImg").attr("src", "./img/female.png");
				}
				return
			} else if (data["sex"] == "M") {
				// $("#businessCard").css("background-color", "blue");
				$("#businessCard").css("background-image", "url('./img/bu_male.png')");
			} else {
				$("#businessCard").css("background-image", "url('./img/bu_female.png')");
			}
		}
	}

	function closeAll() {
		$('#idcard').hide();
		$('#drive').hide();
		$('#hunting').hide();
		$('#fly').hide();
		$('#boat').hide();
		$('#md').hide();
		$('#pd').hide();
		$('#weapon').hide();
		$('#lawyer').hide();
		$('#businessCard').hide();
		$('#menu').hide();
		$('#licensesMenu').hide();
	}

	function refreshSavedDocs(savedDocs) {
		var savedDocsString = ""
		$('#savedDocumentsList').html("");

		for (const i in savedDocs) {
			const v = savedDocs[i];

			savedDocsString += `
				<div class="document white madeTommyRegular noMarginPadding" data-type="${v.type}" data-id="${v.id}">
					<div id="titleDiv">
						<p id="title" class="noMarginPadding">${v.label}</p>
						<p id="subtitle" class="noMarginPadding">${v.timestamp}</p>
					</div>
					<img src="./img/${v.type}Preview.png" class="noMarginPadding">
					<p id="button" class="noMarginPadding delete">${deleteString}</p>
				</div>`

			$('#savedDocumentsList').html(savedDocsString);

			$('.delete').click(function (e) {
				$.post('http://myDocuments/delete', JSON.stringify({ id: $(this).parent().data("id") }));
				$(this).parent().remove();
			});

			$('.document').click(function (e) {
				if ($(e.target).text() != $(this).find(".delete").text()) {
					$('#menu').hide();
					console.log($(this).parent().data("id"));
					$.post('http://myDocuments/showMe', JSON.stringify({ type: $(this).data("type"), id: $(this).parent().data("id") }));
				}
			});
		}
	}


	function openMenu(ownedDocs, savedDocs, giveableLicenses, targetLicenses) {
		$('#savedDocumentsList').hide();
		$('#myDocumentsList').show();
		$("#myDocuments").addClass("selected");
		$("#savedDocuments").removeClass("selected")
		var myDocumentsString = ""
		var savedDocsString = ""

		for (const i in ownedDocs) {
			const v = ownedDocs[i];

			myDocumentsString += `
			<div class="document white madeTommyRegular noMarginPadding" data-type="${v.type}">
				<div id="titleDiv">
					<p id="title" class="noMarginPadding">${v.label}</p>
					<p id="subtitle" class="noMarginPadding">${subtitleString}</p>
				</div>
				<img src="./img/${v.type}Preview.png" class="noMarginPadding">
				<p id="button" class="noMarginPadding show">${showString}</p>
			</div>`

			$('#myDocumentsList').html(myDocumentsString);

			$('.show').click(function (e) {
				$.post('http://myDocuments/showOther', JSON.stringify({ type: $(this).parent().data("type") }));
			});

			$('.document').click(function (e) {
				console.log($(e.target).text(), $(this).find(".show").text(), $(e.target).text() != $(this).find(".show").text(), $(e.target).text().length, $(this).find(".show").text().length);
				if ($(e.target).text() != $(this).find(".delete").text() && $(this).find(".show").text() != $(e.target).text()) {
					$('#menu').hide();
					$.post('http://myDocuments/showMe', JSON.stringify({ type: $(this).data("type") }));
				}
			});
		}

		for (const i in savedDocs) {
			const v = savedDocs[i];

			savedDocsString += `
					<div class="document white madeTommyRegular noMarginPadding" data-type="${v.type}" data-id="${v.id}">
						<div id="titleDiv">
							<p id="title" class="noMarginPadding">${v.label}</p>
							<p id="subtitle" class="noMarginPadding">${v.timestamp}</p>
						</div>
						<img src="./img/${v.type}Preview.png" class="noMarginPadding">
						<p id="button" class="noMarginPadding delete">${deleteString}</p>
					</div>`

			$('#savedDocumentsList').html(savedDocsString);

			$('.delete').click(function (e) {
				$.post('http://myDocuments/delete', JSON.stringify({ id: $(this).parent().data("id") }));
				$(this).parent().remove();
			});

			$('.document').click(function (e) {
				if ($(e.target).text() != $(this).find(".delete").text() && $(this).find(".show").text() != $(e.target).text()) {
					$('#menu').hide();
					$.post('http://myDocuments/showMe', JSON.stringify({ type: $(this).data("type"), id: $(this).data("id") }));
				}
			});
		}

		if (giveableLicenses.length > 0) {
			$('#openLicenseMenu').show();
			selectedLicenses = []
			var string = ""
			for (const i in giveableLicenses) {
				const v = giveableLicenses[i];

				string += `<div class="license" data-type="${v.type}">
					<i class="material-icons">lens</i>
					<div>
						<p class="licenseTitle noMarginPadding">${v.label}</p>
						<p class="licenseSubtitle noMarginPadding">${clickTo}</p>
					</div>
				</div>`

			}
			$('#licenses').html(string);

			$('.license').click(function (e) {
				$(this).toggleClass("selected");
				if ($(this).hasClass("selected")) {
					selectedLicenses.push($(this).data("type"))
					$(this).find("i").text("check_circle");
				} else {
					var index = selectedLicenses.indexOf($(this).data("type"));
					selectedLicenses.splice(index, 1);
					$(this).find("i").text("lens");
				}
			});
		} else {
			$('#openLicenseMenu').hide();
		}
		$('#menu').show();
	}
});