package com.app.galary;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/UploadServlet")
@MultipartConfig
public class UploadServlet extends HttpServlet {

    private String uploadDir;

    @Override
    public void init() throws ServletException {
        uploadDir = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadFolder = new File(uploadDir);
        if (!uploadFolder.exists()) uploadFolder.mkdir();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<String> photoNames = new ArrayList<>();

        for (Part part : request.getParts()) {
            if (part.getName().equals("photo") && part.getSize() > 0) {
                String fileName = getFileName(part);
                part.write(uploadDir + File.separator + fileName);
                photoNames.add(fileName);
            }
        }

        // List all photos in the uploads directory
        File folder = new File(uploadDir);
        String[] allPhotos = folder.list((dir, name) -> {
            return name.toLowerCase().endsWith(".jpg") || name.toLowerCase().endsWith(".png") || name.toLowerCase().endsWith(".jpeg");
        });

        request.setAttribute("photos", allPhotos);
        request.getRequestDispatcher("gallery.jsp").forward(request, response);
    }

    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        for (String token : contentDisposition.split(";")) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf("=") + 2, token.length() - 1);  // Removes quotes
            }
        }
        return "unknown";
    }
}
