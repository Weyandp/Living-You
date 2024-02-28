var locale = new Object();
var config = new Object();

config = {
    lang: "de",
    title: "Living-You",
    subTitle: "GELDWÄSCHE",
    logoUrl: "assets/images/logo.png"
};

locale["de"] = {
    money: "Bargeld",
    blackmoney: "Schwarzgeld",
    inputPlaceholder: "Betrag",
    helpText: "Der untere Betrag beinhaltet die Gebühren",
    confirmButton: "Bestätigen",
    progressText: "Wasche ...",
    infoText: "Wähle ein Angebot oder trage einen eigenen Betrag ein",
    feesText: "Die Gebühren bei der Geldwäsche betragen",
    offer: "Angebot",
    subTextBtn: "ohne Gebühren"
};

locale["en"] = {
    money: "Money",
    blackmoney: "Blackmoney",
    inputPlaceholder: "Amount",
    helpText: "The lower amount includes the fees",
    confirmButton: "Confirm",
    progressText: "Washing ...",
    infoText: "Choose an offer or enter your own amount",
    feesText: "The fees for money laundering are",
    offer: "Offer",
    subTextBtn: "without fees"
};

setLanguge(config.lang);