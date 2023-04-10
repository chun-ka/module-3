package model;

public class Student {
    private int id;
    private String name;
    private String birthday;
    private String gender;
    private String address;
    private int classId;
    private String className;

    public Student() {
    }

    public Student(int id, String name,String birthday, String gender, String address, String className) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.className = className;
        this.birthday=birthday;
    }

    public Student(int id, String name, String birthday,String gender, String address, int classId) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.address = address;
        this.classId = classId;
        this.birthday=birthday;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }
}
