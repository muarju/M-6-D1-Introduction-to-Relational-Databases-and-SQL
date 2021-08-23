-- Create Books and Authors Table
-- Books should have name,category,cover,author,created_at,updated_at,published_at fields
DROP TABLE IF EXISTS public.books;

CREATE TABLE 
	IF NOT EXISTS
		books(
			book_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(100) NOT NULL,
			category VARCHAR (50) NOT NULL,
            cover VARCHAR (100) NOT NULL,
			author INTEGER NOT NULL,
			published_at DATE,
			created_at TIMESTAMPTZ DEFAULT NOW(),
			updated_at TIMESTAMPTZ DEFAULT NOW()	
	);

-- The author should have name, last_name,birth_year, country
DROP TABLE IF EXISTS public.authors;

CREATE TABLE 
	IF NOT EXISTS
		authors(
			author_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(20) NOT NULL,
			last_name VARCHAR (20) NOT NULL,
			date_year INTEGER NULL,
			country VARCHAR (50) NULL,
			created_at TIMESTAMPTZ DEFAULT NOW(),
			updated_at TIMESTAMPTZ DEFAULT NOW()	
	);

-- Write a query to insert the following authors 
-- Top 10 Most Successful Authors in The World:
-- Dan Brown. Sacrilege. 
-- Agatha Christie. 
-- Paulo Coelho.  
-- Ken Follett.
-- John Grisham.  
-- Stephen King.
-- Haruki Murakami.   
-- James Patterson.  
INSERT INTO authors(name,last_name)	VALUES('Dan Brown','Sacrilege');
INSERT INTO authors(name,last_name)	VALUES('Agatha','Christie');
INSERT INTO authors(name,last_name)	VALUES('Paulo','Coelho');
INSERT INTO authors(name,last_name)	VALUES('Ken','Follett');
INSERT INTO authors(name,last_name)	VALUES('John','Grisham');
INSERT INTO authors(name,last_name)	VALUES('Stephen','King');
INSERT INTO authors(name,last_name)	VALUES('Haruki','Murakami');
INSERT INTO authors(name,last_name)	VALUES('James','Patterson');


-- For each Author add at least 3 famous books of the author.
-- INSERT 
-- Add 5 Agatha Cristie books ( https://www.agathachristie.com/stories)
INSERT INTO books(name,category,author,published_at) VALUES('The Mysterious Affair at Styles','Novel',1,'1992');
INSERT INTO books(name,category,author,published_at) VALUES('The Secret Adversary','Novel',1,'1922');
INSERT INTO books(name,category,author,published_at) VALUES('The Murder on the Links','Novel',1,'1923');
INSERT INTO books(name,category,author,published_at) VALUES('Agatha Christies Secret Notebooks','Nonfiction',2,'2009');
INSERT INTO books(name,category,author,published_at) VALUES('Agatha Christies Complete Secret Notebooks','Nonfiction',2,'2016');
INSERT INTO books(name,category,author,published_at) VALUES('Agatha Christie: A Life in Theatre','Nonfiction',2,'2015');
INSERT INTO books(name,category,author,published_at) VALUES('The Man in the Brown Suit','Novel',3,'1924');
INSERT INTO books(name,category,author,published_at) VALUES('The Secret of Chimneys','Novel',3,'1925');
INSERT INTO books(name,category,author,published_at) VALUES('The Murder of Roger Ackroyd','Novel',3,'1926');
INSERT INTO books(name,category,author,published_at) VALUES('Never','Contemporary',4,'2021');
INSERT INTO books(name,category,author,published_at) VALUES('The Pillars of the Earth','Historical Fiction',4,'1989');
INSERT INTO books(name,category,author,published_at) VALUES('Notre-Dame','Non-Fiction',4,'2019');
INSERT INTO books(name,category,author,published_at) VALUES('The Whistler: A Novel','Novel',5,'2016');
INSERT INTO books(name,category,author,published_at) VALUES('Sooley: A Novel','Novel',5,'2021');
INSERT INTO books(name,category,author,published_at) VALUES('The Judges List: A Novel','Novel',5,'2021');
INSERT INTO books(name,category,author,published_at) VALUES('Billy Summers','Novel',6,'2021');
INSERT INTO books(name,category,author,published_at) VALUES('The Stand','Novel',6,'2008');
INSERT INTO books(name,category,author,published_at) VALUES('On Writing','Novel',6,'1920');
INSERT INTO books(name,category,author,published_at) VALUES('First Person Singular: Stories','Stories',7,'2021');
INSERT INTO books(name,category,author,published_at) VALUES('Who We are Reading When We are Reading Murakami','Novel',7,'2020');
INSERT INTO books(name,category,author,published_at) VALUES('Underground: The Tokyo Gas Attack and the Japanese Psyche','Stories',7,'2011');
INSERT INTO books(name,category,author,published_at) VALUES('The Red Book: A Black Book Thriller','Novel',8,'2021');
INSERT INTO books(name,category,author,published_at) VALUES('The President’s Daughter: the #1 Sunday Times bestseller','Novel',8,'2021');
INSERT INTO books(name,category,author,published_at) VALUES('The Girl in Cabin 13','Novel',8,'2019');



