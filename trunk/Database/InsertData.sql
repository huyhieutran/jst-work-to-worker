
USE Project_Group01
-------------------------------Insert Category----------------------------------------------------------
GO

INSERT INTO Category VALUES(N'Sales')
INSERT INTO Category VALUES(N'Executive management')
INSERT INTO Category VALUES(N'Accounting/Finance')
INSERT INTO Category VALUES(N'IT - Software')
INSERT INTO Category VALUES(N'Production/Process')
INSERT INTO Category VALUES(N'Customer Service')
INSERT INTO Category VALUES(N'Marketing')
INSERT INTO Category VALUES(N'Administrative/Clerical')
INSERT INTO Category VALUES(N'Accounting/Auditing')


-------------------------------Insert Location----------------------------------------------------------
GO
INSERT INTO Location VALUES(N'Hanoi')
INSERT INTO Location VALUES(N'Hochiminh')
INSERT INTO Location VALUES(N'Danang')
INSERT INTO Location VALUES(N'Hue')
INSERT INTO Location VALUES(N'Other')

-------------------------------Insert Account----------------------------------------------------------
GO
INSERT INTO Account(UseName,[PASSWORD],[ROLE]) VALUES('cuongnv','qBEvdtvDzZE=',0) --Pass: 123456; 0:is Worker
INSERT INTO Account(UseName,[PASSWORD],[ROLE]) VALUES('linhnn','qBEvdtvDzZE=',1) --Pass: 123456; 1:is Customer
INSERT INTO Account(UseName,[PASSWORD],[ROLE]) VALUES('haibh','qBEvdtvDzZE=',1) --Pass: 123456; 1:is Customer
-------------------------------Insert Customer----------------------------------------------------------
GO
INSERT INTO Customer(ID_Account,NAME,[ADDRESS],Phone,Logo,[DESCRIPTION]) VALUES(2,N'Cty Holcim University',N'Hanoi',N'(04)3999999',N'VCB',N'20 nawm thanh lap va phat trien')
INSERT INTO Customer(ID_Account,NAME,[ADDRESS],Phone,Logo,[DESCRIPTION]) VALUES(3,N'Cty Danang University',N'Hanoi',N'(04)3888888',N'Logo',N'40 nawm thanh lap va phat trien')

-------------------------------Insert Level_Job----------------------------------------------------------
GO
INSERT INTO Level_Job(NAME) VALUES('New Grad/Internship')
INSERT INTO Level_Job(NAME) VALUES('1 year experience')
INSERT INTO Level_Job(NAME) VALUES('2 years experience')
INSERT INTO Level_Job(NAME) VALUES('3 years experience')

SELECT Category.Category_Name, COUNT(Recruitment_Category.ID_Recruitment) AS 'QuantityReqm' 
FROM Category LEFT JOIN Recruitment_Category  ON Category.ID =  Recruitment_Category.ID_Category
GROUP BY Category.Category_Name ORDER BY COUNT(Recruitment_Category.ID_Category)DESC

SELECT 



-------------------------------Insert Recruitment----------------------------------------------------------
GO
INSERT INTO Recruitment(ID_Customer,ID_Level_Job,Title,Exprited_Date,Contact_Person,Email,Number,Type_Of_Job,Job_Description,Benefits,Job_Requiment)
	VALUES(2,2,N'HSE Engineer (Health, Safety And Environment)','20/08/2013',N'Nguyễn Thanh Hải',N'hai_nt@gmail.com',50,1,N'Yêu cầu nhanh nhẹn, năng động, yêu nghề',N'Được hưởng chế độ bảo hiểm y tế',N'Tối thiểu 1 năm kinh nghiệm, ưu tiên có xe máy')
INSERT INTO Recruitment(ID_Customer,ID_Level_Job,Title,Exprited_Date,Contact_Person,Email,Number,Type_Of_Job,Job_Description,Benefits,Job_Requiment)
	VALUES(1,1,N'Nhân Viên Kinh Doanh ( Tiếng Anh Hoặc Tiếng Nhật)','20/10/2013',N'Nguyễn Hưng',N'hung_n@gmail.com',10,1,N'Yêu cầu nhanh nhẹn, năng động, yêu nghề',N'Được hưởng chế độ bảo hiểm y tế',N'Tối thiểu 1 năm kinh nghiệm, ưu tiên có xe máy')

-------------------------------Insert Recruitment_Category ----------------------------------------------------------
GO
INSERT INTO Recruitment_Category(ID_Recruitment,ID_Category) VALUES(1,4)
INSERT INTO Recruitment_Category(ID_Recruitment,ID_Category) VALUES(1,1)
INSERT INTO Recruitment_Category(ID_Recruitment,ID_Category) VALUES(4,1)

-------------------------------Insert Recruitment_Location ----------------------------------------------------------
GO
INSERT INTO Recruitment_Location(ID_Recruitment,ID_Location) VALUES(1,1)
INSERT INTO Recruitment_Location(ID_Recruitment,ID_Location) VALUES(2,2)








-------------------------------Insert Work_To_Worker----------------------------------------------------------
GO
INSERT INTO Work_To_Worker VALUES(1,1)
INSERT INTO Work_To_Worker VALUES(1,2)

-------------------------------Insert Feedback_System----------------------------------------------------------
GO
INSERT INTO Feedback_System VALUES(1,NULL,N'Info Feedback 1',2)
INSERT INTO Feedback_System VALUES(NULL,1,N'Info Feedback 2',3)

-------------------------------Insert Feedback_Customer----------------------------------------------------------
GO
INSERT INTO Feedback_Customer VALUES(1,N'Info Feedback 1')
INSERT INTO Feedback_Customer VALUES(2,N'Info Feedback 2')

-------------------------------Insert CV----------------------------------------------------------
GO
INSERT INTO CV VALUES(1,1,N'English',N'Position 1',N'Level 1',N'Place 1',200,N'Description 1',N'Detail 1')
INSERT INTO CV VALUES(1,2,N'Vietnamese',N'Position 2',N'Level 2',N'Place 2',300,N'Description 2',N'Detail 2')

-------------------------------Insert Appointment----------------------------------------------------------
GO
INSERT INTO Appointment VALUES(1,1,'04-10-2013',N'Appointment 1')

-------------------------------Insert Admin----------------------------------------------------------
GO
INSERT INTO Admin VALUES(N'admin',N'admin')
