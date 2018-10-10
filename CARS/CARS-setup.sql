#Abhinav Singh and Jake Veazey
# asingh54@calpoly.edu and 

CREATE TABLE continents(
   ContId INT PRIMARY KEY,
   Continent   VARCHAR(30)
);

CREATE TABLE countries (
   CountryId INT PRIMARY KEY,
   CountryName VARCHAR(30),
   Continent INT,
   FOREIGN KEY(Continent) REFERENCES continents(ContId)
);

CREATE TABLE carMakers (
   Id INT PRIMARY KEY,
   Maker VARCHAR(30),
   FullName VARCHAR(30),
   Country INT,
   FOREIGN KEY(Country) REFERENCES countries(CountryId)
);

CREATE TABLE modelList (
   ModelId INT PRIMARY KEY,
   Maker INT,
   Model VARCHAR(30),
   FOREIGN KEY(Maker) REFERENCES carMakers(Id),
   UNIQUE(Model)
);

CREATE TABLE carNames(
   MakeId INT PRIMARY KEY,
   Model VARCHAR(30),
   MakeDescription VARCHAR(60),
   FOREIGN KEY(Model) REFERENCES modelList(Model)
);

CREATE TABLE carData(
   Id INT REFERENCES carNames,
   MPG DOUBLE,
   Cylinders INT,
   Edispl INT,
   Horsepower INT,
   Weight INT,
   Accelerate DOUBLE,
   Year INT,
   FOREIGN KEY(Id) REFERENCES carNames(MakeId)
);