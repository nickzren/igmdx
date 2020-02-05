package controller;

import global.Data;
import model.Input;
import model.Output;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nick
 */
public class Search extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            if (Data.rootPath.isEmpty()) {
                Data.rootPath = getServletContext().getRealPath("/data/");
                Data.init();
            }

            Input input = new Input(request);

            Output output = new Output(input, request);

            request.setAttribute("query", input.getQuery());
            request.setAttribute("outputList", output.getList());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception ex) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "igmdx search query";
    }
}
