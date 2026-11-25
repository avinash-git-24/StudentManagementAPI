USE master;
GO
IF DB_ID(N'StudentManagementPractical10') IS NULL
    CREATE DATABASE StudentManagementPractical10;
GO
USE StudentManagementPractical10;
GO
IF OBJECT_ID(N'dbo.Students', N'U') IS NULL
BEGIN
    CREATE TABLE dbo.Students (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(100) NOT NULL,
        Email NVARCHAR(100) NOT NULL,
        Course NVARCHAR(100) NOT NULL
    );

    INSERT INTO dbo.Students (Name, Email, Course)
    VALUES
        ('Avinash Kumar', 'avinash@gmail.com', 'B.Tech CE'),
        ('Riya Shah', 'riya@gmail.com', 'B.Tech CE'),
        ('Ankit Patel', 'ankit@gmail.com', 'B.Tech IT'),
        ('Neha Joshi', 'neha@gmail.com', 'B.Tech EC'),
        ('Karan Shah', 'karan@gmail.com', 'B.Tech IT');
END;
GO
