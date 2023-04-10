package service.impl;

import model.Student;
import repository.IStudentRepository;
import repository.impl.StudentRepository;
import service.IStudentService;

import java.util.List;

public class StudentService implements IStudentService {
    IStudentRepository studentRepository=new StudentRepository();
    @Override
    public List<Student> findAll() {
        return studentRepository.findAll();
    }

    @Override
    public boolean addStudent(Student student) {
        return studentRepository.addStudent(student);
    }

    @Override
    public boolean remove(int id) {
        return studentRepository.remove(id);
    }

    @Override
    public boolean edit(Student student) {
        return studentRepository.edit(student);
    }

    @Override
    public Student info(int id) {
        return studentRepository.info(id);
    }

    @Override
    public List<Student> searchStudent(String searchName, String searchClassName, String searchAddress) {
        return studentRepository.searchStudent(searchName,searchClassName,searchAddress);
    }

}
