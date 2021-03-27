CREATE TABLE Category(
  categoryid INT AUTO_INCREMENT NOT NULL,
  category_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (categoryid)
) Engine=InnoDB;


CREATE TABLE Blog(
  blogid INT AUTO_INCREMENT NOT NULL,
  heading VARCHAR(100),
  author_name VARCHAR(45),
  categoryid INT,
  article TEXT,
  date TIMESTAMP,
  head_photo MEDIUMBLOB,
  blog_photo MEDIUMBLOB,
  PRIMARY KEY (blogid),
  FOREIGN KEY(categoryid) REFERENCES Category(categoryid)
)Engine=InnoDB;



