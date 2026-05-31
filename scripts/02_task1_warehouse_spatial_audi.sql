-- TITLE: Mint Classics - Task 1: Warehouse Capacity & Spatial Footprint Audit
-- ARCHITECTURE: Relational Database Optimization Model (MySQL)

-- TASK 1: Audit absolute inventory volumes and unique product footprints per warehouse
SELECT 
    warehouseCode,
    SUM(quantityInStock) AS total_items_stored,
    COUNT(productCode) AS total_unique_products
FROM products
GROUP BY warehouseCode
ORDER BY total_items_stored DESC;