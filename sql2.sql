CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    lastname VARCHAR(20),
    total_spend NUMERIC(10,2) CHECK (total_spend > 0),
    status VARCHAR(20) DEFAULT 'active',
    registration_date DATE DEFAULT CURRENT_DATE
);

select* from customers;


INSERT INTO customers (name, lastname, total_spend, status, registration_date)
VALUES
('Ali', 'Aliyev', 150.50, 'active', '2026-01-10'),
('Aysel', 'Mammadova', 320.75, 'active', '2026-01-12'),
('Murad', 'Hasanov', 85.00, 'inactive', '2026-01-15'),
('Leyla', 'Huseynova', 540.25, 'active', '2026-01-18'),
('Elvin', 'Quliyev', 210.90, 'active', '2026-01-20'),
('Nigar', 'Ismayilova', 75.50, 'inactive', '2026-01-22'),
('Kamran', 'Abdullayev', 680.00, 'active', '2026-02-01'),
('Sabina', 'Karimova', 125.99, 'active', '2026-02-05'),
('Rashad', 'Aliyev', 430.40, 'inactive', '2026-02-08'),
('Gunel', 'Rahimova', 95.25, 'active', '2026-02-10'),
('Tural', 'Jafarov', 750.80, 'active', '2026-02-15'),
('Laman', 'Safarova', 180.00, 'inactive', '2026-02-18'),
('Orkhan', 'Veliyev', 290.60, 'active', '2026-02-20'),
('Fidan', 'Mehdiyeva', 610.35, 'active', '2026-03-01'),
('Emin', 'Rustamov', 45.90, 'inactive', '2026-03-05'),
('Narmin', 'Babayeva', 390.00, 'active', '2026-03-10'),
('Farid', 'Mustafayev', 820.75, 'active', '2026-03-15'),
('Zahra', 'Aliyeva', 135.40, 'inactive', '2026-03-20'),
('Samir', 'Ibrahimov', 275.25, 'active', '2026-04-01'),
('Amina', 'Hasanova', 500.00, 'active', '2026-04-10');




select total_spend from customers;
select floor (total_spend) from customers;
select ceil (total_spend) from customers;
select round ((total_spend*1.02),1) from customers;

select mod(total_spend,100) from customers;

select sqrt(total_spend) from customers;


select initcap(name), initcap(lastname) from customers;

select trim(name) from customers;

select length(name) from customers;

select * ,(total_spend-1000) as sadiqlik from customers;