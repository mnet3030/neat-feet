package com.imagine.neatfeat.controller.admin.servlets;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.util.UUID;

@WebServlet(urlPatterns = {"/saveproductimg"})
@MultipartConfig
public class ImageSaving extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //--------get the image part ----------------------------------
        final Part imagePart = req.getPart("image");

        if (imagePart.getSize() > 0) {
            //-----------get user to get user ID --------------------------
            //--------to be used as image name-----------------------------
            Product product = (Product) req.getAttribute("product");
            UUID productUUID = product.getId();
            String productID = productUUID.toString();
            String imageName = "product" + productID + ".jpg";
            //---------define path where images will be saved--------------

            String appPath = req.getServletContext().getRealPath("");
            String savePath = appPath + File.separator + "ProductIamges";
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
                product.setMainPhotoUrl(imageName);
                req.setAttribute("product", product);
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
}
