package ts.datalayer.services;


import org.fluttercode.datafactory.impl.DataFactory;
import ts.datalayer.entities.Review;
import ts.datalayer.utils.Randomizer;

import java.util.Arrays;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

public class ReviewService {

    private List<Review> reviews = new LinkedList<>();
    private DataFactory df = new DataFactory();

    public ReviewService()
    {
        Review review1 = this.createReview("/assets/images/team/our-team03.jpg");
        Review review2 = this.createReview("/assets/images/team/our-team02.jpg");
        Review review3 = this.createReview("/assets/images/team/our-team05.jpg");
        Review review4 = this.createReview("/assets/images/team/our-team07.jpg");
        Review review5 = this.createReview("/assets/images/team/our-team04.jpg");

        this.reviews.addAll(Arrays.asList(new Review[]{review1, review2, review3, review4, review5}));
    }

    public List<Review> findAll(){
        return this.reviews;
    }

    public Review find(Long reviewId){
        return this.reviews.stream().filter(p -> {return p.getId().equals(reviewId);}).collect(Collectors.toList()).get(0);
    }

    private Review createReview(String userPhoto) {
        Review review = new Review();

        Date minDate = df.getDate(2000, 1, 1);
        Date maxDate = new Date();

        review.setId(Randomizer.getRandomLongValue());
        review.setCompanyId(Randomizer.getRandomLongValue());
        review.setCompanyName(df.getBusinessName());
        review.setUserId(java.util.UUID.randomUUID().toString());
        review.setUserEmail(df.getEmailAddress());
        review.setUserAvatar(userPhoto);
        review.setUserReviewCount(df.getNumberBetween(1, 210));
        review.setIsConfirmed(true);
        review.setOrderId(java.util.UUID.randomUUID().toString());
        review.setRating(df.getNumberBetween(1, 5));
        review.setReviewShort(df.getAddress()+ " , " + df.getCity()+" , "+df.getNumberText(5));
        review.setReviewDate(df.getDateBetween(minDate, maxDate));

        return review;
    }
}