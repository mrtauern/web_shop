CREATE USER 'DBadmin'@'localhost' IDENTIFIED BY 'Password123';
GRANT ALL PRIVILEGES ON *.* TO 'DBadmin'@'localhost';

CREATE USER 'DBread_only'@'localhost' IDENTIFIED BY 'Password123';
GRANT SELECT ON *.* TO 'DBread_only'@'localhost';

CREATE USER 'DBread_only_restricted'@'localhost' IDENTIFIED BY 'Password123';
GRANT SELECT ON categories TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON countries TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON order_status TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON product_options TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON product_options_choice TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON product_options_product_options_choice TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON products TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON products_categories TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON products_product_options TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON users TO 'DBread_only_restricted'@'localhost';
GRANT SELECT ON reviews TO 'DBread_only_restricted'@'localhost';
