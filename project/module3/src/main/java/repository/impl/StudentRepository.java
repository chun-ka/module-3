package repository.impl;

import model.Student;
import repository.BaseRepository;
import repository.IStudentRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentRepository implements IStudentRepository {
    public static final String SELECT_ALL="select s.id,s.name,s.birthday,s.gender,s.address,c.class_name from student s join class c on s.class_id=c.id;";
    public static final String INSERT_STUDENT="insert into student value(?,?,?,?,?,?);";
    public static final String DELETE_STUDENT="delete from student where id=?;";
    public static final String UPDATE_STUDENT="update student set name = ?,birthday= ?, gender= ?,address=?,class_id=? where id=?;";
    public static final String INFO_STUDENT="select * from student where id=?;";
    public static final String SEARCH_STUDENT="select s.id,s.name,s.birthday,s.gender,s.address,c.class_name from student s join class c on s.class_id=c.id where s.name like ? and c.class_name like ? and s.address like ?;";

    @Override
    public List<Student> findAll() {
        List<Student> studentList=new ArrayList<>();
        Connection connection=BaseRepository.getConnectDB();
        try {
            PreparedStatement ps= connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet= ps.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String birthday = resultSet.getString("birthday");
                String gender = resultSet.getString("gender");
                String address = resultSet.getString("address");
                String className = resultSet.getString("class_name");
                Student student = new Student(id, name, birthday, gender, address, className);
                studentList.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return studentList;
    }
    public List<Student> searchStudent(String searchName,String searchClassName,String searchAddress) {
        List<Student> studentList=new ArrayList<>();
        Connection connection=BaseRepository.getConnectDB();
        try {
            PreparedStatement ps= connection.prepareStatement(SEARCH_STUDENT);
            ps.setString(1,'%'+searchName+'%');
            ps.setString(2,'%'+searchClassName+'%');
            ps.setString(3,'%'+searchAddress+'%');
            ResultSet resultSet= ps.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String birthday = resultSet.getString("birthday");
                String gender = resultSet.getString("gender");
                String address = resultSet.getString("address");
                String className = resultSet.getString("class_name");
                Student student = new Student(id, name, birthday, gender, address, className);
                studentList.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return studentList;
    }

    @Override
    public boolean addStudent(Student student) {
        Connection connection=BaseRepository.getConnectDB();
        try {
            PreparedStatement ps= connection.prepareStatement(INSERT_STUDENT);
            ps.setInt(1,student.getId());
            ps.setString(2, student.getName());
            ps.setString(3, student.getBirthday());
            ps.setString(4, student.getGender());
            ps.setString(5, student.getAddress());
            ps.setInt(6, student.getClassId());
            return ps.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean remove(int id) {
        Connection connection=BaseRepository.getConnectDB();
        try {
            PreparedStatement ps= connection.prepareStatement(DELETE_STUDENT);
            ps.setInt(1,id);
            return ps.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean edit(Student student) {
        Connection connection=BaseRepository.getConnectDB();
        try {
            PreparedStatement ps= connection.prepareStatement(UPDATE_STUDENT);
            ps.setInt(6,student.getId());
            ps.setString(1, student.getName());
            ps.setString(2, student.getBirthday());
            ps.setString(3, student.getGender());
            ps.setString(4, student.getAddress());
            ps.setInt(5, student.getClassId());
            return ps.executeUpdate()>0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    @Override
    public Student info(int id) {
        Connection connection=BaseRepository.getConnectDB();
        Student student =null;
        try {
            PreparedStatement ps= connection.prepareStatement(INFO_STUDENT);
            ps.setInt(1,id);
            ResultSet resultSet= ps.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String birthday = resultSet.getString("birthday");
                String gender = resultSet.getString("gender");
                String address = resultSet.getString("address");
                int classId = resultSet.getInt("class_id");
                 student = new Student(id, name, birthday, gender, address, classId);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }

}
