package com.imagine.neatfeat.controller.customer.listeners;

import com.imagine.neatfeat.model.dal.cfg.SingletonSessionFactory;
import com.imagine.neatfeat.model.dal.dao.*;
import com.imagine.neatfeat.model.dal.entity.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.*;
import java.util.*;

public class ContextListener implements ServletContextListener {

    @SuppressWarnings("Duplicates")
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        /*Mahmoud Shereif*/
        SessionFactory sessionFactory = SingletonSessionFactory.getInstance();
        servletContextEvent.getServletContext().setAttribute("sessionFactory", sessionFactory);

        Session session = sessionFactory.getCurrentSession();

        session.beginTransaction();

        /*------------------------------------------------------------------------------*/
        Brand brand1 = new Brand();
        brand1.setDescription("Adidas");

        Brand brand2 = new Brand();
        brand2.setDescription("Nike");

        Brand brand3 = new Brand();
        brand3.setDescription("NeatFeet");

        List<Brand> brands = new ArrayList<>();

        BrandDAO brandDAO = new BrandDAO(session);

        brand1 = brandDAO.merge(brand1);
        brand2 = brandDAO.merge(brand2);
        brand3 = brandDAO.merge(brand3);

        brands.add(brand1);
        brands.add(brand2);
        brands.add(brand3);

        /*------------------------------------------------------------------------------*/
        List<Category> categories = new ArrayList<>();

        Category manCategory = new Category();
        manCategory.setDescription("Men");

        Category womenCategory = new Category();
        womenCategory.setDescription("Women");

        Category kidzCategory = new Category();
        kidzCategory.setDescription("Kidz");

        CategoryDAO categoryDAO = new CategoryDAO(session);
        manCategory = categoryDAO.merge(manCategory);
        womenCategory = categoryDAO.merge(womenCategory);
        kidzCategory = categoryDAO.merge(kidzCategory);

        Category casual = new Category();
        casual.setDescription("Casual");
        casual.setCategory(manCategory);

        Category classic = new Category();
        classic.setDescription("Classic");
        classic.setCategory(manCategory);

        Category sport = new Category();
        sport.setDescription("Sport");
        sport.setCategory(manCategory);

        casual = categoryDAO.merge(casual);
        classic = categoryDAO.merge(classic);
        sport = categoryDAO.merge(sport);

        Category categoryDeep1 = new Category();
        categoryDeep1.setDescription("Designer Shoes");
        categoryDeep1.setCategory(casual);

        Category categoryDeep2 = new Category();
        categoryDeep2.setDescription("Diabetic Shoes");
        categoryDeep2.setCategory(casual);

        Category categoryDeep3 = new Category();
        categoryDeep3.setDescription("Dress Shoes");
        categoryDeep3.setCategory(casual);

        categoryDeep1 = categoryDAO.merge(categoryDeep1);
        categoryDeep2 = categoryDAO.merge(categoryDeep2);
        categoryDeep3 = categoryDAO.merge(categoryDeep3);

        categories.add(manCategory);
        categories.add(womenCategory);
        categories.add(kidzCategory);
        categories.add(casual);
        categories.add(classic);
        categories.add(sport);
        categories.add(categoryDeep1);
        categories.add(categoryDeep2);
        categories.add(categoryDeep3);


        /*------------------------------------------------------------------------------*/
        UserRoles userRole1 = new UserRoles();
        userRole1.setDescription("customer");

        UserRoles userRole2 = new UserRoles();
        userRole2.setDescription("admin");

        UserRolesDAO userRolesDAO = new UserRolesDAO(session);

        userRole1 = userRolesDAO.merge(userRole1);
        userRole2 = userRolesDAO.merge(userRole2);

        /*------------------------------------------------------------------------------*/
        DeliveryStatus deliveryStatus = new DeliveryStatus();
        deliveryStatus.setDescription("Ordered");

        DeliveryStatusDAO deliveryStatusDAO = new DeliveryStatusDAO(session);
        deliveryStatusDAO.persist(deliveryStatus);

        /*------------------------------------------------------------------------------*/
        String[] countryCodes = Locale.getISOCountries();

        CountryDAO countryDAO = new CountryDAO(session);

        for (String countryCode : countryCodes) {

            Locale obj = new Locale("", countryCode);

            Country country = new Country();
            country.setName(obj.getDisplayCountry());

            countryDAO.persist(country);
        }

        /*------------------------------------------------------------------------------*/
        User userAdmin = new User();
        userAdmin.setCreditLimit(100000);
        userAdmin.setAddress("Address");
        userAdmin.setGender(true);
        userAdmin.setJob("Admin");
        userAdmin.setName("Mahmoud");
        userAdmin.setPhone("01141744785");
        userAdmin.setPhotoUrl(".png");
        userAdmin.setBirthdate(new Date());
        userAdmin.setCountry(countryDAO.getByColumnName("name", "Egypt").get(0));
        userAdmin.setEmail("mnet30@neatfeet.com");
        userAdmin.setPassword("1234567890");
        userAdmin.setUserRoles(userRole2);

        User userCustomer = new User();
        userCustomer.setCreditLimit(100000);
        userCustomer.setAddress("Address");
        userCustomer.setGender(true);
        userCustomer.setJob("Customer");
        userCustomer.setName("Mahmoud");
        userCustomer.setPhone("01141744785");
        userCustomer.setPhotoUrl(".png");
        userCustomer.setBirthdate(new Date());
        userCustomer.setCountry(countryDAO.getByColumnName("name", "Egypt").get(0));
        userCustomer.setEmail("mnet30@yahoo.com");
        userCustomer.setPassword("1234567890");
        userCustomer.setUserRoles(userRole1);

        UserDAO userDAO = new UserDAO(session);
        userAdmin = userDAO.merge(userAdmin);
        userCustomer = userDAO.merge(userCustomer);

        /*------------------------Products-----------------------------------*/
        persistProductsFromShoeFolder(session, brands, servletContextEvent.getServletContext().getRealPath(""), categories);

        session.getTransaction().commit();










//        /*------------------------------------------------------------------------------*/
//        product = new Product();
//        product.setBrand(brands.get(randomBrand.nextInt(2)));
//        product.setCategory(casual);
//
//        product.setQuantity(randomQuantity.nextInt(30));
//        product.setDescription("Casual1");
//        product.setDetailedDescription("");
//        product.setShortLinedDescription("");
//        product.setPrice(randomPrice.nextInt(1000));
//        product.setBuyingCount(randomBuyingCount.nextInt(30));
//        product.setMainPhotoUrl(".png");
//        product.setDiscount((short)0);
//
//        productDAO.persist(product);
//
//        /*------------------------------------------------------------------------------*/
//        product = new Product();
//        product.setBrand(brands.get(randomBrand.nextInt(2)));
//        product.setCategory(casual);
//
//        product.setQuantity(randomQuantity.nextInt(30));
//        product.setDescription("casual2");
//        product.setDetailedDescription("");
//        product.setShortLinedDescription("");
//        product.setPrice(randomPrice.nextInt(1000));
//        product.setBuyingCount(randomBuyingCount.nextInt(30));
//        product.setMainPhotoUrl(".png");
//        product.setDiscount((short)0);
//
//        productDAO.persist(product);
//
//        /*------------------------------------------------------------------------------*/
//        product = new Product();
//        product.setBrand(brands.get(randomBrand.nextInt(2)));
//        product.setCategory(casual);
//
//        product.setQuantity(randomQuantity.nextInt(30));
//        product.setDescription("");
//        product.setDetailedDescription("");
//        product.setShortLinedDescription("");
//        product.setPrice(randomPrice.nextInt(1000));
//        product.setBuyingCount(randomBuyingCount.nextInt(30));
//        product.setMainPhotoUrl(".png");
//        product.setDiscount((short)0);
//
//        productDAO.persist(product);
//
//        /*------------------------------------------------------------------------------*/
//        product = new Product();
//        product.setBrand(brands.get(randomBrand.nextInt(2)));
//        product.setCategory(casual);
//
//        product.setQuantity(randomQuantity.nextInt(30));
//        product.setDescription("");
//        product.setDetailedDescription("");
//        product.setShortLinedDescription("");
//        product.setPrice(randomPrice.nextInt(1000));
//        product.setBuyingCount(randomBuyingCount.nextInt(30));
//        product.setMainPhotoUrl(".png");
//        product.setDiscount((short)0);
//
//        productDAO.persist(product);
//        /*------------------------------------------------------------------------------*/





        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }


    private void persistProductsFromShoeFolder(Session session, List<Brand> brands, String appPath, List<Category> categories)
    {
        ProductDAO productDAO = new ProductDAO(session);
        CategoryDAO categoryDAO = new CategoryDAO(session);


        Random randomBrand = new Random();
        Random randomQuantity = new Random();
        Random randomPrice = new Random();
        Random randomBuyingCount = new Random();


        File file = new File(appPath + "/shoes");
        if(file.exists())
        {
            File[] files = file.listFiles();

            for (File catFile :files) {
                String catName = catFile.getName();
                File[] catProductsFolder = catFile.listFiles();
                session.flush();
                System.out.println(catName);
                Category currentCategory = (Category)categories.stream().filter((category) -> {
                    System.out.println(category.getDescription());
                    return category.getDescription().equals(catName);

                }).toArray()[0];

                for (File productFolder : catProductsFolder) {
                    String productDescription = productFolder.getName();
                    File[] images = productFolder.listFiles();

                    Product product = new Product();
                    product.setBrand(brands.get(randomBrand.nextInt(2)));
                    product.setCategory(currentCategory);

                    product.setQuantity(randomQuantity.nextInt(30));
                    product.setDescription(productDescription);
                    product.setDetailedDescription(productDescription);
                    product.setShortLinedDescription(productDescription);
                    product.setPrice(randomPrice.nextInt(1000));
                    product.setBuyingCount(randomBuyingCount.nextInt(30));
                    product.setMainPhotoUrl(".png");
                    product.setDiscount((short)0);
                    product = productDAO.merge(product);

                    for(int i = 0; i < images.length; i++) {

                        String productId = product.getId().toString();
                        String imageName = productId;
                        if(i == 0)
                            imageName += ".png";
                        else
                            imageName += i + ".png";

                        //---------define path where images will be saved--------------

                        String savePath = appPath + File.separator + "ProductImages";
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
                            imageContent = new FileInputStream(images[i]);
                            int read = 0;
                            final byte[] bytes = new byte[2048];
                            while ((read = imageContent.read(bytes)) != -1) {
                                out.write(bytes, 0, read);
                            }

                        } catch (FileNotFoundException fne) {
                            fne.printStackTrace();
                        } catch (IOException e) {
                            e.printStackTrace();
                        } finally {
                            try {
                                if (out != null) {
                                    out.close();
                                }
                                if (imageContent != null) {
                                    imageContent.close();
                                }
                            } catch (IOException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
