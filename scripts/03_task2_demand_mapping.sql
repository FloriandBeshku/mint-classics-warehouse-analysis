-- TITLE: Mint Classics - Task 2: Mapping Inventory Velocity Against Customer Demand
-- ARCHITECTURE: Relational Database Optimization Model (MySQL)

-- TASK 2: Intersect product line inventory metrics with historical customer demand patterns
SELECT
    p.warehouseCode,
    p.productLine,
    COUNT(DISTINCT p.productCode) AS unique_product_styles,
    SUM(p.quantityInStock) AS units_currently_in_stock,
    IFNULL(SUM(od.quantityOrdered), 0) AS total_units_ever_ordered,
    SUM(od.quantityOrdered * od.priceEach) AS total_revenue_generated
FROM products p
LEFT JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.warehouseCode, p.productLine
ORDER BY warehouseCode, total_revenue_generated DESC;