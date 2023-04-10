package controller;

import model.BenhNhan;
import service.IBenhNhanService;
import service.impl.BenhNhanService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controller.BenhNhanServlet", value = "/benhnhan")
public class BenhNhanServlet extends HttpServlet {
    private IBenhNhanService benhNhanService=new BenhNhanService();
    private List<BenhNhan> benhNhanList=new ArrayList<>();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "edit":
                showFromEdit(request,response);
                break;
            default:
                showList(request,response);
        }

    }

    private void showFromEdit(HttpServletRequest request, HttpServletResponse response) {
        String maBenhNhan=request.getParameter("id");
        BenhNhan benhNhan=benhNhanService.info(maBenhNhan);
        request.setAttribute("benhNhan",benhNhan);
        try {
            request.getRequestDispatcher("view/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        benhNhanList=benhNhanService.findAll();
        request.setAttribute("benhNhanList",benhNhanList);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action){
            case "edit":
                edit(request,response);
                break;
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        String maBenhAn=request.getParameter("maBenhAn");
        String maBenhNhan=request.getParameter("maBenhNhan");
        String tenBenhNhan=request.getParameter("tenBenhNhan");
        String ngayNhapVien=request.getParameter("ngayNhapVien");
        String ngayRaVien=request.getParameter("ngayRaVien");
        String liDo=request.getParameter("liDo");
        BenhNhan benhNhan=new BenhNhan(maBenhAn,maBenhNhan,tenBenhNhan,ngayNhapVien,ngayRaVien,liDo);
        String mess = "Sửa không thành công";
        if (benhNhanService.edit(benhNhan)) {
            mess = "Sửa thành công";
        }
        request.setAttribute("mess",mess);
        benhNhanList=benhNhanService.findAll();
        request.setAttribute("benhNhanList",benhNhanList);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
