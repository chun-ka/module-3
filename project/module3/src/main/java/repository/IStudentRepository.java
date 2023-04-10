package repository;

import model.Student;

import java.util.List;

public interface IStudentRepository {
    List<Student> findAll();
    boolean addStudent(Student student);
    boolean remove(int id);
    boolean edit(Student student);
    Student info(int id);
    List<Student> searchStudent(String searchName,String searchClassName,String searchAddress);
}
