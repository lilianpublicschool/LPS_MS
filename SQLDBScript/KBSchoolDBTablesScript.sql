USE [PF_User]
GO

/****** Object:  Table [dbo].[EnrolledClassSubject]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[EnrolledClassSubject](
	[EnrolledID] [bigint] IDENTITY(1,1) NOT NULL,
	[FiscalYear] [varchar](100) NOT NULL,
	[StaffID] [bigint] NULL,
	[StudentID] [bigint] NULL,
	[IsStaff] [bit] NOT NULL,
	[ClassName] [varchar](100) NOT NULL,
	[SectionName] [varchar](100) NULL,
	[Active] [bit] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Notes] [varchar](4000) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [varchar](100) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_EnrolledClassSubject] PRIMARY KEY CLUSTERED 
(
	[EnrolledID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[FamilyDetails]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FamilyDetails](
	[FamilyId] [bigint] IDENTITY(1,1) NOT NULL,
	[FatherName] [nvarchar](100) NOT NULL,
	[MotherName] [nvarchar](100) NOT NULL,
	[FatherAdhaarNo] [nvarchar](100) NULL,
	[MotherAdhaarNo] [nvarchar](100) NULL,
	[RationCardNo] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[Village] [nvarchar](100) NULL,
	[MandalDistrict] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[PotalCode] [nvarchar](100) NULL,
	[Nationality] [nvarchar](100) NULL,
	[PhoneNo1] [nvarchar](100) NULL,
	[PhoneNo2] [nvarchar](100) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[Religion] [nvarchar](100) NULL,
	[Cast] [nvarchar](100) NULL,
	[SubCast] [nvarchar](100) NULL,
	[FatherOccupation] [nvarchar](200) NULL,
	[MotherOccupation] [nvarchar](200) NULL,
	[AnnualIncome] [numeric](18, 0) NULL,
	[FatherHighestDegree] [nvarchar](200) NULL,
	[MotherhighestDegree] [nvarchar](200) NULL,
	[CreatedBy] [nchar](10) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifyBy] [nvarchar](100) NULL,
	[ModifyDate] [datetime] NULL,
	[FamilyNotes] [nvarchar](100) NULL,
 CONSTRAINT [PK_FamilyDetails] PRIMARY KEY CLUSTERED 
(
	[FamilyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Payment]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Payment](
	[PaymentId] [bigint] NOT NULL,
	[FamilyId] [bigint] NOT NULL,
	[StudentId] [bigint] NULL,
	[PaymentType] [varbinary](100) NULL,
	[Amount] [float] NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentNotes] [varchar](4000) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[StaffDetails]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StaffDetails](
	[StaffID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[StaffType] [varchar](100) NOT NULL,
	[Address1] [varchar](400) NULL,
	[Address2] [varchar](400) NULL,
	[City] [varchar](100) NULL,
	[Village] [varchar](100) NULL,
	[MandalDistrict] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[PostalCode] [varchar](100) NULL,
	[HighestDegree] [varchar](100) NULL,
	[DOB] [date] NULL,
	[Description] [varchar](4000) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [varchar](100) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_StaffDetails] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[StudentAccadamics]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StudentAccadamics](
	[AccadamicID] [bigint] IDENTITY(1,1) NOT NULL,
	[FiscalYear] [varchar](50) NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[Class] [varchar](100) NOT NULL,
	[Section] [varchar](100) NULL,
	[Medium] [varchar](100) NULL,
	[SpecialSkills] [varchar](400) NULL,
	[BusAvile] [bit] NULL,
	[FiscalYearFeeTotal] [float] NULL,
	[BusFee] [float] NULL,
	[Scholarship] [float] NULL,
	[TotalFee] [float] NULL,
	[AttendantPercent] [float] NULL,
 CONSTRAINT [PK_StudentAccadamics] PRIMARY KEY CLUSTERED 
(
	[AccadamicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[StudentAccadamicsNotes]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StudentAccadamicsNotes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentAccadamicsID] [bigint] NULL,
	[Notes1] [varchar](4000) NULL,
	[Notes2] [varchar](4000) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [varchar](100) NULL,
	[ModifyDate] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[StudentDetails]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StudentDetails](
	[StudentId] [bigint] IDENTITY(1,1) NOT NULL,
	[FamilyId] [bigint] NULL,
	[StudentName] [nvarchar](100) NULL,
	[Gender] [char](10) NULL,
	[DateOfBirth] [date] NULL,
	[PlaceOfBirth] [nvarchar](100) NULL,
	[DOBCertificateNumber] [nvarchar](100) NULL,
	[StudentAdhaarCardNo] [nvarchar](100) NULL,
	[MotherTungue] [nvarchar](100) NULL,
	[AdmissionNo] [nvarchar](100) NULL,
	[RTE] [nvarchar](100) NULL,
	[Medium] [nvarchar](100) NULL,
	[PresentClass] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
	[PreMetricPermanentId] [nvarchar](100) NULL,
	[EnrollmentNumber] [nvarchar](100) NULL,
	[IsDirect] [bit] NULL,
	[LastSchoolAttended] [nvarchar](200) NULL,
	[LastStandardStudied] [nvarchar](100) NULL,
	[TransferCertificateNumber] [nvarchar](100) NULL,
	[TransferCertificateDate] [date] NULL,
	[DateOfLivingSchool] [datetime] NULL,
	[ReasonForLeavingSchool] [nvarchar](2000) NULL,
	[IssuedTCNumber] [nvarchar](100) NULL,
	[IssuedTCDate] [datetime] NULL,
	[AdmittedClassAndSection] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [nvarchar](100) NULL,
	[ModifyDate] [datetime] NULL,
 CONSTRAINT [PK_StudentDetails] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[StudentNotes]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StudentNotes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[Notes1] [varchar](4000) NULL,
	[Notes2] [varchar](4000) NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NULL,
 CONSTRAINT [PK_StudentNotes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[StudentNotes] SET (LOCK_ESCALATION = AUTO)
GO

/****** Object:  Table [dbo].[StudentTransport]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[StudentTransport](
	[StudentTransportID] [bigint] NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[VehicleID] [bigint] NOT NULL,
	[BusPickup] [varchar](100) NULL,
	[PaymentID] [bigint] NOT NULL,
	[MonthlyFee] [float] NULL,
	[Notes] [varchar](2000) NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_StudentTransport] PRIMARY KEY CLUSTERED 
(
	[StudentTransportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

/****** Object:  Table [dbo].[TranspotVehicleDetails]    Script Date: 3/28/2017 2:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TranspotVehicleDetails](
	[VehicleID] [bigint] NOT NULL,
	[VehicleNumber] [varchar](100) NOT NULL,
	[Route] [varchar](100) NULL,
	[PassangerCapacity] [int] NULL,
 CONSTRAINT [PK_TranspotVehicleDetails] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[FamilyDetails] ADD  CONSTRAINT [DF_FamilyDetails_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO

ALTER TABLE [dbo].[EnrolledClassSubject]  WITH CHECK ADD  CONSTRAINT [FK_EnrolledClassSubject_StaffDetails] FOREIGN KEY([StaffID])
REFERENCES [dbo].[StaffDetails] ([StaffID])
GO

ALTER TABLE [dbo].[EnrolledClassSubject] CHECK CONSTRAINT [FK_EnrolledClassSubject_StaffDetails]
GO

ALTER TABLE [dbo].[EnrolledClassSubject]  WITH CHECK ADD  CONSTRAINT [FK_EnrolledClassSubject_StudentDetails] FOREIGN KEY([StudentID])
REFERENCES [dbo].[StudentDetails] ([StudentId])
GO

ALTER TABLE [dbo].[EnrolledClassSubject] CHECK CONSTRAINT [FK_EnrolledClassSubject_StudentDetails]
GO

ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Payment] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payment] ([PaymentId])
GO

ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Payment]
GO

ALTER TABLE [dbo].[StudentAccadamics]  WITH CHECK ADD  CONSTRAINT [FK_StudentAccadamics_StudentDetails] FOREIGN KEY([StudentID])
REFERENCES [dbo].[StudentDetails] ([StudentId])
GO

ALTER TABLE [dbo].[StudentAccadamics] CHECK CONSTRAINT [FK_StudentAccadamics_StudentDetails]
GO

ALTER TABLE [dbo].[StudentDetails]  WITH CHECK ADD  CONSTRAINT [FK_StudentDetails_1_FamilyDetails_1] FOREIGN KEY([StudentId])
REFERENCES [dbo].[StudentDetails] ([StudentId])
GO

ALTER TABLE [dbo].[StudentDetails] CHECK CONSTRAINT [FK_StudentDetails_1_FamilyDetails_1]
GO

ALTER TABLE [dbo].[StudentNotes]  WITH CHECK ADD  CONSTRAINT [FK_StudentNotes_StudentDetails] FOREIGN KEY([StudentID])
REFERENCES [dbo].[StudentDetails] ([StudentId])
GO

ALTER TABLE [dbo].[StudentNotes] CHECK CONSTRAINT [FK_StudentNotes_StudentDetails]
GO

ALTER TABLE [dbo].[StudentTransport]  WITH CHECK ADD  CONSTRAINT [FK_StudentTransport_Payment] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentId])
GO

ALTER TABLE [dbo].[StudentTransport] CHECK CONSTRAINT [FK_StudentTransport_Payment]
GO

ALTER TABLE [dbo].[StudentTransport]  WITH CHECK ADD  CONSTRAINT [FK_StudentTransport_StudentDetails] FOREIGN KEY([StudentID])
REFERENCES [dbo].[StudentDetails] ([StudentId])
GO

ALTER TABLE [dbo].[StudentTransport] CHECK CONSTRAINT [FK_StudentTransport_StudentDetails]
GO

