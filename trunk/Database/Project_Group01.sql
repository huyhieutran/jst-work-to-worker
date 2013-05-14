USE MASTER
GO
IF EXISTS(SELECT * FROM sys.databases WHERE NAME = 'Project_Group01')
    DROP DATABASE Project_Group01
GO
CREATE DATABASE Project_Group01
GO
USE Project_Group01
--DROP DATABASE Project_Group01
-----------------------------------------------------------------------------------------
-- thể loại công việc 2 cấp
GO
CREATE TABLE Category
(
	ID INT IDENTITY PRIMARY KEY,
	Category_Name NVARCHAR(200) NOT NULL,
)
GO

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Location
(
	ID INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(500) NOT NULL	
)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Admin
(
	ID INT IDENTITY PRIMARY KEY,
	Usename NVARCHAR(200) NOT NULL,
	Password NVARCHAR(200) NOT NULL
)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Level_Job
(
	ID INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(500)
)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Account
(
	ID INT IDENTITY PRIMARY KEY,
	UseName NVARCHAR(100) NOT NULL,
	PASSWORD NVARCHAR(100) NOT NULL,
	ROLE BIT
)

--INSERT INTO Account(UseName,[PASSWORD],[ROLE]) VALUES('cuongnv','qBEvdtvDzZE=',0) --123456
--INSERT INTO Account(UseName,[PASSWORD],[ROLE]) VALUES('linhnn','qBEvdtvDzZE=',1)
-----------------------------------------------------------------------------------------
GO
CREATE TABLE Customer
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Account INT FOREIGN KEY REFERENCES Account(ID),
	NAME NVARCHAR(100) NOT NULL,
	ADDRESS NVARCHAR(200),	
	Phone NVARCHAR(20),
	Logo NVARCHAR(500),
	DESCRIPTION NTEXT
)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Feedback_Customer
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Customer INT FOREIGN KEY REFERENCES Customer(ID),
	Info_Feedback NVARCHAR(500)
)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Recruitment
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Customer INT,
	ID_Level_Job INT,
	Title NVARCHAR(500),
	Exprited_Date NVARCHAR(200),
	Contact_Person NVARCHAR(500),
	Email NVARCHAR(500),
	Number INT,
	Type_Of_Job BIT, -- 0 is : PartTime,1 is : FullTime
	Job_Description NTEXT,
	Benefits NTEXT,
	Job_Requiment NTEXT,
	
)
GO
ALTER TABLE Recruitment
ADD CONSTRAINT fk_Recruitment_cc_ID
FOREIGN KEY (ID_Customer)
REFERENCES Customer(ID)
GO
ALTER TABLE Recruitment
ADD CONSTRAINT fk_Recruitment_Level_Job_ID
FOREIGN KEY (ID_Level_Job)
REFERENCES Level_Job(ID)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Recruitment_Location
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Recruitment INT,
	ID_Location INT
)
GO
ALTER TABLE Recruitment_Location
ADD CONSTRAINT fk_Recruitment_ID
FOREIGN KEY (ID_Recruitment)
REFERENCES Recruitment(ID)
GO
ALTER TABLE Recruitment_Location
ADD CONSTRAINT fk_Location_ID
FOREIGN KEY (ID_Location)
REFERENCES Location(ID)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Recruitment_Category
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Recruitment INT,
	ID_Category INT
)
GO
ALTER TABLE Recruitment_Category
ADD CONSTRAINT fk_Recruitment_Cate_ID
FOREIGN KEY (ID_Recruitment)
REFERENCES Recruitment(ID)
GO
ALTER TABLE Recruitment_Category
ADD CONSTRAINT fk_Category_re_ID
FOREIGN KEY (ID_Category)
REFERENCES Category(ID)

-----------------------------------------------------------------------------------------
GO
--Gender >>> 0 is : Nu,1 is : Nam
--Status >>> 0 is : Tự do,1 is : Đang làm việc
CREATE TABLE Worker
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Account INT FOREIGN KEY REFERENCES Account(ID),
	Name NVARCHAR(50),
	Age INT,
	Gender BIT,
	Phone NVARCHAR(20),
	Address NVARCHAR(100),
	Email NVARCHAR(100) UNIQUE,
	Status BIT DEFAULT 0
)

-----------------------------------------------------------------------------------------
-- Bảng này làm quan hệ nhiều nhiều giữa bảng Work và bảng Worker
GO
CREATE TABLE Recruitment_To_Worker 
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Worker INT FOREIGN KEY REFERENCES Worker(ID),
	ID_Recruitment INT FOREIGN KEY REFERENCES Recruitment(ID)
)
--GO
--ALTER TABLE Recruitment_To_Worker  
--ADD CONSTRAINT fk_Worker_ID
--FOREIGN KEY (ID_Worker)
--REFERENCES Worker(ID)
--GO
--ALTER TABLE Recruitment_To_Worker DROP CONSTRAINT fk_Recruitment_ww_ID
--ADD CONSTRAINT fk_Recruitment_ww_ID
--FOREIGN KEY (ID_Recruitment)
--REFERENCES Recruitment(ID)

-----------------------------------------------------------------------------------------
--Rate >>> đánh giá 5 sao
GO
CREATE TABLE Feedback_System
(
	ID INT IDENTITY PRIMARY KEY,
	Customer_ID INT DEFAULT NULL,
	Worker_ID INT DEFAULT NULL,
	Info_Feedback NVARCHAR(500),
	Rate INT
)
GO
ALTER TABLE Feedback_System
ADD CONSTRAINT fk_Customer_fs_Feedback_ID
FOREIGN KEY (Customer_ID)
REFERENCES Customer(ID)
GO
ALTER TABLE Feedback_System
ADD CONSTRAINT fk_Worker_Feedback_ID
FOREIGN KEY (Worker_ID)
REFERENCES Worker(ID)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Appointment
(
	ID INT IDENTITY PRIMARY KEY,
	Customer_ID INT,
	Worker_ID INT,
	Date_Time DATETIME,
	Info NTEXT
)
GO
ALTER TABLE Appointment
ADD CONSTRAINT fk_Customer_LichHen_ID
FOREIGN KEY (Customer_ID)
REFERENCES Customer(ID)
GO
ALTER TABLE Appointment
ADD CONSTRAINT fk_Worker_LichHen_ID
FOREIGN KEY (Worker_ID)
REFERENCES Worker(ID)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE CV
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Worker INT FOREIGN KEY REFERENCES Worker(ID),
	ID_Level_Job INT,
	Title NVARCHAR(500),
	Identity_CardNumber NVARCHAR(100),
	Date_Issue_IDCard NVARCHAR(100),
	Place_Issue_IDCard NVARCHAR(100),
	Achievement NVARCHAR(500),
	Province NVARCHAR(200),
	Country NVARCHAR(200),
	Money_Income FLOAT,
	Type_Job BIT,--0 is : PartTime,1 is : FullTime
	ACTIVE BIT
)
GO
ALTER TABLE CV
ADD CONSTRAINT fk_CV_Level_Job_ID
FOREIGN KEY (ID_Level_Job)
REFERENCES Level_Job(ID)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE Education
(
	ID INT IDENTITY PRIMARY KEY,
	ID_CV INT FOREIGN KEY REFERENCES CV(ID),
	Name_School NVARCHAR(500),
	Degee_Level NVARCHAR(500),
	Fild_Of_Study NVARCHAR(500),
	From_Date NVARCHAR(200),
	To_Date NVARCHAR(200),
	Achiement NTEXT
)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE EmploymentHistory
(
	ID INT IDENTITY PRIMARY KEY,
	ID_CV INT FOREIGN KEY REFERENCES CV(ID),
	Category NVARCHAR(500),
	Job_Level NVARCHAR(500),
	Company NVARCHAR(500),
	From_Date NVARCHAR(200),
	To_Date NVARCHAR(200),
	Main_Duties NVARCHAR(200),
	Reson_Leaving NTEXT
)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE CV_Category
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Category INT,
	ID_CV INT
)
GO
ALTER TABLE CV_Category
ADD CONSTRAINT fk_CV_Category_ID
FOREIGN KEY (ID_Category)
REFERENCES Category(ID)
GO
ALTER TABLE CV_Category
ADD CONSTRAINT fk_CV_Category_cc_ID
FOREIGN KEY (ID_CV)
REFERENCES CV(ID)

-----------------------------------------------------------------------------------------
GO
CREATE TABLE CV_Location
(
	ID INT IDENTITY PRIMARY KEY,
	ID_CV INT,
	ID_Location INT
)
GO
ALTER TABLE CV_Location
ADD CONSTRAINT fk_CV_Location_ll_ID
FOREIGN KEY (ID_CV)
REFERENCES CV(ID)
GO
ALTER TABLE CV_Location
ADD CONSTRAINT fk_CV_Location_lll_cc_ID
FOREIGN KEY (ID_Location)
REFERENCES Location(ID)
-----------------------------------------------------------------------------------------
GO
CREATE TABLE Recruitment_CV
(
	ID INT IDENTITY PRIMARY KEY,
	ID_Recruitment INT FOREIGN KEY REFERENCES Recruitment(ID),
	ID_CV INT FOREIGN KEY REFERENCES CV(ID)
)
