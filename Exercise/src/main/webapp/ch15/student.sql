USE ExerciseDB;

CREATE TABLE IF NOT EXISTS Student(
   num int NOT NULL,
   depart  VARCHAR(20),
   name VARCHAR(30), 
   address VARCHAR(50), 
   phone VARCHAR(20),  
   PRIMARY KEY (num)
);
