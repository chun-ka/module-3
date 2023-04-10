package controller;

import model.Student;
import service.IStudentService;
import service.impl.StudentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controller.Servlet", value = "/student")
public class Servlet extends HttpServlet {
    private IStudentService studentService = new StudentService();
    private List<Student> studentList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            case "edit":
                showFromEdit(request, response);
                break;
            default:
                showList(request, response);
        }
    }

    private void showFromEdit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Student student = studentService.info(id);
        request.setAttribute("student", student);
        try {
            request.getRequestDispatcher("view/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("view/create.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        studentList = studentService.findAll();
        request.setAttribute("studentList", studentList);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
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
        switch (action) {
            case "add":
                saveStudent(request, response);
                break;
            case "delete":
                removeStudent(request, response);
                break;
            case "edit":
                editStudent(request, response);
                break;
            case "search":
                searchStudent(request, response);
                break;
        }
    }

    private void searchStudent(HttpServletRequest request, HttpServletResponse response) {
        String searchName = request.getParameter("searchName");
        String searchClassName = request.getParameter("searchClassName");
        String searchAddress = request.getParameter("searchAddress");
        studentList=studentService.searchStudent(searchName,searchClassName,searchAddress);
        request.setAttribute("studentList", studentList);
        request.setAttribute("searchName",searchName);
        request.setAttribute("searchClassName",searchClassName);
        request.setAttribute("searchAddress",searchAddress);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        int classId = Integer.parseInt(request.getParameter("classId"));
        Student student = new Student(id, name, birthday, gender, address, classId);
        String mess1 = "Sửa không thành công";
        if (studentService.edit(student)) {
            mess1 = "Sửa thành công";
        }
        request.setAttribute("mess1", mess1);
        studentList = studentService.findAll();
        request.setAttribute("studentList", studentList);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void removeStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("deleteId"));
        String mess = "Xóa không thành công";
        if (studentService.remove(id)) {
            mess = "Xóa thành công";
        }
        studentList = studentService.findAll();
        request.setAttribute("mess", mess);
        request.setAttribute("studentList", studentList);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void saveStudent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        int classId = Integer.parseInt(request.getParameter("classId"));
        Student student = new Student(id, name, birthday, gender, address, classId);
        String mess = "Thêm mới không thành công";
        if (studentService.addStudent(student)) {
            mess = "Thêm mới thành công";
        }
        request.setAttribute("mess", mess);
        studentList = studentService.findAll();
        request.setAttribute("studentList", studentList);

        try {
            request.getRequestDispatcher("view/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
