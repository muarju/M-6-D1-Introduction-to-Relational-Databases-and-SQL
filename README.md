# M6-D1-Introduction to Relational Databases and SQL
### D1 - Introduction to Relational Databases and SQL Homework

## Create Books and Authors Table
Books should have name,category, cover,cover,author,created_at,updated_at,published_at fields
```
DROP TABLE IF EXISTS public.books;

CREATE TABLE 
	IF NOT EXISTS
		books(
			book_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(100) NOT NULL,
			category VARCHAR (50) NOT NULL,
            cover VARCHAR (100) NOT NULL,
			author INTEGER NOT NULL,
			published_at VARCHAR (20),
			created_at TIMESTAMPTZ DEFAULT NOW(),
			updated_at TIMESTAMPTZ DEFAULT NOW()	
	);
```

The author should have name, last_name,birth_year, country

```
DROP TABLE IF EXISTS public.authors;

CREATE TABLE 
	IF NOT EXISTS
		authors(
			author_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(20) NOT NULL,
			last_name VARCHAR (20) NOT NULL,
			birth_year INTEGER NULL,
			country VARCHAR (50) NULL,
			created_at TIMESTAMPTZ DEFAULT NOW(),
			updated_at TIMESTAMPTZ DEFAULT NOW()	
	);
```

Write a query to insert the following authors 
Top 10 Most Successful Authors in The World:
- Dan Brown. Sacrilege. 
- Agatha Christie. 
- Paulo Coelho.  
- Ken Follett.
- John Grisham.  
- Stephen King.
- Haruki Murakami.   
- James Patterson.

```
INSERT INTO authors(name,last_name,birth_year,country)	VALUES('Dan Brown','Sacrilege',1990,'Germany');
INSERT INTO authors(name,last_name,birth_year,country)	VALUES('Agatha','Christie',1990,'Germany');
INSERT INTO authors(name,last_name,birth_year,country)	VALUES('Paulo','Coelho',1990,'Germany');
INSERT INTO authors(name,last_name,birth_year,country)	VALUES('Ken','Follett',1990,'Germany');
INSERT INTO authors(name,last_name,birth_year,country)	VALUES('John','Grisham',1990,'Germany');
INSERT INTO authors(name,last_name,birth_year,country)	VALUES('Stephen','King',1990,'Germany');
INSERT INTO authors(name,last_name,birth_year,country)	VALUES('Haruki','Murakami',1990,'Germany');
INSERT INTO authors(name,last_name,birth_year,country)	VALUES('James','Patterson',1990,'Germany');
```


For each Author add at least 3 famous books of the author.
#### INSERT 
Add 5 Agatha Cristie books ( https://www.agathachristie.com/stories)

```
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Mysterious Affair at Styles','Novel','https://picsum.photos/200/300',1,'1992');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Secret Adversary','Novel','https://picsum.photos/200/300',1,'1922');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Murder on the Links','Novel','https://picsum.photos/200/300',1,'1923');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Agatha Christies Secret Notebooks','Nonfiction','https://picsum.photos/200/300',2,'2009');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Agatha Christies Complete Secret Notebooks','Nonfiction','https://picsum.photos/200/300',2,'2016');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Agatha Christie: A Life in Theatre','Nonfiction','https://picsum.photos/200/300',2,'2015');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Man in the Brown Suit','Novel','https://picsum.photos/200/300',3,'1924');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Secret of Chimneys','Novel','https://picsum.photos/200/300',3,'1925');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Murder of Roger Ackroyd','Novel','https://picsum.photos/200/300',3,'1926');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Never','Contemporary','https://picsum.photos/200/300',4,'2021');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Pillars of the Earth','Historical Fiction','https://picsum.photos/200/300',4,'1989');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Notre-Dame','Non-Fiction','https://picsum.photos/200/300',4,'2019');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Whistler: A Novel','Novel','https://picsum.photos/200/300',5,'2016');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Sooley: A Novel','Novel','https://picsum.photos/200/300',5,'2021');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Judges List: A Novel','Novel','https://picsum.photos/200/300',5,'2021');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Billy Summers','Novel','https://picsum.photos/200/300',6,'2021');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Stand','Novel','https://picsum.photos/200/300',6,'2008');
INSERT INTO books(name,category, cover,author,published_at) VALUES('On Writing','Novel','https://picsum.photos/200/300',6,'1920');
INSERT INTO books(name,category, cover,author,published_at) VALUES('First Person Singular: Stories','Stories','https://picsum.photos/200/300',7,'2021');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Who We are Reading When We are Reading Murakami','Novel','https://picsum.photos/200/300',7,'2020');
INSERT INTO books(name,category, cover,author,published_at) VALUES('Underground: The Tokyo Gas Attack and the Japanese Psyche','Stories','https://picsum.photos/200/300',7,'2011');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Red Book: A Black Book Thriller','Novel','https://picsum.photos/200/300',8,'2021');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The President’s Daughter: the #1 Sunday Times bestseller','Novel','https://picsum.photos/200/300',8,'2021');
INSERT INTO books(name,category, cover,author,published_at) VALUES('The Girl in Cabin 13','Novel','https://picsum.photos/200/300',8,'2019');
```

#### UPDATE
Write an update query to update books cover for given book id
```
UPDATE books SET cover='https://picsum.photos/id/237/200/300' where book_id=1;
```
Write an update query to update author 
```
birth_year for given author id
UPDATE authors SET birth_year=1995 WHERE author_id=2;
```


#### SELECT
Select books distinct by category
```
SELECT DISTINCT(category) from books;
```
Select books from a category (any)
```

SELECT * from books where category='Novel';
```
Select books which start with a letter (any letter)
```
SELECT * from books where name Like 'A%';
```
Select books which include a given word  (any word)
```
SELECT * from books where name Like '%The%';
```
Select authors which are “not” older than 60 years
```
SELECT * FROM authors where date_part('year', CURRENT_DATE)-birth_year<60;
```
Select authors which are  older than 40 years old
```
SELECT * FROM authors where date_part('year', CURRENT_DATE)-birth_year>=40;
```
Select only category,published_at from books
```
SELECT category,published_at from books
```
Count all books
```
SELECT COUNT(*) from books
```
Select authors and order them by age (calculate age in SQL, search about it 🤓) ASC
```
SELECT name, date_part('year', CURRENT_DATE)-birth_year AS age FROM authors ORDER BY AGE ASC
```

Select authors and order them by birth_year desc
```
SELECT * FROM authors ORDER BY birth_year DESC
```


#### DELETE
Delete all the authors from a given country
```
DELETE FROM authors WHERE country='Sweden'
```
Delete all the books from a given category
```
DELETE FROM books WHERE category='Contemporary'
```
Delete all authors if their last_name starts with H
```
DELETE FROM authors WHERE last_name LIKE 'H%'
```
