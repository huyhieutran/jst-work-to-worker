
USE Project_Group01
-------------------------------Proc Category----------------------------------------------------------
GO
CREATE PROC SP_GetList_Category
AS
	SELECT * FROM Category
GO
CREATE PROC SP_Insert_Category
	@ID_Parent INT,@Category_Name NVARCHAR(200),@ID INT OUTPUT
AS
	INSERT INTO Category VALUES(@ID_Parent,@Category_Name)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Category
	@ID_Parent INT,@Category_Name NVARCHAR(200),@ID INT
AS
	UPDATE Category SET ID_Parent=@ID_Parent,Category_Name = @Category_Name
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Category
	@ID INT OUTPUT
AS
	DELETE FROM Category WHERE ID =@ID

-------------------------------Proc Region----------------------------------------------------------
GO
CREATE PROC SP_GetList_Region
AS
	SELECT * FROM Region
GO
CREATE PROC SP_Insert_Region
	@Name_Region NVARCHAR(500),@ID INT OUTPUT
AS
	INSERT INTO Region VALUES(@Name_Region)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Region
	@Name_Region NVARCHAR(500),@ID INT
AS
	UPDATE Region SET Name_Region = @Name_Region
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Region
	@ID INT OUTPUT
AS
	DELETE FROM Region WHERE ID =@ID

-------------------------------Proc Customer----------------------------------------------------------
GO
CREATE PROC SP_GetList_Customer
AS
	SELECT * FROM Customer
GO
CREATE PROC SP_Insert_Customer
	@Region_ID INT,@NAME NVARCHAR(100),@ADDRESS NVARCHAR(200),@Phone NVARCHAR(20),@Contact NVARCHAR(150),@Detail NTEXT,@DESCRIPTION NTEXT,@ID INT OUTPUT
AS
	INSERT INTO Customer VALUES(@Region_ID,@NAME,@ADDRESS,@Phone,@Contact,@Detail,@DESCRIPTION)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Customer
	@Region_ID INT,@NAME NVARCHAR(100),@ADDRESS NVARCHAR(200),@Phone NVARCHAR(20),@Contact NVARCHAR(150),@Detail NTEXT,@DESCRIPTION NTEXT,@ID INT
AS
	UPDATE Customer SET Region_ID = @Region_ID,NAME = @NAME,ADDRESS = @ADDRESS,Phone = @Phone,Contact = @Contact,Detail = @Detail,DESCRIPTION = @DESCRIPTION
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Customer
	@ID INT OUTPUT
AS
	DELETE FROM Customer WHERE ID =@ID

-------------------------------Proc Work----------------------------------------------------------
GO
CREATE PROC SP_GetList_Work
AS
	SELECT * FROM Work
GO
CREATE PROC SP_Insert_Work
	@Category_ID INT,@Customer_ID INT,@Region_ID INT,@Name_Work NVARCHAR(500),@Description_Work NTEXT,@Work_Requirement NVARCHAR(200),@Type_Work INT,@ID INT OUTPUT
AS
	INSERT INTO Work VALUES(@Category_ID,@Customer_ID,@Region_ID,@Name_Work,@Description_Work,@Work_Requirement,@Type_Work)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Work
	@Category_ID INT,@Customer_ID INT,@Region_ID INT,@Name_Work NVARCHAR(500),@Description_Work NTEXT,@Work_Requirement NVARCHAR(200),@Type_Work INT,@ID INT
AS
	UPDATE Work SET Category_ID = @Category_ID,Customer_ID = @Customer_ID,Region_ID = @Region_ID,Name_Work = @Name_Work,Description_Work = @Description_Work,Work_Requirement = @Work_Requirement,Type_Work = @Type_Work
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Work
	@ID INT OUTPUT
AS
	DELETE FROM Work WHERE ID =@ID

-------------------------------Proc Worker----------------------------------------------------------
GO
CREATE PROC SP_GetList_Worker
AS
	SELECT * FROM Worker
GO
CREATE PROC SP_Insert_Worker
	@Region_ID INT,@UseName NVARCHAR(50),@Password NVARCHAR(200),@Name NVARCHAR(50),@Age INT,@Gender BIT,@Phone NVARCHAR(20),@Address NVARCHAR(100),@Email NVARCHAR(100),@Status BIT,@ID INT OUTPUT
AS
	INSERT INTO Worker VALUES(@Region_ID,@UseName,@Password,@Name,@Age,@Gender,@Phone,@Address,@Email,@Status)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Worker
	@Region_ID INT,@UseName NVARCHAR(50),@Password NVARCHAR(200),@Name NVARCHAR(50),@Age INT,@Gender BIT,@Phone NVARCHAR(20),@Address NVARCHAR(100),@Email NVARCHAR(100),@Status BIT,@ID INT
AS
	UPDATE Worker SET Region_ID = @Region_ID,UseName = @UseName,Password = @Password,Name = @Name,Age = @Age,Gender = @Gender,Phone = @Phone,Address = @Address,Email = @Email,Status = @Status
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Worker
	@ID INT OUTPUT
AS
	DELETE FROM Worker WHERE ID =@ID

-------------------------------Proc Feedback_System----------------------------------------------------------
GO
CREATE PROC SP_GetList_Feedback_System
AS
	SELECT * FROM Feedback_System
GO
CREATE PROC SP_Insert_Feedback_System
	@Customer_ID INT,@Worker_ID INT,@Info_Feedback NVARCHAR(500),@Rate INT,@ID INT OUTPUT
AS
	INSERT INTO Feedback_System VALUES(@Customer_ID,@Worker_ID,@Info_Feedback,@Rate)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Feedback_System
	@Customer_ID INT,@Worker_ID INT,@Info_Feedback NVARCHAR(500),@Rate INT,@ID INT
AS
	UPDATE Feedback_System SET Customer_ID = @Customer_ID,Worker_ID = @Worker_ID,Info_Feedback = @Info_Feedback,Rate = @Rate
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Feedback_System
	@ID INT OUTPUT
AS
	DELETE FROM Feedback_System WHERE ID =@ID

-------------------------------Proc Feedback_Customer----------------------------------------------------------
GO
CREATE PROC SP_GetList_Feedback_Customer
AS
	SELECT * FROM Feedback_Customer
GO
CREATE PROC SP_Insert_Feedback_Customer
	@Customer_ID INT,@Info_Feedback NVARCHAR(500),@ID INT OUTPUT
AS
	INSERT INTO Feedback_Customer VALUES(@Customer_ID,@Info_Feedback)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Feedback_Customer
	@Customer_ID INT,@Info_Feedback NVARCHAR(500),@ID INT
AS
	UPDATE Feedback_Customer SET Customer_ID = @Customer_ID,Info_Feedback = @Info_Feedback
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Feedback_Customer
	@ID INT OUTPUT
AS
	DELETE FROM Feedback_Customer WHERE ID =@ID

-------------------------------Proc CV----------------------------------------------------------
GO
CREATE PROC SP_GetList_CV
AS
	SELECT * FROM CV
GO
CREATE PROC SP_Insert_CV
	@Worker_ID INT,@Total_Years_Experience INT,@Language_Proficiency NVARCHAR(200),@Expected_Position NVARCHAR(200),@Expected_Job_Level NVARCHAR(200),@Expected_Work_Place NVARCHAR(200),@Expected_Salary FLOAT,@Description NTEXT,@Detail NTEXT,@ID INT OUTPUT
AS
	INSERT INTO CV VALUES(@Worker_ID,@Total_Years_Experience,@Language_Proficiency,@Expected_Position,@Expected_Job_Level,@Expected_Work_Place,@Expected_Salary,@Description,@Detail)
	set @ID =@@identity
GO
CREATE PROC SP_Update_CV
	@Worker_ID INT,@Total_Years_Experience INT,@Language_Proficiency NVARCHAR(200),@Expected_Position NVARCHAR(200),@Expected_Job_Level NVARCHAR(200),@Expected_Work_Place NVARCHAR(200),@Expected_Salary FLOAT,@Description NTEXT,@Detail NTEXT,@ID INT
AS
	UPDATE CV SET Worker_ID = @Worker_ID,Total_Years_Experience = @Total_Years_Experience,Language_Proficiency = @Language_Proficiency,Expected_Position = @Expected_Position,Expected_Job_Level = @Expected_Job_Level,Expected_Salary = @Expected_Salary,Description = @Description,Detail = @Detail
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_CV
	@ID INT OUTPUT
AS
	DELETE FROM CV WHERE ID =@ID

-------------------------------Proc Appointment----------------------------------------------------------
GO
CREATE PROC SP_GetList_Appointment
AS
	SELECT * FROM Appointment
GO
CREATE PROC SP_Insert_Appointment
	@Customer_ID INT,@Worker_ID INT,@Date_Time DATETIME,@Info NTEXT,@ID INT OUTPUT
AS
	INSERT INTO Appointment VALUES(@Customer_ID,@Worker_ID,@Date_Time,@Info)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Appointment
	@Customer_ID INT,@Worker_ID INT,@Date_Time DATETIME,@Info NTEXT,@ID INT
AS
	UPDATE Appointment SET Customer_ID = @Customer_ID,Worker_ID = @Worker_ID,Date_Time = @Date_Time,Info = @Info
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Appointment
	@ID INT OUTPUT
AS
	DELETE FROM Appointment WHERE ID =@ID

-------------------------------Proc Admin----------------------------------------------------------
GO
CREATE PROC SP_GetList_Admin
AS
	SELECT * FROM Admin
GO
CREATE PROC SP_Insert_Admin
	@Usename NVARCHAR(200),@Password NVARCHAR(200),@ID INT OUTPUT
AS
	INSERT INTO Admin VALUES(@Usename,@Password)
	set @ID =@@identity
GO
CREATE PROC SP_Update_Admin
	@Usename NVARCHAR(200),@Password NVARCHAR(200),@ID INT
AS
	UPDATE Admin SET Usename = @Usename,Password = @Password
	WHERE ID=@ID
GO
CREATE PROC SP_Delete_Admin
	@ID INT OUTPUT
AS
	DELETE FROM Admin WHERE ID =@ID
