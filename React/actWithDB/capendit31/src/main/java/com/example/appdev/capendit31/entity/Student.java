package com.example.appdev.capendit31.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "student")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String firstname;
    private String lastname;
    private String program;
    private int yearlevel;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getFirstname() { return firstname; }
    public void setFirstname(String firstname) { this.firstname = firstname; }

    public String getLastname() { return lastname; }
    public void setLastname(String lastname) { this.lastname = lastname; }

    public String getProgram() { return program; }
    public void setProgram(String program) { this.program = program; }

    public int getYearlevel() { return yearlevel; }
    public void setYearlevel(int yearlevel) { this.yearlevel = yearlevel; }
}