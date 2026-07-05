package com.example.appdev.capendit31.entity;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "teacher")
public class Teacher {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String firstname;
    private String lastname;
    private String department;

    @ManyToMany
    @JoinTable(
        name = "teacher_course",
        joinColumns = @JoinColumn(name = "teacher_id"),
        inverseJoinColumns = @JoinColumn(name = "course_id")
    )
    private List<Course> courses;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getFirstname() { return firstname; }
    public void setFirstname(String firstname) { this.firstname = firstname; }

    public String getLastname() { return lastname; }
    public void setLastname(String lastname) { this.lastname = lastname; }

    public String getDepartment() { return department; }
    public void setDepartment(String department) { this.department = department; }

    // public List<Course> getCourses() { return courses; }
    // public void setCourses(List<Course> courses) { this.courses = courses; }
}