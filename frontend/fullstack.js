var images = ["../images/aloevera.jpg"]

var items = []

function render_users(data){
    
    var h_list = document.getElementById("items");
    var h_col = document.getElementById("col");

    

    for (var i = 0; i < data.length; i++){
        items[i] = data[i];
        [id, n, s_des, l_des] = data[i];

        var cloned_col = h_col.cloneNode(true);
        cloned_col.id = id;
            
        var h_title = cloned_col.querySelector(".name");
        h_title.innerHTML = n;

        var h_des = cloned_col.querySelector(".description");
        h_des.innerHTML = s_des;
    
    
        /*var h_img = cloned_row.querySelector(".card-image");
        h_img.src = images[id - 1]; //what is the meaning of this

        var h_btn = cloned_row.querySelector(".btn");
        h_btn.onclick = load_copter;*/
        
        h_list.appendChild(cloned_col);
    }

    h_col.remove();

}

fetch("./api/users")
    .then(response => response.json())
    .then(data => render_users(data));

   

