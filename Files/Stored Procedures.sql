USE [Assignment2]
GO

/****** Object:  StoredProcedure [dbo].[admin_user_Logins]    Script Date: 02/04/2010 17:11:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[admin_user_Logins] 
	-- Add the parameters for the stored procedure here
	@name varchar(50),
	@password varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Admin_Logins.UserName,Admin_Logins.Password from Admin_Logins 
	WHERE UserName=@name AND Password=@password
END

GO

/****** Object:  StoredProcedure [dbo].[Assign_Doctor_To_Patient]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Assign_Doctor_To_Patient] 
	-- Add the parameters for the stored procedure here
	@doctorid varchar(50),
	@patientid int,
	@patienttype int,
	@bedid varchar(50),
	@visitdate datetime,
	@symptoms varchar(50),
	@disease varchar(50),
	@treatment varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Visit
	(
		DoctorId,
		PatientId,
		PatientType,
		BedId,
		DateOfVisit,
		Symptoms,
		Disease,
		Treatment
	)
	VALUES
	(
		@doctorid,
		@patientid,
		@patienttype,
		@bedid,
		@visitdate,
		@symptoms,
		@disease,
		@treatment
	)
END

GO

/****** Object:  StoredProcedure [dbo].[Available_Bed_List]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Available_Bed_List]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Bed.Id,Bed.BedName,Bed.RatePerDay,Bed.BedType
	FROM Bed 
	WHERE Bed.PatientId IS NULL;
END

GO

/****** Object:  StoredProcedure [dbo].[Available_In_Patients]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Available_In_Patients]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Visit.PatientId,Visit.PatientType, Visit.BedId,Visit.DoctorId,Visit.DateOfVisit,Visit.DateOfDischarge
	FROM Visit
	WHERE Visit.PatientType=0 AND Visit.DateOfDischarge IS NULL;
END

GO

/****** Object:  StoredProcedure [dbo].[Display_TOP_5_Doctors]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Display_TOP_5_Doctors] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Top 5 dbo.Visit.DoctorId, dbo.Doctor.Name,dbo.Doctor.Address,dbo.Doctor.Phone, count(dbo.Visit.DoctorId) AS NO_OF_PATIENTS from dbo.Visit,dbo.Doctor where dbo.Doctor.Id=dbo.Visit.DoctorId group by dbo.Visit.DoctorId,dbo.Doctor.Name,dbo.Doctor.Address,dbo.Doctor.Phone order by COUNT(dbo.Visit.DoctorId) desc 
END

GO

/****** Object:  StoredProcedure [dbo].[Doctor_History_Filter_ID_GridView]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Doctor_History_Filter_ID_GridView]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Doctor.Id,Visit.PatientId,Visit.PatientType, Visit.BedId,Visit.DateOfVisit,Visit.DateOfDischarge
	FROM Visit,Doctor
	WHERE Visit.DoctorId=Doctor.Id AND Doctor.Id=@id;
END

GO

/****** Object:  StoredProcedure [dbo].[Doctors_History]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Doctors_History]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Doctor.Id
	FROM Doctor
END

GO

/****** Object:  StoredProcedure [dbo].[Doctors_List]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Doctors_List]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Doctor.Id,Doctor.Name,Doctor.Address,Doctor.Phone
	FROM Doctor
END

GO

/****** Object:  StoredProcedure [dbo].[Get_Bed_Id]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Bed_Id]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Bed.Id
	FROM Bed;
END

GO

/****** Object:  StoredProcedure [dbo].[Get_Bed_Rate_In_Patients]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Bed_Rate_In_Patients] 
	-- Add the parameters for the stored procedure here
	@bedid varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Bed.RatePerDay
	FROM Bed
	WHERE Bed.Id=@bedid;
END

GO

/****** Object:  StoredProcedure [dbo].[Get_BedID_In_Patients]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_BedID_In_Patients]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Visit.BedId
	FROM Visit
	WHERE Visit.PatientId=@id AND Visit.DateOfDischarge IS NULL;
END

GO

/****** Object:  StoredProcedure [dbo].[Get_Description_In_Patient]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Description_In_Patient]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Visit.Treatment
	FROM Visit
	WHERE Visit.PatientId=@id;
END

GO

/****** Object:  StoredProcedure [dbo].[Get_In_Patient_Name]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_In_Patient_Name] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Name
	FROM Visit,Patient
	WHERE Visit.PatientId=@id AND Patient.Id=Visit.PatientId;
END

GO

/****** Object:  StoredProcedure [dbo].[Get_In_Patient_Visit_date]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_In_Patient_Visit_date]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Visit.DateOfVisit
	FROM Visit
	WHERE Visit.PatientId=@id AND Visit.DateOfDischarge IS NULL;
END

GO

/****** Object:  StoredProcedure [dbo].[Get_Patient_Id]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Patient_Id] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Id 
	FROM Patient;
END

GO

/****** Object:  StoredProcedure [dbo].[In_Patients_Id]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[In_Patients_Id]
	-- Add the parameters for the stored procedure here
	
@value int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Visit.PatientId,Visit.PatientType, Visit.BedId,Visit.DoctorId,Visit.DateOfVisit,Visit.DateOfDischarge
	FROM Visit
	WHERE Visit.PatientType=0 AND Visit.DateOfDischarge IS NULL AND Visit.PatientId=@value;
END
GO

/****** Object:  StoredProcedure [dbo].[Insert_Bed_Record]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_Bed_Record] 
	-- Add the parameters for the stored procedure here
	@id varchar(50),
	@name varchar(50),
	@rate int,
	@bedtype varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Bed
	(
		Id,
		BedName,
		RatePerDay,
		BedType
	)
	VALUES
	(
		@id,
		@name,
		@rate,
		@bedtype
	);
END

GO

/****** Object:  StoredProcedure [dbo].[Insert_doctor_record]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_doctor_record] 
	-- Add the parameters for the stored procedure here
	@id int,
	@name varchar(50),
	@address varchar(50),
	@phone int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Doctor
	(
		Id,
		Name,
		Address,
		Phone
	)
	VALUES
	(
		@id,
		@name,
		@address,
		@phone
	)
	
END

GO

/****** Object:  StoredProcedure [dbo].[Insert_patient_record]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_patient_record] 
	-- Add the parameters for the stored procedure here
	@id int,
	@name varchar(50),
	@address varchar(50),
	@dob datetime,
	@phone int,
	@emergency int,
	@registration datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Patient
	(
		Id,
		Name,
		Address,
		DateOfBirth,
		Phone,
		EmergencyContact,
		DateOfRegistration
	)
	VALUES
	(
		@id,
		@name,
		@address,
		@dob,
		@phone,
		@emergency,
		@registration
	)
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_List_Filter_Details]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_List_Filter_Details] 
	-- Add the parameters for the stored procedure here
	@name varchar(50),
	@register datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Id,Patient.Name,Visit.PatientType,Patient.Address,Patient.DateOfBirth,
			Patient.Phone,Patient.EmergencyContact,Patient.DateOfRegistration
	FROM Patient,Visit
	WHERE Patient.Id=Visit.PatientId AND Patient.DateOfRegistration=@register AND Patient.Name=@name;
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_List_Filter_Name_DropDown]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_List_Filter_Name_DropDown]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Id,Patient.Name,Visit.PatientType,Patient.Address,Patient.DateOfBirth,
			Patient.Phone,Patient.EmergencyContact,Patient.DateOfRegistration
	
	FROM Patient,Visit
	WHERE Patient.Id=Visit.PatientId;
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_List_Filter_Name_GridView]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_List_Filter_Name_GridView] 
	-- Add the parameters for the stored procedure here
	@name varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Id,Patient.Name,Visit.PatientType,Patient.Address,Patient.DateOfBirth,
			Patient.Phone,Patient.EmergencyContact,Patient.DateOfRegistration
	FROM Patient,Visit
	WHERE Patient.Id=Visit.PatientId AND Patient.Name=@name;
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_List_Filter_Register_GridView]    Script Date: 02/04/2010 17:11:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_List_Filter_Register_GridView]
	-- Add the parameters for the stored procedure here
	@registerdate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Id,Patient.Name,Visit.PatientType,Patient.Address,Patient.DateOfBirth,
			Patient.Phone,Patient.EmergencyContact,Patient.DateOfRegistration
	FROM Patient,Visit
	WHERE Patient.Id=Visit.PatientId AND Patient.DateOfRegistration=@registerdate;
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_Partial_Name_Search]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_Partial_Name_Search]
	-- Add the parameters for the stored procedure here
	@name varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Id,Patient.Name,Visit.PatientType,Patient.Address,Patient.DateOfBirth,
			Patient.Phone,Patient.EmergencyContact,Patient.DateOfRegistration
	FROM Patient,Visit
	WHERE Patient.Id=Visit.PatientId AND Patient.Name LIKE '%'+@name+'%';
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_Registration]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_Registration]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Id,Patient.Name,Patient.Address,Patient.DateOfBirth,
			Patient.Phone,Patient.EmergencyContact,Patient.DateOfRegistration
	FROM Patient ;
	
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_Visit_Filter_List]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_Visit_Filter_List] 
	-- Add the parameters for the stored procedure here
	@name varchar(50),
	@visit datetime,
	@discharge datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Name,Patient.Address,Visit.PatientType,Visit.Symptoms,
			Visit.Disease,Visit.Treatment,Visit.DateOfVisit,Visit.DateOfDischarge
	FROM Patient ,Visit
	WHERE Patient.Name=@name AND Visit.DateOfVisit=@visit AND Visit.DateOfDischarge=@discharge
	       AND Visit.PatientId=Patient.Id
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_Visit_Filter_VisitDate_GridView]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_Visit_Filter_VisitDate_GridView] 
	-- Add the parameters for the stored procedure here
	@visitdate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Name,Patient.Address,Visit.PatientType,Visit.Symptoms,
			Visit.Disease,Visit.Treatment,Visit.DateOfVisit,Visit.DateOfDischarge
	FROM Patient ,Visit
	WHERE Visit.PatientId=Patient.Id AND Visit.DateOfVisit=@visitdate;
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_Visits]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_Visits]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Name,Visit.PatientType,
			Visit.DateOfVisit,Visit.DateOfDischarge,Visit.Symptoms,
			Visit.Disease,Visit.Treatment 
	FROM Visit,Patient
	WHERE Patient.Id=Visit.Id
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_Visits_Filter_Name_DropDown]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_Visits_Filter_Name_DropDown]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Name,Patient.Address,Visit.PatientType,Visit.Symptoms,
			Visit.Disease,Visit.Treatment,Visit.DateOfVisit,Visit.DateOfDischarge
	FROM Patient ,Visit
	WHERE Patient.Id=Visit.PatientId;
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_Visits_Filter_Name_GridView]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_Visits_Filter_Name_GridView] 
	-- Add the parameters for the stored procedure here
	@name varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Name,Patient.Address,Visit.PatientType,Visit.Symptoms,
			Visit.Disease,Visit.Treatment,Visit.DateOfVisit,Visit.DateOfDischarge
	FROM Patient ,Visit
	WHERE Visit.PatientId=Patient.Id AND Patient.Name=@name;
END

GO

/****** Object:  StoredProcedure [dbo].[Patient_Vist_Filter_DischargeDate_GridView]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Patient_Vist_Filter_DischargeDate_GridView]
	-- Add the parameters for the stored procedure here
	@discharge datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Patient.Name,Patient.Address,Visit.PatientType,Visit.Symptoms,
			Visit.Disease,Visit.Treatment,Visit.DateOfVisit,Visit.DateOfDischarge
	FROM Patient ,Visit
	WHERE Visit.PatientId=Patient.Id AND Visit.DateOfDischarge=@discharge;
END

GO

/****** Object:  StoredProcedure [dbo].[update_Bed_List]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_Bed_List] 
	-- Add the parameters for the stored procedure here
	@id varchar(50),
	@bedname varchar(50),
	@rate int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Bed 
	SET BedName=@bedname,RatePerDay=@rate
	WHERE Bed.Id=@id;
END

GO

/****** Object:  StoredProcedure [dbo].[update_Doctor_List]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_Doctor_List]
	-- Add the parameters for the stored procedure here
	@id int,
	@address varchar(50),
	@phone int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Doctor
	SET Address=@address,Phone=@phone
	WHERE Id=@id;
END

GO

/****** Object:  StoredProcedure [dbo].[Update_Patient_In_Vists]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Update_Patient_In_Vists]
	-- Add the parameters for the stored procedure here
	@patienttype int,
	@discharge datetime,
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Visit
	SET PatientType=@patienttype, DateOfDischarge=@discharge,Status='Discharge'
	WHERE Visit.PatientId=@id AND Visit.DateOfDischarge IS NULL;
END

GO

/****** Object:  StoredProcedure [dbo].[update_patient_Registration]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[update_patient_Registration]
	-- Add the parameters for the stored procedure here
	@id int,
	@address varchar(50),
	@dob datetime,
	@phone int,
	@ephone int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE Patient
	SET Address=@address,DateOfBirth=@dob,Phone=@phone,EmergencyContact=@ephone
	WHERE Id=@id;
END

GO

/****** Object:  StoredProcedure [dbo].[user_Logins]    Script Date: 02/04/2010 17:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[user_Logins]
	-- Add the parameters for the stored procedure here
	@name varchar(50),
	@password varchar(50)
	AS	
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Logins.UserName,Logins.Password from Logins 
	WHERE UserName=@name AND Password=@password
	
END

GO


