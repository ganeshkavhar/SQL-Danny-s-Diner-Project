CREATE SCHEMA dannys_diner;
SET search_path = dannys_diner;

CREATE TABLE sale (
  "customer_id" VARCHAR(1),
  "order_date" NUMBER,
  "product_id" INTEGER
);

INSERT INTO sale
  ("customer_id", "order_date", "product_id")
VALUES
  ('A','01', '1');
  
  INSERT INTO sale
  ("customer_id", "order_date", "product_id")
VALUES
  ('A','01', '1');
  
  INSERT INTO sale
  ("customer_id", "order_date", "product_id")
VALUES
  ('A','02', '3');
  
  SELECT * FROM SALE;
  
 

CREATE TABLE menu (
  "product_id" INTEGER,
  "product_name" VARCHAR(5),
  "price" INTEGER
);

INSERT INTO menu
  ("product_id", "product_name", "price")
VALUES
  ('1', 'sushi', 10);
  
  INSERT INTO menu
  ("product_id", "product_name", "price")
VALUES('2', 'curry', '15');

INSERT INTO menu
  ("product_id", "product_name", "price")
VALUES('3', 'ramen', '12');

SELECT * FROM MENU;
  

CREATE TABLE members (
  "customer_id" VARCHAR(1),
  "join_date" DATE
);

INSERT INTO members
("customer_id", "join_date")
VALUES('A', '07');
('B', '2021-01-09');
  
  
  
  
  /* --------------------
   Case Study Questions
   --------------------*/

-- 1. What is the total amount each customer spent at the restaurant?
-- 2. How many days has each customer visited the restaurant?
-- 3. What was the first item from the menu purchased by each customer?
-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
-- 5. Which item was the most popular for each customer?
-- 6. Which item was purchased first by the customer after they became a member?
-- 7. Which item was purchased just before the customer became a member?
-- 8. What is the total items and amount spent for each member before they became a member?
-- 9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?

-- Example Query:
SELECT
  	product_id,
    product_name,
    price
FROM dannys_diner.menu
ORDER BY price DESC
LIMIT 5;


