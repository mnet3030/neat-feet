package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletDAO.UserBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.UUID;

@WebServlet(urlPatterns = {"/getimageurl"})
@MultipartConfig
public class ImageSaving extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //--------get the image part ----------------------------------
        final Part imagePart = req.getPart("image");
        //-----------get user to get user ID --------------------------
        //--------to be used as image name-----------------------------
        User user = (User) req.getAttribute("user");
        UUID userUUID = user.getId();
        String userID = userUUID.toString() ;
        String imageName = "user" + userID + ".jpg";
        //---------define path where images will be saved--------------
        String appPath = req.getServletContext().getRealPath("");
        String savePath =appPath+ File.separator + "UsersImages";
        //--------------------------------------------------------------
        OutputStream out = null;
        InputStream imageContent = null;
        try {
            File imageSaveDirectory = new File(savePath);
            if (!imageSaveDirectory.exists()) {
                imageSaveDirectory.mkdir();
            }
            out = new FileOutputStream(new File(savePath + File.separator
                    + imageName));
            imageContent = imagePart.getInputStream();
            int read = 0;
            final byte[] bytes = new byte[2048];
            while ((read = imageContent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }
            user.setPhotoUrl(File.separator + "UsersImages"+File.separator+imageName);
        } catch (FileNotFoundException fne) {
            fne.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
            }
            if (imageContent != null) {
                imageContent.close();
            }
        }
    }

}