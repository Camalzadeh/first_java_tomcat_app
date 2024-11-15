<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Hello Servlet</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container text-center mt-5">
    <h1 class="display-4 text-primary">${message}</h1>
    <p class="lead">Bu dinamik səhifədi.</p>
    <a href="index.jsp" class="btn btn-secondary">Əsas səhifə</a>
</div>
<div class="container mt-5">
    <h2 class="text-center mb-4">To-Do App</h2>
    <div class="mb-3">
        <input type="text" id="newTask" class="form-control" placeholder="Yeni tapşırıq əlavə et">
    </div>
    <button class="btn btn-primary" id="addTaskButton">Tapşırıq əlavə et</button>
    <ul id="taskList" class="list-group mt-4"></ul>
</div>

<script>
    document.getElementById("addTaskButton").onclick = function() {
        const taskInput = document.getElementById("newTask");
        const taskText = taskInput.value.trim();
        if (taskText !== "") {
            const taskList = document.getElementById("taskList");
            const newTaskItem = document.createElement("li");
            newTaskItem.classList.add("list-group-item");
            newTaskItem.innerHTML = taskText + ' <button class="btn btn-danger btn-sm float-end deleteButton">Sil</button>';
            taskList.appendChild(newTaskItem);
            taskInput.value = "";
            newTaskItem.querySelector(".deleteButton").onclick = function() {
                taskList.removeChild(newTaskItem);
            };
        }
    };
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

