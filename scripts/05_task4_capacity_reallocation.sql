-- TITLE: Mint Classics - Task 4: Engineering the Space Reallocation and Stress-Test Plan
-- ARCHITECTURE: Relational Database Optimization Model (MySQL)

-- TASK 4: Stress-test storage capacities for the proposed warehouse consolidation
SELECT 
    (SELECT SUM(quantityInStock) FROM products WHERE warehouseCode = 'c') AS items_to_move_from_c,
    (SELECT SUM(quantityInStock) FROM products WHERE warehouseCode = 'b') AS items_currently_in_b,
    ROUND((SELECT SUM(quantityInStock) FROM products WHERE warehouseCode = 'b') / 0.67, 0) AS estimated_max_capacity_of_b;