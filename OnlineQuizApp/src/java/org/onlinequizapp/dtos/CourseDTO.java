package org.onlinequizapp.dtos;


public class CourseDTO {

    private String courseID;
    private String courseName;
    private String authorID;
    private String duration;
    private String status;
    private String categoryID;
    private String description;
    
    
    public CourseDTO() {
    }

    public CourseDTO(String courseID, String courseName, String authorID, String duration, String status, String categoryID, String Description) {
        this.courseID = courseID;
        this.courseName = courseName;
        this.authorID = authorID;
        this.duration = duration;
        this.status = status;
        this.categoryID = categoryID;
        this.description = Description;
    }
    
    public CourseDTO(String courseID, String courseName, String authorID, String duration, String status) {
        this.courseID = courseID;
        this.courseName = courseName;
        this.authorID = authorID;
        this.duration = duration;
        this.status = status;
        
    }


    public void setCourseID(String courseID) {
        this.courseID = courseID;
    }
    
    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public void setAuthorID(String authorID) {
        this.authorID = authorID;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public String getCourseID() {
        return courseID;
    }
    
    public String getCourseName() {
        return courseName;
    }

    public String getAuthorID() {
        return authorID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }

    public void setDescription(String Description) {
        this.description = Description;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public String getDescription() {
        return description;
    }

    public String getDuration() {
        return duration;
    }

    public String getStatus() {
        return status;
    }

}