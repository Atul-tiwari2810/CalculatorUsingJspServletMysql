package com.example.webapplicationjava;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class ServletOne extends HttpServlet {

    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        response.setContentType("text/html");
        int num1 = 0;
        int num2 = 0;
        int res = 0;
        String n = request.getParameter("option");
        PrintWriter pr = response.getWriter();

        if (n.equals("Addition")) {
            num1 = Integer.parseInt(request.getParameter("num1"));
            num2 = Integer.parseInt(request.getParameter("num2"));
            res = num1 + num2;
            pr.println("Addition of two number is=" + res);


        } else if (n.equals("Subtraction")) {

            num1 = Integer.parseInt(request.getParameter("num1"));
            num2 = Integer.parseInt(request.getParameter("num2"));
            res = num1 - num2;
            pr.println("Subtraction of two number is=" + res);


        } else if (n.equals("Multiplication")) {
            num1 = Integer.parseInt(request.getParameter("num1"));
            num2 = Integer.parseInt(request.getParameter("num2"));
            res = num1 * num2;
            pr.println("multiplication of number is=" + res);

        } else if (n.equals("Division")) {

            num1 = Integer.parseInt(request.getParameter("num1"));
            num2 = Integer.parseInt(request.getParameter("num2"));
            res = num1 / num2;
            pr.println("Division of two number is=" + res);

        }

//

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/calculator", "root", "Atul@123");
            Statement st = conn.createStatement();
                      PreparedStatement ps = conn.prepareStatement("insert into users values(?,?,?)");

            ps.setInt(1, num1);
            ps.setInt(2, num2);
            ps.setInt(3, res);


            int i = ps.executeUpdate();
            if (i > 0)
                System.out.print("You are successfully registered...");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        System.out.close();


        request.setAttribute("serverResponse", res);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

        }


  //  }


