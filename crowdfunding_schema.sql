-- drop tables if exists
drop table if exists contacts CASCADE;
drop table if exists category CASCADE;
drop table if exists subcategory CASCADE;
drop table if exists campaign CASCADE;


-- create contacts table and our primary key
CREATE TABLE contacts (
contacts_id int NOT NULL,
first_name VARCHAR (200) NOT NULL,
last_name VARCHAR (200) NOT NULL,
email VARCHAR (200) NOT NULL,
primary key (contacts_id)
);

CREATE TABLE category (
category_id VARCHAR (200) NOT NULL,
category VARCHAR (200) NOT NULL,
primary key (category_id) 
);

CREATE TABLE subcategory (
subcategory_id VARCHAR (200) NOT NULL,
subcategory VARCHAR (200) NOT NULL,
primary key (subcategory_id) 
);

CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contacts_id INT NOT NULL,
    company_name VARCHAR (300) NOT NULL,
    description VARCHAR (300) NOT NULL,
    goal DOUBLE PRECISION NOT NULL,
    pledged DOUBLE PRECISION NOT NULL,
    outcome VARCHAR (300) NOT NULL,
    Backers_count int NOT NULL,
    country VARCHAR (300) NOT NULL,
    currency VARCHAR (300) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id VARCHAR (300) NOT NULL,
    subcategory_id VARCHAR (300) NOT NULL,
        primary key (cf_id),
        foreign key (contacts_id) references contacts(contacts_id),
        foreign key (category_id) references category(category_id),
        foreign key (subcategory_id) references subcategory(subcategory_id)
);

--each table is to be run seperately
--SELECT * FROM contacts
--SELECT * FROM category
--SELECT * FROM subcategory
--SELECT * FROM campaign
