CREATE TABLE Campuses(
   Id INTEGER PRIMARY KEY,
   Campus CHAR(60),
   Location CHAR(30),
   County CHAR(30),
   Year INTEGER
);

CREATE TABLE disciplines(
   Id INTEGER PRIMARY KEY,
   Name CHAR(30)
);

CREATE TABLE degrees(
   Year INTEGER,
   Campus INTEGER,
   Degrees INTEGER,
   PRIMARY KEY(Year, Campus)
);

CREATE TABLE disciplineenrollments(
   Campus INTEGER,
   Discipline INTEGER,
   Year INTEGER,
   Undergraduate INTEGER,
   Graduate INTEGER,
   PRIMARY KEY(Campus, Discipline, Year)
);

CREATE TABLE enrollments(
   Campus INTEGER,
   Year INTEGER,
   TotalEnrollment_AY INTEGER,
   FTE_AY DOUBLE,
   PRIMARY KEY(Campus, Year)
);

CREATE TABLE faculty(
   Campus INTEGER,
   Year INTEGER,
   Faculty DOUBLE,
   PRIMARY KEY(Campus, Year)
);

CREATE TABLE csufees(
   Campus INTEGER,
   Year INTEGER,
   CampusFee INTEGER,
   PRIMARY KEY(Campus, Year)
);

