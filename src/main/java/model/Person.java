package model;

import java.io.Serializable;

//Java Bean
// 1. Implements Serializabble
// 2. No arg constructor
// 3. Private memvers w/  getters and setter
public class Person implements Serializable {
    private String firstName;
    private String lastName;
    private int age;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
    public Person(){
        this.firstName = "Bob";
        this.lastName = "Jenkins";
        this.age = 15;
    }
    public Person(String firstName, String lastName, int age) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
    }
}
