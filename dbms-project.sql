create table in_offer(
id int NOT NULL,
menu_item_id int,
PRIMARY KEY (id),
FOREIGN KEY (menu_item_id) references menu_item(id));

create table category(
id int NOT NULL,
category_name varchar(50),
PRIMARY KEY (id));

create table menu_item(
id int NOT NULL, 
item_name varchar(50) NOT NULL,
category_id int NOT NULL,
description text,
ingredients text, 
recipe text,
price decimal(12,2) NOT NULL,
rating int, 
PRIMARY KEY (id),
FOREIGN KEY (category_id) references category(id));