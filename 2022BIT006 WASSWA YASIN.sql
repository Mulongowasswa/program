create database OnlineBookstore;
USE OnlineBookstore;
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100));
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number VARCHAR(20)
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

    CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(20),
    contact_person VARCHAR(20),
    phone_number VARCHAR(20)
CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    customer_id INT,
    order_id INT,
    rating INT,
    comments TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id));
    INSERT INTO Departments (department_id, department_name)
VALUES
    (1, 'Sales'),
    (2, 'Marketing'),
    (3, 'Human Resources'),	
    (4, 'Finance'),
    (5, 'IT'),
    (6, 'Operations'),
    (7, 'Research and Development'),
    (8, 'Customer Service'),
    (9, 'Legal'),
    (10, 'Procurement');
    INSERT INTO Employees (employee_id, first_name, last_name, department_id)
VALUES
    (1, 'Mulongo', 'Daphine', 1),
    (2, 'Mulongo', 'Wasswa', 1),
    (3, 'Mulongo', 'Kato', 2),
    (4, 'Mulongo', 'Babirye', 2),	
    (5, 'Mulongo', 'Nakato', 3),
    (6, 'Atwine', 'Mercy', 3),
    (7, 'ankunda', 'Shakirah', 1),
    (8, 'kembabazi', 'Ritah', 2),
    (9, 'Atukunda', 'Ann', 3),
    (10, 'kyohirwe', 'Viola', 1);

INSERT INTO Customers (customer_id, first_name, last_name, phone_number)
VALUES	
    (1, 'Sseguya', 'Steven', '123-456-7890'),
    (2, 'vicent', 'wadada', '987-654-3210'),
    (3, 'peter', 'kun', '555-555-5555'),
    (4, 'dickson', 'dick', '444-444-4444'),
    (5, 'katushabe', 'dianah', '333-333-3333'),
    (6, 'dan', 'kakubo', '222-222-2222'),
    (7, 'Allan', 'Taylor', '111-111-1111'),
    (8, 'Matovu', 'daglous', '999-999-9999'),
    (9, 'Barbara', 'babie', '888-888-8888'),
    (10, 'irene', 'Naluswata', '777-777-7777');
INSERT INTO Orders (order_id, customer_id, total_amount)
VALUES
    (1, 1,  100.00),
    (2, 2,  150.00),
    (3, 3,  200.00),
    (4, 4,  250.00),
    (5, 5, 300.00),
    (6, 6, 350.00),
    (7, 7, 400.00),
    (8, 8, 450.00),
    (9, 9, 500.00),
    (10, 10, 550.00);
INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number)
VALUES
    (1, 'Tech Supplier', 'John', '987-654-3210'),
    (2, 'Electronics Inc.', 'Yasin', '123-456-7890'),
    (3, 'Gadgets Galore', 'Mike', '555-555-5555'),
    (4, 'Accessories Plus', 'Sarah', '444-444-4444'),
    (5, 'Tech Solutions', 'Roberto', '333-333-3333'),
    (6, 'Electronics World', 'David', '222-222-2222'),
    (7, 'Gadget Guru', 'Emily', '111-111-1111'),
    (8, 'Tech Emporium', 'Steven', '999-999-9999'),
    (9, 'Electronics Kingdom', 'Emma', '888-888-8888'),
    (10, 'Digital Dreams', 'Christine', '777-777-7777');
INSERT INTO Feedback (feedback_id, customer_id, order_id, rating, comments)
VALUES
    (1, 1, 1, 6, 'Great service'),
    (2, 2, 2, 4, 'Good experience '),
    (3, 3, 3, 5, 'Average experience '),
    (4, 4, 4, 1, 'Poor customer service'),
    (5, 5, 5, 3, 'Terrible experience');





