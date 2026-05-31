-- TITLE: Mint Classics - Task 3: Simulating a 5% Across-the-Board Inventory Cut
-- ARCHITECTURE: Relational Database Optimization Model (MySQL)

-- TASK 3: Simulate a 5% across-the-board inventory reduction per warehouse
SELECT 
    warehouseCode,
    SUM(quantityInStock) AS current_total_inventory,
    ROUND(SUM(quantityInStock) * 0.05, 0) AS inventory_space_freed_by_5_percent,
    ROUND(SUM(quantityInStock) * 0.95, 0) AS remaining_inventory_after_cut
FROM products
GROUP BY warehouseCode;