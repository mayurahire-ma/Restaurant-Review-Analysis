create database sql_project;

use sql_project;

# create table and indert the data for projects

create table cuisines (
cuisine_id int primary key,
cuisine_name varchar(250) not null
);

INSERT INTO cuisines (cuisine_id, cuisine_name) VALUES
    (1, 'Italian'),
    (2, 'Mexican'),
    (3, 'Indian'),
    (4, 'Japanese'),
    (5, 'Chinese'),
    (6, 'Greek'),
    (7, 'Thai'),
    (8, 'French'),
    (9, 'Korean'),
    (10, 'Mediterranean'),
    (11, 'Vietnamese'),
    (12, 'Brazilian'),
    (13, 'American'),
    (14, 'Lebanese'),
    (15, 'Spanish'),
    (16, 'Turkish'),
    (17, 'Russian'),
    (18, 'African'),
    (19, 'Mexican'),
    (20, 'Peruvian'),
    (21, 'Irish'),
    (22, 'Cuban'),
    (23, 'Swiss'),
    (24, 'Moroccan');
    
select * from cuisines;

create table restaurants(
restaurant_id int primary key,
name varchar(255) not null,
location varchar(255) not null,
cuisine_id int,
average_rating decimal(3,2),
FOREIGN KEY (cuisine_id) references cuisines(cuisine_id)
);

INSERT INTO restaurants (restaurant_id, name, location, cuisine_id, average_rating) VALUES
    (1, 'Pasta Paradise', '123 Main St, Cityville', 1, 4.5),
    (2, 'Taco Town', '456 Oak St, Townsville', 2, 4.2),
    (3, 'Spice Haven', '789 Elm St, Villageburg', 3, 4.0),
    (4, 'Sushi Delight', '101 Pine St, Metropolis', 4, 4.8),
    (5, 'Great Wall Chinese', '202 Cedar St, Townsville', 5, 3.9),
    (6, 'Mamma Mia Pizzeria', '303 Birch St, Cityville', 1, 4.3),
    (7, 'Burrito Bistro', '404 Maple St, Villageburg', 2, 4.1),
    (8, 'Curry Corner', '505 Spruce St, Metropolis', 3, 3.8),
    (9, 'Tokyo Sushi House', '606 Oak St, Cityville', 4, 4.7),
    (10, 'Wok and Roll', '707 Pine St, Townsville', 5, 3.5),
    (11, 'Ouzo Taverna', '808 Sunset Blvd, Cityville', 6, 4.1),
    (12, 'Spicy Basil', '909 Sunrise Ave, Townsville', 7, 4.5),
    (13, 'La Belle Epoque', '101 Starlight Dr, Villageburg', 8, 4.2),
    (14, 'Kimchi Delight', '202 Moonlight Ln, Metropolis', 9, 4.8),
    (15, 'Olive Garden', '303 Skyline Dr, Cityville', 10, 4.0),
    (16, 'Saigon Street', '404 Aurora Ave, Townsville', 11, 3.9),
    (17, 'Rio Grill', '505 Thunder Rd, Villageburg', 12, 4.3),
    (18, 'Uncle Vanya', '606 Starshine St, Metropolis', 13, 3.8),
    (19, 'African Flavors', '707 Nightfall Dr, Cityville', 14, 4.7),
    (20, 'El Ranchero', '808 Sunset Blvd, Townsville', 15, 3.5),
    (21, 'Moussaka Magic', '909 Sunrise Ave, Villageburg', 6, 4.1),
    (22, 'Golden Pho', '101 Starlight Dr, Metropolis', 7, 4.5),
    (23, 'Le Croissant', '202 Moonlight Ln, Cityville', 8, 4.2),
    (24, 'Seoul Kitchen', '303 Skyline Dr, Townsville', 9, 4.8),
    (25, 'Pita Palace', '404 Aurora Ave, Villageburg', 10, 4.0),
    (26, 'Hanoi House', '505 Thunder Rd, Metropolis', 11, 3.9),
    (27, 'Carnaval Steakhouse', '606 Starshine St, Cityville', 12, 4.3),
    (28, 'Trans-Siberian Bistro', '707 Nightfall Dr, Townsville', 13, 3.8),
    (29, 'Casablanca Cafe', '808 Sunset Blvd, Villageburg', 14, 4.7),
    (30, 'Taco Tierra', '909 Sunrise Ave, Metropolis', 15, 3.5);

select * from restaurants;

create table users(
user_id int primary key,
username varchar(250) not null,
email varchar (250) not null
);

INSERT INTO users (user_id, username, email) VALUES
    (1, 'john_doe', 'john.doe@example.com'),
    (2, 'jane_smith', 'jane.smith@example.com'),
    (3, 'bob_williams', 'bob.williams@example.com'),
    (4, 'alice_jones', 'alice.jones@example.com'),
    (5, 'david_clark', 'david.clark@example.com'),
    (6, 'maria_garcia', 'maria.garcia@example.com'),
    (7, 'carlos_rodriguez', 'carlos.rodriguez@example.com'),
    (8, 'olivia_smith', 'olivia.smith@example.com'),
    (9, 'javier_lopez', 'javier.lopez@example.com'),
    (10, 'isabella_martinez', 'isabella.martinez@example.com'),
    (11, 'miguel_torres', 'miguel.torres@example.com'),
    (12, 'emily_johnson', 'emily.johnson@example.com'),
    (13, 'juan_ramirez', 'juan.ramirez@example.com'),
    (14, 'sophia_davis', 'sophia.davis@example.com'),
    (15, 'diego_martinez', 'diego.martinez@example.com'),
    (16, 'emma_rodriguez', 'emma.rodriguez@example.com'),
    (17, 'gabriel_jones', 'gabriel.jones@example.com'),
    (18, 'ava_martinez', 'ava.martinez@example.com'),
    (19, 'lucas_wilson', 'lucas.wilson@example.com'),
    (20, 'mia_johnson', 'mia.johnson@example.com'),
    (21, 'mateo_anderson', 'mateo.anderson@example.com'),
    (22, 'olivia_taylor', 'olivia.taylor@example.com'),
    (23, 'noah_thomas', 'noah.thomas@example.com'),
    (24, 'sofia_smith', 'sofia.smith@example.com'),
    (25, 'lucas_jones', 'lucas.jones@example.com');
    
select * from users;


create table reviews(
review_id int primary key,
user_id int,
restaurant_id int,
rating decimal(2,1) not null,
comment text,
review_date date,
foreign key(user_id) references users(user_id),
foreign key(restaurant_id) references restaurants(restaurant_id)
);

INSERT INTO reviews (review_id, user_id, restaurant_id, rating, comment, review_date) VALUES
    (1, 1, 1, 4.5, 'Great pasta dishes!', '2023-01-10'),
    (2, 2, 2, 4.0, 'Delicious tacos!', '2023-02-15'),
    (3, 3, 3, 3.5, 'Spicy food, loved it!', '2023-03-20'),
    (4, 4, 4, 5.0, 'Best sushi in town!', '2023-04-25'),
    (5, 5, 5, 3.0, 'Average Chinese food.', '2023-05-30'),
    (6, 1, 6, 4.2, 'Authentic Italian pizza!', '2023-06-05'),
    (7, 2, 7, 3.8, 'Good burritos.', '2023-07-10'),
    (8, 3, 8, 3.0, 'Not impressed with the curry.', '2023-08-15'),
    (9, 4, 9, 4.7, 'Fresh and delicious sushi!', '2023-09-20'),
    (10, 5, 10, 2.5, 'Disappointing Wok dishes.', '2023-10-25'),
    (11, 6, 11, 4.0, 'Authentic Greek dishes!', '2023-11-10'),
    (12, 7, 12, 4.3, 'Spicy Thai food, loved it!', '2023-12-15'),
    (13, 8, 13, 4.2, 'Excellent French cuisine.', '2024-01-20'),
    (14, 9, 14, 4.8, 'Delicious Korean flavors!', '2024-02-25'),
    (15, 10, 15, 3.5, 'Standard Mediterranean fare.', '2024-03-30'),
    (16, 6, 16, 4.1, 'Best pho in town!', '2024-04-05'),
    (17, 7, 17, 4.0, 'Brazilian grill experience.', '2024-05-10'),
    (18, 8, 18, 3.8, 'Russian cuisine adventure.', '2024-06-15'),
    (19, 9, 19, 4.7, 'African flavors at their best!', '2024-07-20'),
    (20, 10, 20, 2.5, 'Mediocre Mexican food.', '2024-08-25'),
    (21, 6, 21, 4.2, 'Amazing moussaka!', '2024-09-01'),
    (22, 7, 22, 4.5, 'Pho with golden broth!', '2024-10-06'),
    (23, 8, 23, 4.0, 'Perfect croissants!', '2024-11-11'),
    (24, 9, 24, 4.8, 'Seoul Kitchen never disappoints!', '2024-12-16'),
    (25, 10, 25, 3.9, 'Great pita wraps!', '2025-01-21'),
    (26, 6, 26, 4.6, 'Authentic Hanoi flavors!', '2025-02-26'),
    (27, 7, 27, 4.3, 'Carnaval atmosphere!', '2025-03-31'),
    (28, 8, 28, 3.7, 'Trans-Siberian cuisine journey.', '2025-04-05'),
    (29, 9, 29, 4.5, 'Casablanca vibes!', '2025-05-10'),
    (30, 10, 30, 3.2, 'Taco Tierra disappointment.', '2025-06-15');
    
    select * from reviews;
    
     #  1. Top 5 Restaurants with the Highest Average Rating.
 
 select * from restaurants;
 
 #ans
  select name,location,average_rating from restaurants order by average_rating desc limit 5;
  
 # 2. Count of Restaurants by Cuisine.
 select * from cuisines;
 #ans
 select cuisine_name,count(*) as restaurant_count
 from restaurants r 
 join cuisines c
 ON r.cuisine_id = c.cuisine_id
 group by cuisine_name
 order by restaurant_count desc;
 
 #3. Top 10 Users with the Most Reviews.
 select * from users;
 #ans
 select username,count(*) as review_count 
 from users u 
 join reviews r
 on u.user_id = r.user_id
 group by username
 order by review_count desc
 limit 10 ;
 
# 4. Restaurants with No Reviews.
select name ,location 
from restaurants
where restaurant_id not in (select distinct restaurant_id from reviews);

update reviews 
set restaurant_id = 30
where review_id = 29;

#5. Average Rating per Cuisine:

select cuisine_name , avg(average_rating) as avg_rating
from cuisines c 
left join restaurants r 
on c.cuisine_id = r.cuisine_id 
group by cuisine_name
order by avg_rating desc;


# 6.Recent Reviews (Top 5)
select username, avg(rating)as avg_rating
from users u
join reviews r 
on u.user_id = r.user_id
group by username
order by avg_rating desc
limit 5;

# 7.Users with High Average Ratings

select username, avg(rating)as avg_rating
from users u
join reviews r 
on u.user_id = r.user_id
group by username
having avg_rating > 4.0
order by avg_rating desc;

# 8.Restaurants with Multiple Cuisines:

select name ,location ,count(distinct cuisine_id) as num_cuisine
from restaurants
group by name ,location 
having num_cuisine > 1;

# 9.Top 5 Cuisines with the Most Reviews: 
select cuisine_name , count (review_id) as review_count
from cuisines c
left join restaurants r on c.cuisine_id = r.cuisine_id
left join reviews rv on r.restaurant_id = rv.restaurant_id
group by cuisine_name
order by review_count desc;

# 10. Restaurants and their Average Ratings with More than 1 Reviews

select name ,avg(rating) as avg_rating
from restaurants r
join reviews rv
on r.restaurant_id = rv.restaurant_id
group by name
having count(review_id) > 1 
order by avg_rating desc;

# 11.Inactive Users (No Reviews):
select username , email
from users u
left join reviews r on u.user_id = r.user_id
where review_id is null;

#12.Restaurants with Average Rating Above 4.5:
select * from restaurants where average_rating > 4.5;

# 13.Average Rating Trend Over Time:




#14.Users who Reviewed a Specific Restaurant:
select username, review_date, rating, comment
from reviews r
join users u
on r.user_id = u.user_id
where restaurant_id = 10;

# 15.Top 5 Restaurants with the Most Reviews:
select name, location, count(review_id) AS num_review
from restaurants r 
left join reviews rv
on r.restaurant_id  = rv.restaurant_id
group by name, location
order by num_review desc
limit 5;


