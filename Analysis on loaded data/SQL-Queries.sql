-- Check to see if table populated with data
SELECT * 
FROM vine_table 
LIMIT 10;

-- Average star rating of all Vine Reviews
SELECT ROUND(AVG(star_rating),1)
FROM vine_table
WHERE vine = 'Y';
-- result returned 4.1


-- Average star rating of Non Vine Reviews
SELECT ROUND(AVG(star_rating),1)
FROM vine_table
WHERE vine = 'N';
-- result returned 4.1


-- Average % helpful votes out of total votes for Vine Reviews
SELECT ROUND(SUM(helpful_votes::decimal) / SUM(total_votes) * 100, 1) AS percent_helpful
FROM vine_table
WHERE vine = 'Y';
-- result returned 83.9%


-- Average % helpful votes out of total votes for Non Vine Reviews
SELECT ROUND(SUM(helpful_votes::decimal) / SUM(total_votes) * 100, 1) AS percent_helpful
FROM vine_table
WHERE vine = 'N';
-- result returned 75.5%



-- AVERAGE number of total votes
SELECT ROUND(AVG(total_votes))
FROM vine_table
-- result returned 2



-- AVERAGE number of helpful votes for VINE reviews
SELECT ROUND(AVG(helpful_votes))
FROM vine_table
WHERE vine = 'Y';
-- result returned 5



-- AVERAGE number of helpful votes for non VINE reviews
SELECT ROUND(AVG(helpful_votes))
FROM vine_table
WHERE vine = 'N';
-- result returned 1


-- Average star rating of all Vine Reviews that have at least 5 helpful_votes and at least 10 votes
SELECT ROUND(AVG(star_rating),1) AS Average_Rating, COUNT(review_id) AS numbner_of_reviews
FROM vine_table
WHERE vine = 'Y' AND helpful_votes >= 5 AND total_votes >= 10;
-- result returned 4.1 average rating across 3,325 reviews



-- Average star rating of Non Vine Reviews that have at least 5 helpful_votes and at least 10 votes
SELECT ROUND(AVG(star_rating),1) AS Average_Rating, COUNT(review_id) AS number_of_reviews
FROM vine_table
WHERE vine = 'N' AND helpful_votes >= 5 AND total_votes >= 10;
-- result returned 3.4 average rating across 193572 reviews



