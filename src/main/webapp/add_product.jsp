<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book Hotel</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            transition: all 0.3s ease;
        }

        body {
            background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }

        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 400px;
            animation: fadeIn 0.5s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            width: 100%;
            background-color: blue;
            color: white;
            padding: 10px;
            border: none;
            margin-top: 15px;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            transition: transform 0.2s;
        }

        .btn:hover {
            background-color: #e0356d;
            transform: scale(1.05);
        }

        #imagePreview {
            display: none;
            width: 100%;
            margin-top: 10px;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        @media (max-width: 600px) {
            .container {
                width: 100%;
                margin: 10px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Book a Hotel</h2>
        <form action="add_Products" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
            <label for="hname">Hotel Name:</label>
            <input type="text" id="hname" name="hname" required>
            
            <label for="hadds">Hotel Address:</label>
            <input type="text" id="hadds" name="hadds" required>

            <label for="hprice">Hotel Price:</label>
            <input type="number" id="hprice" name="hprice" min="1" step="0.01" required>

            <label for="hphoto">Hotel Photo:</label>
            <input type="file" id="hphoto" name="hphoto" accept="image/jpeg, image/png" onchange="previewImage()" required>
            <img id="imagePreview" src="#" alt="Hotel Image Preview">

            <button type="submit" class="btn" style="color: white;"><a href="admindash.jsp">Add Hotel</a></button>
        </form>
    </div>

    <script>
        // Image Preview Function
        function previewImage() {
            const fileInput = document.getElementById("hphoto");
            const preview = document.getElementById("imagePreview");

            const file = fileInput.files[0];

            if (file) {
                const allowedTypes = ["image/jpeg", "image/png"];
                if (!allowedTypes.includes(file.type)) {
                    alert("Only JPG and PNG files are allowed.");
                    fileInput.value = "";
                    return;
                }

                if (file.size > 5 * 1024 * 1024) { // 5MB limit
                    alert("File size should be under 5MB.");
                    fileInput.value = "";
                    return;
                }

                const reader = new FileReader();
                reader.onload = function(e) {
                    preview.src = e.target.result;
                    preview.style.display = "block";
                };
                reader.readAsDataURL(file);
            } else {
                preview.style.display = "none";
            }
        }

        // Form Validation Function
        function validateForm() {
            const name = document.getElementById("hname").value.trim();
            const address = document.getElementById("hadds").value.trim();
            const price = document.getElementById("hprice").value;

            if (name === "" || address === "") {
                alert("Hotel name and address cannot be empty.");
                return false;
            }

            if (price <= 0) {
                alert("Price must be greater than zero.");
                return false;
            }

            return true;
        }
    </script>
</body>
</html>
