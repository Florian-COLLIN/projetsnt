
function getParameters(){
    var urlParams, match, pl = /+/g, // Regex for replacing addition symbol with a space
    search = /([^&=]+)=?([^&]*)/g,
    decode = function (s) { return decodeURIComponent(s.replace(pl, )); },
    query = window.location.search.substring(1);
    urlParams = {};
    while (match = search.exec(query))
    urlParams[decode(match[1])] = decode(match[2]);
    return urlParams;
}

function on_page_loaded(){
    var inscription = true;
    params = getParameters();
    if(Object.keys(params).includes("type")){
        inscription = params["type"] == "inscription";
    }
    if(inscription){
        document.getElementById("div_connection").style.display = "none";
        document.getElementById("div_inscription").style.display = "initial";
    }
    else{
        document.getElementById("div_connection").style.display = "initial";
        document.getElementById("div_inscription").style.display = "none";
    }
}

function change_to_connection(){
    document.getElementById("div_connection").style.display = "initial";
    document.getElementById("div_inscription").style.display = "none";
}

function change_to_inscription(){
    document.getElementById("div_connection").style.display = "none";
    document.getElementById("div_inscription").style.display = "initial";
}




