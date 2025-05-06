<%@ page import="java.util.*, com.app.rooms.RoomModel" %>

<!DOCTYPE html>
<html>
<head>
    <title>Room List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">Room List</h2>
    <table class="table table-bordered table-hover bg-white">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Room Number</th>
                <th>Type</th>
                <th>Price</th>
                <th>Status</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <%
            List<RoomModel> roomList = (List<RoomModel>) request.getAttribute("roomList");
                if (roomList != null && !roomList.isEmpty()) {
                	   for (RoomModel room : roomList) {
            %>
            <tr>
                <td><%= room.getRoomId() %></td>
                <td><%= room.getRoomNumber() %></td>
                <td><%= room.getRoomType() %></td>
                <td><%= room.getPrice() %></td>
                <td><%= room.getStatus() %></td>
                <td><%= room.getDescription() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6" class="text-center">No rooms found.</td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>
</body>
</html>
