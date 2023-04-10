package service;

import model.Student;

import java.util.List;

public interface IStudentService {
    List<Student> findAll();
    boolean addStudent(Student student);
    boolean remove(int id);
    boolean edit(Student student);
    Student info(int id);
    List<Student> searchStudent(String searchName,String searchClassName,String searchAddress);
}
