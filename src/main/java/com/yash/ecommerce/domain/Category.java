package com.yash.ecommerce.domain;

public class Category {

    private int categoryId;
    private String categoryTitle;
    private String categoryDescription;
    private String categoryImage;

    public Category(int categoryId, String categoryTitle, String categoryDescription, String categoryImage) {
        this.categoryId = categoryId;
        this.categoryTitle = categoryTitle;
        this.categoryDescription = categoryDescription;
        this.categoryImage = categoryImage;
    }

    public Category(String categoryTitle, String categoryDescription, String categoryImage) {
        this.categoryTitle = categoryTitle;
        this.categoryDescription = categoryDescription;
        this.categoryImage = categoryImage;
    }

    public Category() {
        this.categoryTitle = categoryTitle;
        this.categoryDescription = categoryDescription;
        this.categoryImage = categoryImage;
    }

    public int getCatid() {
        return categoryId;
    }

    public void setCatid(int catid) {
        this.categoryId = catid;
    }

    public String getCategoryTitle() {
        return categoryTitle;
    }

    public void setCategoryTitle(String categoryTitle) {
        this.categoryTitle = categoryTitle;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public String getCategoryImage() {
        return categoryImage;
    }

    public void setCategoryImage(String categoryImage) {
        this.categoryImage = categoryImage;
    }
}
