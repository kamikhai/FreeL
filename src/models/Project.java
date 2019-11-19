package models;

public class Project {
    Long id;
    String name;
    Long owner;
    String about;
    String github;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getOwner() {
        return owner;
    }

    public void setOwner(Long owner) {
        this.owner = owner;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getGithub() {
        return github;
    }

    public void setGithub(String github) {
        this.github = github;
    }

    public Project(String name, Long owner, String about, String github) {
        this.name = name;
        this.owner = owner;
        this.about = about;
        this.github = github;
    }

    public Project(Long id, String name, Long owner, String about, String github) {
        this.id = id;
        this.name = name;
        this.owner = owner;
        this.about = about;
        this.github = github;
    }
}
