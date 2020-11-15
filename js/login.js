
function getParameters(){
    var parameters = location.search.substring(1).split("&");
    var data = {};
    for(p of parameters){
        var pp=p.split("=");
        if(pp.length == 2){
            data[pp[0]] = pp[1];
        }
    }
    return data;
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




