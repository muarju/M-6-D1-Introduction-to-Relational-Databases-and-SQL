-- Create Books and Authors Table
-- Books should have name,category,cover,author,created_at,updated_at,published_at fields
DROP TABLE IF EXISTS public.books;

CREATE TABLE 
	IF NOT EXISTS
		books(
			book_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(100) NOT NULL,
			category VARCHAR (50) NOT NULL,
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


