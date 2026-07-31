-- ===========================================
-- Google Merchandise Store Customer Journey Analytics
-- Database Setup
-- ===========================================

CREATE DATABASE GoogleMerchandiseStore;

USE GoogleMerchandiseStore;

-- Main Customer Journey Table

CREATE TABLE customer_journey (

    path_id INT,
    path_step INT,
    total_touchpoints INT,
    campaign VARCHAR(100),
    total_revenue DECIMAL(12,2),
    days_to_key_event INT,
    touchpoints VARCHAR(255),
    conversion_rate DECIMAL(5,2),
    key_event_date DATE

);
