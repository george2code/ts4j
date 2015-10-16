package ts.datalayer.entities;


import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Review {
    private Long id;
    private Long companyId;
    private String companyName; //move
    private String userId;
    private String userEmail;   //move
    private String userAvatar;  //move
    private int userReviewCount;
    private Date reviewDate;
    private int rating;
    private String orderId;
    private String reviewShort;
    private String reviewFull;
    private boolean isConfirmed;

    //region Properties
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Long companyId) {
        this.companyId = companyId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getReviewShort() {
        return reviewShort;
    }

    public void setReviewShort(String reviewShort) {
        this.reviewShort = reviewShort;
    }

    public String getReviewFull() {
        return reviewFull;
    }

    public void setReviewFull(String reviewFull) {
        this.reviewFull = reviewFull;
    }

    public boolean isConfirmed() {
        return isConfirmed;
    }

    public void setIsConfirmed(boolean isConfirmed) {
        this.isConfirmed = isConfirmed;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserAvatar() {
        return userAvatar;
    }

    public void setUserAvatar(String userAvatar) {
        this.userAvatar = userAvatar;
    }

    public int getUserReviewCount() {
        return userReviewCount;
    }

    public void setUserReviewCount(int userReviewCount) {
        this.userReviewCount = userReviewCount;
    }

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public Date getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }
    //endregion
}