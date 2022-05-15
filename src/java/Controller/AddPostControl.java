/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DAO;
import Model.Account;
import Model.Category;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author zpc
 */
@WebServlet(name = "AddPostControl", urlPatterns = {"/addpost"})
public class AddPostControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String TenBaiViet = request.getParameter("TenBaiViet");
        String NoiDung = request.getParameter("NoiDung");
        String HinhAnh = request.getParameter("HinhAnh");
        String Video = request.getParameter("Video");
        String MaLoai = request.getParameter("MaLoai");
        String Khac = request.getParameter("Khac");
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        int MaTaiKhoan = a.getMaTaiKhoan();
        DAO dao = new DAO();
        Date Ngaytao = Date.valueOf(LocalDate.now());
        List<Category> listC = dao.getAllCategory();
        
        request.setAttribute("listCC", listC);
        dao.insertPost(TenBaiViet,  NoiDung,  Ngaytao, HinhAnh, Video, MaLoai, MaTaiKhoan, Khac);
        response.sendRedirect("managerallpost");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
