<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add New Room</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  
  <style>
    body {
      background: #f8f9fa;
    }
    .form-container {
      max-width: 600px;
      margin: auto;
    }
    .form-title {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      font-weight: 600;
      color: #343a40;
    }
    .form-control:focus, .form-select:focus {
      border-color: #0d6efd;
      box-shadow: 0 0 0 0.25rem rgba(13,110,253,.25);
    }
  </style>
</head>
<body>

<div class="container py-5">
  <div class="form-container bg-white p-4 rounded shadow-sm">
    <h2 class="form-title mb-4 text-center">Booking Room</h2>

    <form action="AddRoomServlet" method="post" novalidate>
      <div class="mb-3">
        <label class="form-label">Room Number</label>
        <input type="text" name="roomNumber" class="form-control" placeholder="e.g., 101" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Room Type</label>
        <input type="text" name="roomType" class="form-control" placeholder="e.g., Deluxe, Single" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Price</label>
        <input type="number" step="0.01" name="price" class="form-control" placeholder="e.g., 350.00" required>
      </div>

      <div class="mb-3">
        <label class="form-label">Status</label>
        <select name="status" class="form-select" required>
          <option disabled selected>Select status</option>
          <option value="available">Available</option>
          <option value="unavailable">Unavailable</option>
        </select>
      </div>

      <div class="mb-3">
        <label class="form-label">Description</label>
        <textarea name="description" class="form-control" rows="3" placeholder="Room features, view, etc."></textarea>
      </div>

      <button type="submit" class="btn btn-primary w-100"><a href="roomsConfirm.jsp"> Confirm Reservation</a></button>
    </form>
  </div>
</div>

</body>
</html>
