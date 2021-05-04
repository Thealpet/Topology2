


fetch("./")
    .then(response => response.json())
    .then(data => render_users(data));