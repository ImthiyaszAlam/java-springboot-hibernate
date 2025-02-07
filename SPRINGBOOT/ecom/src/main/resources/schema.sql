CREATE TABLE Product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    desc VARCHAR(255),
    brand VARCHAR(255),
    price DECIMAL(10, 2),
    category VARCHAR(255),
    releaseDate DATE,
    available BOOLEAN,
    quantity INT,
    imageName VARCHAR(255),
        imageType VARCHAR(50),
        imageData LONGBLOB
);
