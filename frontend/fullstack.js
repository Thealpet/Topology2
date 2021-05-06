


fetch("http://0.0.0.0:5000/")
    .then(response => response.json())
    .then(data => render_users(data));