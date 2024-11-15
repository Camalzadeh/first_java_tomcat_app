package org.example.demo1;

import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "İlkin müəllimə salamlar!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response){
        request.setAttribute("message", message);
        try {
            request.getRequestDispatcher("/mine.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
