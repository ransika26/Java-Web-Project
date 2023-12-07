<%@ page contentType="application/json;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.util.Base64" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mycompany.supermarket.Items"%>
<%@ page import="com.google.gson.Gson" %>
<%
    try {
        // Establish database connection
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String DB_URL = "jdbc:sqlserver://DESKTOP-HSVEOM2\\SQLEXPRESS;databaseName=ItemDatabase;encrypt=true;trustServerCertificate=true;";
        String User_Name = "sa";
        String Password = "A123";

        // Use try-with-resources for Connection
        try (Connection connection = DriverManager.getConnection(DB_URL, User_Name, Password)) {

            // Retrieve data from the database
            String sql = "SELECT Name, Price, ImageData FROM YourTableName WHERE Category = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, "vegetables");

                try (ResultSet resultSet = preparedStatement.executeQuery()) {

                    // Create a list to store items
                    ArrayList<Items> items = new ArrayList<>();

                    while (resultSet.next()) {
                        Items item = new Items();
                        item.setItemName(resultSet.getString("Name"));
                        item.setItemPrice(resultSet.getString("Price"));
                        byte[] imageData = resultSet.getBytes("ImageData");
                        item.setBase64Image(Base64.getEncoder().encodeToString(imageData));
                        // item.setCategory(resultSet.getString("Category"));

                        // Add the item to the list
                        items.add(item);
                    }

                    // Convert the list to JSON and write it to the response
                    response.setContentType("application/json");
                    response.setCharacterEncoding("UTF-8");
                    out.print(new com.google.gson.Gson().toJson(items));
                }
            }
        }
    } catch (Exception e) {
        // Handle the exception appropriately
        e.printStackTrace();
        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    }
%>
