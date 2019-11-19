package models;

import java.util.Date;

public class User {
    Long id;
    String username;
    String surname;
    String name;
    Date birthdate;
    Boolean gender;
    String city;
    String site;
    String github;
    String aboutMe;
    String email;
    int password;
    String img;

    public User(Long id, String username, String email, int password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public User(Long id, String username, String surname, String name, Date birthdate, Boolean gender, String city, String site, String github, String aboutMe, String email, int password, String img) {
        this.id = id;
        this.username = username;
        this.surname = surname;
        this.name = name;
        this.birthdate = birthdate;
        this.gender = gender;
        this.city = city;
        this.site = site;
        this.github = github;
        this.aboutMe = aboutMe;
        this.email = email;
        this.password = password;
        this.img = img;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public User(String username, String surname, String name, Date birthdate, Boolean gender, String city, String site, String github, String aboutMe, String email, String img) {
        this.username = username;
        this.surname = surname;
        this.name = name;
        this.birthdate = birthdate;
        this.gender = gender;
        this.city = city;
        this.site = site;
        this.github = github;
        this.aboutMe = aboutMe;
        this.email = email;
        this.img = img;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public String getGithub() {
        return github;
    }

    public void setGithub(String github) {
        this.github = github;
    }

    public String getAboutMe() {
        return aboutMe;
    }

    public void setAboutMe(String aboutMe) {
        this.aboutMe = aboutMe;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public User(String username, String email, int password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPassword() {
        return password;
    }

    public void setPassword(int password) {
        this.password = password;
    }
}
