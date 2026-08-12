# Zomato-Data-Analysis
An end-to-end data analysis project on Zomato restaurant data, featuring data cleaning, exploratory data analysis (EDA), visualizations, and actionable business insights using Python.
## 📋 Table of Contents
1. Project Overview
2. Problem Statement
3. Dataset Description
4. Methodology
5. Key Findings
6. Recommendations
7. Technical Implementation
8. Deliverables
9. Sources & References
10. How to Explore
## 🎯 Project Overview
Project Type: Exploratory Data Analysis (EDA) | Business Intelligence | Data Analytics

Domain: Food Delivery & Restaurant Analytics

Dataset: Zomato Restaurant Dataset

Focus: Restaurant Ratings, Pricing, Cuisines, Customer Preferences & Market Trends

Tools Used: Python, Pandas, NumPy, Matplotlib, Seaborn, Jupyter Notebook (Kaggle)

Audience: Data Analysts, Business Analysts, Recruiters

## 💼 Problem Statement
The restaurant market in Bangalore is growing very fast but faces intense competition. New restaurant owners struggle to decide on the best location, food type (cuisine), and pricing, leading to high failure rates. 
The goal of this project is to analyze Zomato restaurant data to find the key factors that make a restaurant successful (high ratings) or popular (high vote counts) in Bangalore. 
### Business Challenge
Zomato aims to better understand customer preferences and restaurant performance by analyzing restaurant data across different cities. This project focuses on uncovering patterns that help improve customer experience and support data-driven business decisions.

### The analysis aims to:
1. Understand restaurant distribution across different locations.
2. Identify the factors that influence restaurant ratings.
3.  Analyze pricing trends across restaurants and cuisines.
4. Discover the most popular cuisines and restaurant categories.
5. Evaluate the impact of online delivery and table booking services.
6. Generate actionable business insights for restaurant owners and food delivery platforms.

### Analysis Questions Addressed
#### Primary Analysis
1. Which cities have the highest number of restaurants?
2. What are the most popular cuisines offered by restaurants?
3. How do restaurant ratings vary across cities?
4. Does the average cost for two people affect customer ratings?
5. Which restaurants have the highest number of votes?
6. What percentage of restaurants offer online delivery?
7. What percentage of restaurants provide table booking?
8. Which cuisines receive the highest average ratings?
9. How are restaurant prices distributed across different price ranges?
10. Which cities have the highest-rated restaurants?
#### Secondary Analysis
1. Does online delivery improve restaurant ratings?
2. Does table booking influence customer satisfaction?
3. Which price category has the highest-rated restaurants?
4. Which cuisines are both popular and highly rated?
5. Are expensive restaurants always rated better?

### 📊 Dataset Description
| Column Name          | Description                                                       |
| -------------------- | ------------------------------------------------------------------|
| **Dataset Name**           | Zomato Bangalore Restaurants Dataset                        | 
| **Source**                 | Kaggle                                                      |   
| **Dataset Link**           | [https://www.kaggle.com/datasets/himanshupoddar/zomato-bangalore-restaurants](https://www.kaggle.com/datasets/himanshupoddar/zomato-bangalore-restaurants) |
| **City Covered**           | Bengaluru (Bangalore), India                                |
| **Number of Records**      | ~51,700 restaurants                                         |
| **Number of Features**     | 17 columns                                                  |
| **Project Purpose**        | Analyze restaurant trends, customer preferences, pricing, ratings, cuisines, and service availability to generate business insights.                 |

### 📋 Key Features in the Dataset
| **Column**                    | **Description**                                                          |
| ----------------------------- | ------------------------------------------------------------------------ |
| url                         | Zomato webpage URL of the restaurant.                                    |
| address                     | Complete address of the restaurant.                                      |
| name                        | Name of the restaurant.                                                  |
| online_order                | Indicates whether the restaurant accepts online orders (Yes/No).         |
| book_table                  | Indicates whether table booking is available (Yes/No).                   |
| rate                        | Average customer rating of the restaurant.                               |
| votes                       | Total number of customer votes received.                                 |
| phone                       | Restaurant contact number(s).                                            |
| location                    | Locality where the restaurant is located.                                |
| rest_type                   | Type of restaurant (e.g., Casual Dining, Café, Quick Bites).             |
| dish_liked                  | Popular dishes liked by customers.                                       |
| cuisines                    | Types of cuisines served by the restaurant.                              |
| approx_cost(for two people)  | Estimated cost for two people dining at the restaurant.                  |
| reviews_list                | Collection of customer reviews and ratings.                              |
| menu_item                   | Menu items offered by the restaurant (if available).                     |
| listed_in(type)             | Restaurant category on Zomato (e.g., Buffet, Cafes, Dine-out). |
| listed_in(city)             | Zomato-listed locality or area where the restaurant is categorized.      |
