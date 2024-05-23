-- Initialize 'contacts' table
DROP TABLE contacts;

CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(255),
	PRIMARY KEY (contact_id)
);

SELECT *
FROM contacts;

-- Initialize 'category' table
DROP TABLE category;

CREATE TABLE category (
	category_id VARCHAR(4) NOT NULL,
	category VARCHAR(30),
	PRIMARY KEY (category_id)
);

SELECT *
FROM category;

-- Initialize 'subcategory' table
DROP TABLE subcategory;

CREATE TABLE subcategory (
	subcategory_id VARCHAR(8) NOT NULL,
	subcategory VARCHAR(30),
	PRIMARY KEY (subcategory_id)
);

SELECT *
FROM subcategory;

-- Initialize 'campaign' table
DROP TABLE campaign;

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(255),
	description VARCHAR(255),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(30),
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(4) NOT NULL,
	subcategory_id VARCHAR(8) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	PRIMARY KEY (cf_id)
);

SELECT *
FROM campaign;
