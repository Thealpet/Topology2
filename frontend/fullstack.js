console.log("Frontend loaded")

var images = ["../images/aloevera.jpg"]

var items = []

function render_users(data){
    
    var h_list = document.getElementById("items");
    var h_row1 = document.getElementById("first_row");
    

    for (i in data){
        items[i] = data[i];
        [id, n, item] = data[i];

        var cloned_row = h_row1.cloneNode(true);
        cloned_row.id = id;

        var h_title = cloned_row.querySelector(".card-title");
        h_title.innerHTML = id.toString() + ". Name: " + n;

        /*var h_img = cloned_row.querySelector(".card-image");
        h_img.src = images[id - 1]; //what is the meaning of this

        var h_btn = cloned_row.querySelector(".btn");
        h_btn.onclick = load_copter;*/
        

        h_list.appendChild(cloned_row);       
    }

    h_row1.remove();
}

fetch("./api/users")
    .then(response => response.json())
    .then(data => console.log(data));

   

