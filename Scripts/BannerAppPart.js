// Read a page's GET URL variables and return them as an associative array.
function getUrlVars() {
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for (var i = 0; i < hashes.length; i++) {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = decodeURIComponent(hash[1]);
    }
    return vars;
}

//Init vars
var queryStrings = getUrlVars();

var animationSpeed = queryStrings["ASpeed"];
var pauseTime = queryStrings["PauseTime"];
var effectType = queryStrings["Effect"];
var navThumbs = queryStrings["NavThumbs"];
var themeColor = queryStrings["ThemeColor"];
var themeStyle = queryStrings["ThemeStyle"];

navThumbs = (navThumbs === 'true');

if (!animationSpeed) {
    animationSpeed = 500;
}
if (!pauseTime) {
    pauseTime = 3000;
}
if (!effectType) {
    effectType = 'random';
}
if (!themeColor) {
    themeColor = 'rgba(0, 114, 198, 0.5)';
}
if (!themeStyle) {
    themeStyle = 'bar';
}

// This code runs when the DOM is ready and creates a context object which is needed to use the SharePoint object model
$(document).ready(function () {
    $('#linkThemeStyle').attr('href', '../Content/themes/' + themeStyle + '/style.css');

    $('#slider').nivoSlider({
        animSpeed: animationSpeed,
        pauseTime: pauseTime,
        effect: effectType,
        controlNavThumbs: navThumbs
    });

    if (themeStyle == "bar") {
        $(".theme .nivo-controlNav").css("border-top", themeColor).css("background-color", themeColor);
    }
    else {
        $(".slider-wrapper.theme").css("background-color", themeColor);
    }

});

