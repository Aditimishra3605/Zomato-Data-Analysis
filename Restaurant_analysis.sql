CREATE TABLE Restaurants (
    name VARCHAR(255),
    online_order VARCHAR(10),
    book_table VARCHAR(10),
    rate FLOAT,
    votes INTEGER,
    location VARCHAR(255),
    rest_type VARCHAR(255),
    cuisines TEXT,
    cost2plates FLOAT,
    type VARCHAR(100)
);

-- 📍 Questions About Locations (Places)
-- 1. Which places in Bangalore have the highest number of restaurants?
SELECT location, COUNT(*) AS total_restaurants
FROM Restaurants
WHERE location IS NOT NULL
GROUP BY location
ORDER BY total_restaurants DESC
LIMIT 5;

-- 2. Which places have very few restaurants?
SELECT location, COUNT(*) AS total_restaurants
FROM Restaurants
WHERE location IS NOT NULL
GROUP BY location
ORDER BY total_restaurants ASC
LIMIT 5;

-- 3. Where can we find the best-rated restaurants in the city?
SELECT location, Round(CAST(AVG(rate) AS NUMERIC),2) AS average_rating
FROM Restaurants
WHERE rate IS NOT NULL AND location IS NOT NULL
GROUP BY location
ORDER BY average_rating DESC
LIMIT 5;

-- 💰 Questions About Money and Cost
-- 1. How much money do two people usually spend on a meal?
SELECT cost2plates, COUNT(*) AS total_restaurants
FROM Restaurants
WHERE cost2plates IS NOT NULL
GROUP BY cost2plates
ORDER BY total_restaurants DESC;

-- 2. Do expensive restaurants get better ratings than cheap restaurants?
SELECT 
    CASE 
        WHEN cost2plates < 400 THEN 'Cheap (Under 400)'
        WHEN cost2plates BETWEEN 400 AND 1000 THEN 'Medium (400-1000)'
        ELSE 'Expensive (Above 1000)'
    END AS cost_range,
    ROUND(CAST(AVG(rate) AS NUMERIC), 2) AS average_rating
FROM Restaurants
WHERE cost2plates IS NOT NULL AND rate IS NOT NULL
GROUP BY cost_range;

-- 3. Which areas are the most expensive, and which areas are the cheapest?
-- Most expensive areas
SELECT location, ROUND(CAST(AVG(cost2plates) AS NUMERIC), 2) AS average_cost
FROM Restaurants
WHERE cost2plates IS NOT NULL AND location IS NOT NULL
GROUP BY location
ORDER BY average_cost DESC
LIMIT 5;
-- Cheapest areas
SELECT location, ROUND(CAST(AVG(cost2plates) AS NUMERIC), 2) AS average_cost
FROM Restaurants
WHERE cost2plates IS NOT NULL AND location IS NOT NULL
GROUP BY location
ORDER BY average_cost ASC
LIMIT 5;

-- 🍔 Questions About Food (Cuisines)
-- 1. What are the most common types of food sold in Bangalore?
SELECT cuisines, COUNT(*) AS total_restaurants
FROM Restaurants
WHERE cuisines IS NOT NULL
GROUP BY cuisines
ORDER BY total_restaurants DESC
LIMIT 5;

-- 2. What types of food do people love the most (highest ratings)?
SELECT cuisines, ROUND(CAST(AVG(rate) AS NUMERIC), 2) AS average_rating
FROM Restaurants
WHERE cuisines IS NOT NULL AND rate IS NOT NULL
GROUP BY cuisines
ORDER BY average_rating DESC
LIMIT 5;

-- 3. Which food types have high ratings but very little competition?
SELECT 
    cuisines, 
    COUNT(*) AS total_restaurants, 
    ROUND(CAST(AVG(rate) AS NUMERIC), 2) AS average_rating 
FROM Restaurants 
WHERE cuisines IS NOT NULL AND rate IS NOT NULL 
GROUP BY cuisines 
HAVING COUNT(*) < 150  
ORDER BY average_rating DESC 
LIMIT 5;

-- 📱 Questions About Services
-- 1. Do restaurants with online delivery get better ratings?
SELECT online_order, ROUND(CAST(AVG(rate) AS NUMERIC), 2) AS average_rating
FROM Restaurants
WHERE rate IS NOT NULL AND online_order IS NOT NULL
GROUP BY online_order;

-- 2. Do restaurants with table booking get more customer votes?
SELECT book_table, ROUND(AVG(votes), 2) AS average_votes
FROM Restaurants
WHERE book_table IS NOT NULL
GROUP BY book_table;

-- 3. Do more customer votes mean a higher rating for the restaurant?
SELECT 
    CASE 
        WHEN votes < 100 THEN 'Low Votes (0-100)'
        WHEN votes BETWEEN 100 AND 1000 THEN 'Medium Votes (100-1000)'
        ELSE 'High Votes (Above 1000)'
    END AS vote_range,
    ROUND(CAST(AVG(rate) AS NUMERIC), 2) AS average_rating
FROM Restaurants
WHERE rate IS NOT NULL
GROUP BY vote_range;


















