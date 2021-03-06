/****** Object:  Table [Driver]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Driver](
	[DriverId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CurrentVehicleId] [int] NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[DriverId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Feedback]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Feedback](
	[FeedbackId] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](1024) NULL,
	[Description] [nvarchar](2048) NULL,
	[FeedbackTypeId] [int] NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[Dispositioned] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
	[DriverId] [int] NULL,
	[VehicleId] [int] NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FeedbackType]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FeedbackType](
	[FeedbackTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_FeedbackType] PRIMARY KEY CLUSTERED 
(
	[FeedbackTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [GenderType]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [GenderType](
	[GenderTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_GenderType] PRIMARY KEY CLUSTERED 
(
	[GenderTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Holiday]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Holiday](
	[HolidayId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Holiday] PRIMARY KEY CLUSTERED 
(
	[HolidayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [LanguageType]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [LanguageType](
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[NativeName] [nvarchar](100) NOT NULL,
	[ThreeLetterISOLanguageName] [nchar](3) NOT NULL,
	[TwoLetterISOLanguageName] [nchar](2) NOT NULL,
	[LanguageCultureIdentifier] [int] NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_LanguageType] PRIMARY KEY CLUSTERED 
(
	[LanguageTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Location]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Location](
	[LocationId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[AddressLine1] [varchar](100) NOT NULL,
	[AddressLine2] [varchar](100) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[State] [varchar](100) NOT NULL,
	[PostalCode] [varchar](100) NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NotificationType]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NotificationType](
	[NotificationTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_NotificationType] PRIMARY KEY CLUSTERED 
(
	[NotificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Reservation]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Reservation](
	[ReservationId] [uniqueidentifier] NOT NULL,
	[UserId] [int] NOT NULL,
	[PickUpLocationId] [uniqueidentifier] NOT NULL,
	[DestinationLocationId] [uniqueidentifier] NOT NULL,
	[ReservationRequestOptionId] [int] NOT NULL,
	[ReservationStatusTypeId] [int] NOT NULL,
	[ReservationCancellationReasonId] [int] NULL,
	[NumberOfAdults] [int] NOT NULL,
	[NumberOfChildren] [int] NOT NULL,
	[NumberOfBabies] [int] NOT NULL,
	[NumberOfWheelchairs] [int] NOT NULL,
	[NumberOfBikes] [int] NOT NULL,
	[PersonalCareAttendantIncluded] [bit] NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ReservationCancellationReasonType]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ReservationCancellationReasonType](
	[ReservationCancellationReasonTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ReservationCancellationReasonType] PRIMARY KEY CLUSTERED 
(
	[ReservationCancellationReasonTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ReservationRequest]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ReservationRequest](
	[ReservationRequestId] [uniqueidentifier] NOT NULL,
	[UserId] [int] NOT NULL,
	[PickupLocationId] [uniqueidentifier] NOT NULL,
	[DestinationLocationId] [uniqueidentifier] NOT NULL,
	[ReservationRequestStatusTypeId] [int] NOT NULL,
	[ReservationRequestCancellationReasonTypeId] [int] NULL,
	[RequestedPickupStart] [datetime2](7) NULL,
	[RequestedPickupEnd] [datetime2](7) NULL,
	[RequestedArrivalStart] [datetime2](7) NULL,
	[RequestedArrivalEnd] [datetime2](7) NULL,
	[NumberOfAdults] [int] NOT NULL,
	[NumberOfChildren] [int] NOT NULL,
	[NumberOfBabies] [int] NOT NULL,
	[NumberOfWheelchairs] [int] NULL,
	[NumberOfBikes] [int] NULL,
	[PersonalCareAttendantIncluded] [bit] NOT NULL,
	[PassengerRequiresAssistance] [bit] NOT NULL,
	[ReservationId] [uniqueidentifier] NULL,
	[ReplacesReservationId] [uniqueidentifier] NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ReservationRequest] PRIMARY KEY CLUSTERED 
(
	[ReservationRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ReservationRequestCancellationReasonType]    Script Date: 4/1/2019 4:13:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ReservationRequestCancellationReasonType](
	[ReservationRequestCancellationReasonTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ReservationRequestCancellationReasonType] PRIMARY KEY CLUSTERED 
(
	[ReservationRequestCancellationReasonTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ReservationRequestOption]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ReservationRequestOption](
	[ReservationRequestOptionId] [int] NOT NULL,
	[ReservationRequestId] [uniqueidentifier] NOT NULL,
	[SuggestedPickupStart] [datetime2](7) NOT NULL,
	[SuggestedPickupEnd] [datetime2](7) NOT NULL,
	[EstimatedArrivalStart] [datetime2](7) NOT NULL,
	[EstimatedArrivalEnd] [datetime2](7) NOT NULL,
	[Score] [int] NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ReservationRequestOption] PRIMARY KEY CLUSTERED 
(
	[ReservationRequestOptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ReservationRequestStatusType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ReservationRequestStatusType](
	[ReservationRequestStatusTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ReservationRequestStatusType] PRIMARY KEY CLUSTERED 
(
	[ReservationRequestStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ReservationStatusType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ReservationStatusType](
	[ReservationStatusTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ReservationStatusType] PRIMARY KEY CLUSTERED 
(
	[ReservationStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Ride]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Ride](
	[RideId] [uniqueidentifier] NOT NULL,
	[Start] [datetime2](7) NULL,
	[StartLatitude] [float] NULL,
	[StartLongitude] [float] NULL,
	[End] [datetime2](7) NULL,
	[EndLatitude] [float] NULL,
	[EndLongitude] [float] NULL,
	[VehicleId] [int] NOT NULL,
	[DriverId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[DurationInSeconds] [int] NULL,
	[GeoDistance] [int] NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Ride] PRIMARY KEY CLUSTERED 
(
	[RideId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RidePosition]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RidePosition](
	[RidePositionId] [uniqueidentifier] NOT NULL,
	[RideId] [uniqueidentifier] NOT NULL,
	[Latitude] [numeric](18, 10) NOT NULL,
	[Longitude] [numeric](18, 10) NOT NULL,
	[TS] [datetime2](7) NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RidePosition] PRIMARY KEY CLUSTERED 
(
	[RidePositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [RideServiceType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [RideServiceType](
	[RideServiceTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RideServiceType] PRIMARY KEY CLUSTERED 
(
	[RideServiceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Users]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[BirthDate] [datetime2](7) NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[GenderTypeId] [int] NOT NULL,
	[Password] [nvarchar](255) NULL,
	[Salt] [nvarchar](255) NULL,
	[LastLogin] [datetime2](7) NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Users_Location]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Users_Location](
	[UserId] [int] NOT NULL,
	[LocationId] [uniqueidentifier] NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Users_Location] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Users_NotificationType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Users_NotificationType](
	[UserId] [int] NOT NULL,
	[NotificationTypeId] [int] NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Users_NotificationType] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[NotificationTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleTypeId] [int] NOT NULL,
	[VehicleStatusTypeId] [int] NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[VIN] [char](17) NOT NULL,
	[LicensePlateNumber] [varchar](10) NULL,
	[StartDateInService] [date] NOT NULL,
	[EndDateInService] [date] NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Vehicle_VehicleFeatureType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Vehicle_VehicleFeatureType](
	[VehicleId] [int] NOT NULL,
	[VehicleFeatureTypeId] [int] NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Vehicle_VehicleFeatureType] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC,
	[VehicleFeatureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VehicleFeatureType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VehicleFeatureType](
	[VehicleFeatureTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_VehicleFeatureType] PRIMARY KEY CLUSTERED 
(
	[VehicleFeatureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VehicleStatusType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VehicleStatusType](
	[VehicleStatusTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_VehicleStatusType] PRIMARY KEY CLUSTERED 
(
	[VehicleStatusTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VehicleType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VehicleType](
	[VehicleTypeId] [int] NOT NULL,
	[LanguageTypeId] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[DisplayText] [nvarchar](128) NOT NULL,
	[DisplayPriority] [int] NOT NULL,
	[Description] [nvarchar](1024) NULL,
	[Capacity] [int] NULL,
	[LengthInFeetMin] [float] NULL,
	[LengthInFeetMax] [float] NULL,
	[LengthWithBumpers] [float] NULL,
	[WidthInFeet] [float] NULL,
	[WidthWithMirrorsInFeet] [float] NULL,
	[HeightInFeet] [float] NULL,
	[WheelbaseInFeet] [float] NULL,
	[FrontOverhangInFeet] [float] NULL,
	[RearOverhangInFeet] [float] NULL,
	[GroundClearanceInFeet] [float] NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_VehicleType] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VehicleType_VehicleFeatureType]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VehicleType_VehicleFeatureType](
	[VehicleTypeId] [int] NOT NULL,
	[VehicleFeatureTypeId] [int] NOT NULL,
	[DataVersion] [int] NOT NULL,
	[CreatedUtcDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedUtcDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_VehicleType_VehicleFeatureType] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeId] ASC,
	[VehicleFeatureTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'DRIVER_LATE', N'My Driver Was Late', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'CHARGED_FEE_CLEAN', N'I Was Charged a Cleaning Fee', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'CHARGED_FEE_CANCEL', N'I Was Charged a Cancellation Fee', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, 1, N'LOST_ITEM', N'I Lost an Item', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (5, 1, N'CHARGED_OVERCHARGE', N'I Was Overcharged for a Ride', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (6, 1, N'DRIVER_RUDE', N'My Driver Was Rude', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (7, 1, N'PASSENGER_PROBLEM', N'I Had a Problem With Another Ride Sharing Passenger', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (8, 1, N'DRIVER_UNSAFE', N'My Driver Was Unsafe', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (9, 1, N'DRIVER_HARASS', N'My Driver Harassed Me', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (10, 1, N'DRIVER_CRIME', N'I Witnessed My Driver Commit a Crime', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (11, 1, N'VEHICLE_QUALITY', N'My Vehicle Seemed Beat-up or Worn Out', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (12, 1, N'DRIVER_LOST', N'My Driver Did Not Seem To Know Where They Were Going', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (13, 1, N'VEHICLE_DIFFERENT', N'My Vehicle Identification Was Different From Listed Reservation', 100, NULL, 1, CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:03.8633333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (14, 1, N'EXPERIENCE_POSITIVE', N'I Had a Great Experience', 100, NULL, 1, CAST(N'2019-02-21T00:00:00.0000000' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T00:00:00.0000000' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [FeedbackType] ([FeedbackTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (15, 1, N'EXPERIENCE_NEGATIVE', N'I Had a Bad Experience', 100, NULL, 1, CAST(N'2019-02-21T00:00:00.0000000' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T00:00:00.0000000' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'MALE', N'Male', 2, N'A male with a male gender identity.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'FEMALE', N'Female', 1, N'A female with a female gender identity.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'AGENDER', N'Agender', 100, N'People who lack a gender. Agender people may be of any physical sex, whether DFAB or DMAB (Female-bodied or Male-bodied), someone can still identify as Agender. Gender does not have anything to do with bodies. Think of it as SEX = BODY, GENDER = MINDSET.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, 1, N'ANDROGYNE', N'Androgyne', 100, N'The combination of masculine and feminine characteristics. It can also refer to biological intersex physicality, especially with regard to plant and human sexuality.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (5, 1, N'ANDROGYNOUS', N'Androgynous', 100, N'An androgynous person is a female or male who has a high degree of both feminine (expressive) and masculine (instrumental) traits. (same as the above definition)', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (6, 1, N'BIGENDER', N'Bigender', 100, N'A person who feels they exhibit two genders. The two genders may include any particular gender on or outside of the gender spectrum.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (7, 1, N'CISGENDER', N'Cisgender', 100, N'Related types of gender identity where an individual''s experience of their own gender matches the sex they were assigned at birth.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (8, 1, N'FEMALE_TO_MALE', N'Female to Male', 100, N'A transgender man, assigned female at birth, but identifies as male.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (9, 1, N'GENDER_FLUID', N'Gender Fluid', 100, N'A gender identity best described as a dynamic mix of boy and girl. A person who is Gender Fluid may always feel like a mix of the two traditional genders, but may feel more boy some days, and more girl other days.
Being Gender Fluid has nothing to do with which set of genitalia one has, nor their sexual orientation.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (10, 1, N'GENDER_NONCONFORMING', N'Gender Nonconforming', 100, N'Behaviour or gender expression that does not conform to dominant gender norms of male and female. People who exhibit gender variance may be called gender variant, gender non-conforming, or gender atypical.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (11, 1, N'GENDER_QUESTIONING', N'Gender Questioning', 100, N'In the process of exploration by people who may be unsure, still exploring, and concerned about applying a social label to themselves for various reasons.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (12, 1, N'GENDER_QUEER', N'Gender Queer', 100, N'Catch-all category for gender identities other than man and woman, thus outside of the gender binary and cisnormativity.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (13, 1, N'INTERSEX', N'Intersex', 100, N'A variation in sex characteristics including chromosomes, gonads, or genitals that do not allow an individual to be distinctly identified as male or female.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (14, 1, N'MALE_TO_FEMALE', N'Male to Female', 100, N'A transgender woman, assigned male at birth, but identifies as female.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (15, 1, N'NEITHER', N'Neither', 100, N'No definition; assume the person does not want to be identified as Male or Female.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (16, 1, N'NEUTROIS', N'Neutrois', 100, N'an identity used by individuals who feel they fall outside the gender binary. Many feel Neutrois is a gender, like a third gender while others feel agendered. What they have in common is that they wish to minimize their birth gender markers.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (17, 1, N'OTHER', N'Other', 100, N'No definition; something other than the options available.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (18, 1, N'PANGENDER', N'Pangender', 100, N'People who do not wish to be labeled as female or male in gender, as they feel that they do not fit into binary genders because they feel they are all genders. The term has a great deal of overlap with genderqueer and is used by those in the LGBTcommunity meaning "all genders."', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (19, 1, N'TRANS', N'Trans', 100, N'Encompassing a range of transgender identities.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (20, 1, N'TRANS*', N'Trans*', 100, N'Umbrella term that refers to all of the identities within the gender identity spectrum. The asterisk makes special note in an effort to include all non-cisgender gender identities, including transgender, transsexual, transvestite, genderqueer, genderfluid, non-binary, genderfuck, genderless, agender, non-gendered, third gender, two-spirit, bigender, and trans man and trans woman. The origin behind the asterisk is a bit computer geeky.  When you add an asterisk to the end of a search term, you’re telling your computer to search for whatever you typed, plus any characters after (e.g., [search term*][extra letters], or trans*[-gender, -queer, -sexual, etc.]).  The idea was to include trans and other identities related to trans, in the most technical way.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (21, 1, N'TRANS_FEMALE', N'Trans Female', 100, N'Transgender person with a female gender identity.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (22, 1, N'TRANS_MALE', N'Trans Male', 100, N'Transgender person with a male gender identity.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (23, 1, N'TRANS_PERSON', N'Trans Person', 100, N'The state of one''s gender identity or gender expression not matching one''s assigned sex. Transgender is independent of sexual orientation; transgender people may identify as heterosexual, homosexual, bisexual, pansexual, polysexual, or asexual; some may consider conventional sexual orientation labels inadequate or inapplicable to them.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (24, 1, N'TRANSGENDER', N'Transgender', 100, N'The state of one''s gender identity or gender expression not matching one''s assigned sex. Transgender is independent of sexual orientation; transgender people may identify as heterosexual, homosexual, bisexual, pansexual, polysexual, or asexual; some may consider conventional sexual orientation labels inadequate or inapplicable to them.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (25, 1, N'TRANSMASCULINE', N'Transmasculine', 100, N'Those who were assigned female at birth, but identify as more male than female.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (26, 1, N'TRANSSEXUAL', N'Transsexual', 100, N'Identifies with a gender inconsistent or not culturally associated with their assigned sex, i.e. in which a person''s assigned sex at birth conflicts with their psychological gender.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (27, 1, N'TRANSSEXUAL_FEMALE', N'Transsexual Female', 100, N'Born a male who identifies as a female. Could have gender reassignment surgery to become a female.', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (28, 1, N'TRANSSEXUAL_MALE', N'Transsexual Male', 100, N'Born a female who identifies as a male. Could have gender reassignment surgery to become a male', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [GenderType] ([GenderTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (29, 1, N'TWO_SPIRIT', N'Two-Spirit', 100, N'Umbrella term sometimes used for what was once commonly known as berdaches, indigenous North Americans who fulfill one of many mixed gender roles in First Nations and Native American tribes. Third gender roles historically embodied by two-spirit people include performing work and wearing clothing associated with both men and women. The presence of male two-spirits "was a fundamental institution among most tribal peoples."', 1, CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:23.1566667' AS DateTime2), N'INITIAL LOAD', 0)
SET IDENTITY_INSERT [Holiday] ON 

INSERT [Holiday] ([HolidayId], [Date], [LanguageTypeId], [Code], [DisplayText], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, CAST(N'2019-01-01' AS Date), 1, N'NEW_YEARS', N'New Year’s Day', 1, CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [Holiday] ([HolidayId], [Date], [LanguageTypeId], [Code], [DisplayText], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, CAST(N'2019-05-27' AS Date), 1, N'MEMORIAL_DAY', N'Memorial Day', 1, CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [Holiday] ([HolidayId], [Date], [LanguageTypeId], [Code], [DisplayText], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, CAST(N'2019-07-04' AS Date), 1, N'INDEPENDENCE_DAY', N'Independence Day', 1, CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [Holiday] ([HolidayId], [Date], [LanguageTypeId], [Code], [DisplayText], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, CAST(N'2019-09-02' AS Date), 1, N'LABOR_DAY', N'Labor Day', 1, CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [Holiday] ([HolidayId], [Date], [LanguageTypeId], [Code], [DisplayText], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (5, CAST(N'2019-11-28' AS Date), 1, N'THANKSGIVING_DAY', N'Thanksgiving Day', 1, CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [Holiday] ([HolidayId], [Date], [LanguageTypeId], [Code], [DisplayText], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (6, CAST(N'2019-12-25' AS Date), 1, N'CHRISTMAS_DAY', N'Christmas Day', 1, CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:59.1833333' AS DateTime2), N'INITIAL LOAD', 0)
SET IDENTITY_INSERT [Holiday] OFF
INSERT [LanguageType] ([LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [NativeName], [ThreeLetterISOLanguageName], [TwoLetterISOLanguageName], [LanguageCultureIdentifier], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, N'en-US', N'English (United States)', 100, N'English (United States)', N'eng', N'en', 1033, 1, CAST(N'2019-02-21T04:37:59.4133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:37:59.4133333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [NotificationType] ([NotificationTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'EMAIL', N'Email', 100, NULL, 1, CAST(N'2019-02-27T02:43:14.9833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:43:14.9833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [NotificationType] ([NotificationTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'SMS', N'SMS (text message)', 110, NULL, 1, CAST(N'2019-02-27T02:43:14.9833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:43:14.9833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [NotificationType] ([NotificationTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'PHONE_CALL', N'Phone Call', 120, NULL, 1, CAST(N'2019-02-27T02:43:14.9833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:43:14.9833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [NotificationType] ([NotificationTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, 1, N'PUSH_NOTIFICATION', N'Push Notification', 130, NULL, 1, CAST(N'2019-02-27T02:43:14.9833333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:43:14.9833333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationCancellationReasonType] ([ReservationCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'NO_LONGER_NEED', N'No longer need transportation', 100, NULL, 1, CAST(N'2019-02-27T02:45:03.6566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:45:03.6600000' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationCancellationReasonType] ([ReservationCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'USING_ALTERNATE_TRANSPORT', N'Using alternate transportation', 110, NULL, 1, CAST(N'2019-02-27T02:45:03.6566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:45:03.6600000' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationCancellationReasonType] ([ReservationCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'DRIVER_UNAVAILABLE', N'Driver unavailable or sick', 120, NULL, 1, CAST(N'2019-02-27T02:45:03.6566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:45:03.6600000' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationCancellationReasonType] ([ReservationCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, 1, N'REPLACED', N'Replaced with another reservation', 130, NULL, 1, CAST(N'2019-02-27T02:45:03.6566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:45:03.6600000' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationCancellationReasonType] ([ReservationCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (5, 1, N'VEHICLE_UNAVAILABLE', N'Vehicle unavailable or breakdown', 140, NULL, 1, CAST(N'2019-02-27T02:45:03.6566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:45:03.6600000' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationCancellationReasonType] ([ReservationCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (6, 1, N'LINKED_RESERVATION_CANCELLED', N'A linked reservation was cancelled', 150, NULL, 1, CAST(N'2019-02-27T02:45:03.6566667' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:45:03.6600000' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationRequestCancellationReasonType] ([ReservationRequestCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'PICKUP_NOT_ACCEPTABLE', N'Pick up time window is not acceptable', 100, NULL, 1, CAST(N'2019-02-27T02:46:06.8433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:46:06.8433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationRequestCancellationReasonType] ([ReservationRequestCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'INSUFFICIENT_CAPACITY_DRIVER', N'Insufficient capacity (driver)', 110, NULL, 1, CAST(N'2019-02-27T02:46:06.8433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:46:06.8433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationRequestCancellationReasonType] ([ReservationRequestCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'INSUFFICIENT_CAPACITY_VEHICLEFEATURE', N'Insufficient capacity (vehicle feature)', 120, NULL, 1, CAST(N'2019-02-27T02:46:06.8433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:46:06.8433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationRequestCancellationReasonType] ([ReservationRequestCancellationReasonTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, 1, N'RETURN_TRIP_NOT_ACCEPTABLE', N'Return trip options are not acceptable', 130, NULL, 1, CAST(N'2019-02-27T02:46:06.8433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:46:06.8433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationRequestStatusType] ([ReservationRequestStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'PENDING_CONFIRMATION', N'Pending Confirmation', 100, NULL, 1, CAST(N'2019-02-27T02:46:52.6733333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:46:52.6766667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationRequestStatusType] ([ReservationRequestStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'CONFIRMED', N'Confirmed', 110, NULL, 1, CAST(N'2019-02-27T02:46:52.6733333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:46:52.6766667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationRequestStatusType] ([ReservationRequestStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'CANCELLED', N'Cancelled', 120, NULL, 1, CAST(N'2019-02-27T02:46:52.6733333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:46:52.6766667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'SCHEDULED', N'Scheduled', 110, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'ROUTE_PLANNED', N'Route is Planned', 120, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'EN_ROUTE', N'On My Way', 130, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, 1, N'RUNNING_LATE', N'Running Late', 140, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (5, 1, N'ARRIVED_AT_PICKUP', N'Arrived At Pickup', 150, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (6, 1, N'DEPARTED_PICKUP', N'Departed Pickup', 160, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (7, 1, N'PASSENGER_NO_SHOW', N'Passenger No Show', 170, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (8, 1, N'ARRIVED_AT_DESTINATION', N'Arrived At Destination', 180, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (9, 1, N'DEPARTED_DESTINATION', N'Departed Destination', 190, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (10, 1, N'CANCELLED', N'Cancelled', 200, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [ReservationStatusType] ([ReservationStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (11, 1, N'PENDING_CHANGE', N'Pending Change', 210, NULL, 1, CAST(N'2019-02-27T02:47:04.0133333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-27T02:47:04.0166667' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleFeatureType] ([VehicleFeatureTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'WHEELCHAIR_ACCESSIBLE', N'Wheelchair Accessible', 100, NULL, 1, CAST(N'2019-02-21T04:39:04.0533333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:39:04.0533333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleStatusType] ([VehicleStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'ACTIVE', N'Active', 100, NULL, 1, CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleStatusType] ([VehicleStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'INACTIVE', N'Inactive', 100, NULL, 1, CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleStatusType] ([VehicleStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'IN_SHOP', N'In Shop', 100, NULL, 1, CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleStatusType] ([VehicleStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, 1, N'OUT_OF_SERVICE', N'Out of Service', 100, NULL, 1, CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleStatusType] ([VehicleStatusTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (5, 1, N'SOLD', N'Sold', 100, NULL, 1, CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:38:53.3433333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleType] ([VehicleTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [Capacity], [LengthInFeetMin], [LengthInFeetMax], [LengthWithBumpers], [WidthInFeet], [WidthWithMirrorsInFeet], [HeightInFeet], [WheelbaseInFeet], [FrontOverhangInFeet], [RearOverhangInFeet], [GroundClearanceInFeet], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (1, 1, N'CONNECTOR', N'Connector', 80, NULL, 10, 20, 23, NULL, 8, NULL, 10, NULL, NULL, NULL, NULL, 1, CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleType] ([VehicleTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [Capacity], [LengthInFeetMin], [LengthInFeetMax], [LengthWithBumpers], [WidthInFeet], [WidthWithMirrorsInFeet], [HeightInFeet], [WheelbaseInFeet], [FrontOverhangInFeet], [RearOverhangInFeet], [GroundClearanceInFeet], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (2, 1, N'LOCAL_BUS', N'Local Bus', 90, NULL, 20, 40, NULL, 40.7, 8.5, 10, 10.5, 25, 7, 8, 11, 1, CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleType] ([VehicleTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [Capacity], [LengthInFeetMin], [LengthInFeetMax], [LengthWithBumpers], [WidthInFeet], [WidthWithMirrorsInFeet], [HeightInFeet], [WheelbaseInFeet], [FrontOverhangInFeet], [RearOverhangInFeet], [GroundClearanceInFeet], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (3, 1, N'EXPRESS_BUS', N'Express Bus/ART', 100, NULL, 25, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleType] ([VehicleTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [Capacity], [LengthInFeetMin], [LengthInFeetMax], [LengthWithBumpers], [WidthInFeet], [WidthWithMirrorsInFeet], [HeightInFeet], [WheelbaseInFeet], [FrontOverhangInFeet], [RearOverhangInFeet], [GroundClearanceInFeet], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (4, 1, N'VANPOOL_VAN_6', N'Vanpool Van (6)', 110, N'Passenger Van (6 capacity)', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', 0)
INSERT [VehicleType] ([VehicleTypeId], [LanguageTypeId], [Code], [DisplayText], [DisplayPriority], [Description], [Capacity], [LengthInFeetMin], [LengthInFeetMax], [LengthWithBumpers], [WidthInFeet], [WidthWithMirrorsInFeet], [HeightInFeet], [WheelbaseInFeet], [FrontOverhangInFeet], [RearOverhangInFeet], [GroundClearanceInFeet], [DataVersion], [CreatedUtcDate], [CreatedBy], [ModifiedUtcDate], [ModifiedBy], [IsDeleted]) VALUES (5, 1, N'VANPOOL_VAN_14', N'Vanpool Van (14)', 100, N'Passenger Van (14 capacity)', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', CAST(N'2019-02-21T04:36:55.9033333' AS DateTime2), N'INITIAL LOAD', 0)
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_FeedbackType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [FeedbackType] ADD  CONSTRAINT [UC_FeedbackType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_GenderType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [GenderType] ADD  CONSTRAINT [UC_GenderType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Holiday_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [Holiday] ADD  CONSTRAINT [UC_Holiday_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_LanguageType_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [LanguageType] ADD  CONSTRAINT [UC_LanguageType_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_NotificationType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [NotificationType] ADD  CONSTRAINT [UC_NotificationType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_ReservationCancellationReasonType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [ReservationCancellationReasonType] ADD  CONSTRAINT [UC_ReservationCancellationReasonType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_ReservationRequestCancellationReasonType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [ReservationRequestCancellationReasonType] ADD  CONSTRAINT [UC_ReservationRequestCancellationReasonType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_ReservationRequestStatusType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [ReservationRequestStatusType] ADD  CONSTRAINT [UC_ReservationRequestStatusType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_ReservationStatusType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [ReservationStatusType] ADD  CONSTRAINT [UC_ReservationStatusType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RidePosition_RideId]    Script Date: 4/1/2019 4:13:47 PM ******/
CREATE NONCLUSTERED INDEX [IX_RidePosition_RideId] ON [RidePosition]
(
	[RideId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_RideServiceType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [RideServiceType] ADD  CONSTRAINT [UC_RideServiceType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_VehicleFeatureType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [VehicleFeatureType] ADD  CONSTRAINT [UC_VehicleFeatureType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_VehicleStatusType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [VehicleStatusType] ADD  CONSTRAINT [UC_VehicleStatusType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_VehicleType_LanguageTypeId_Code]    Script Date: 4/1/2019 4:13:47 PM ******/
ALTER TABLE [VehicleType] ADD  CONSTRAINT [UC_VehicleType_LanguageTypeId_Code] UNIQUE NONCLUSTERED 
(
	[LanguageTypeId] ASC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [Driver] ADD  CONSTRAINT [DF_Driver_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Driver] ADD  CONSTRAINT [DF_Driver_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Driver] ADD  CONSTRAINT [DF_Driver_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Driver] ADD  CONSTRAINT [DF_Driver_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Feedback] ADD  CONSTRAINT [DF_Feedback_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Feedback] ADD  CONSTRAINT [DF_Feedback_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Feedback] ADD  CONSTRAINT [DF_Feedback_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Feedback] ADD  CONSTRAINT [DF_Feedback_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [FeedbackType] ADD  CONSTRAINT [DF_FeedbackType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [FeedbackType] ADD  CONSTRAINT [DF_FeedbackType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [FeedbackType] ADD  CONSTRAINT [DF_FeedbackType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [FeedbackType] ADD  CONSTRAINT [DF_FeedbackType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [FeedbackType] ADD  CONSTRAINT [DF_FeedbackType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [GenderType] ADD  CONSTRAINT [DF_GenderType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [GenderType] ADD  CONSTRAINT [DF_GenderType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [GenderType] ADD  CONSTRAINT [DF_GenderType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [GenderType] ADD  CONSTRAINT [DF_GenderType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [GenderType] ADD  CONSTRAINT [DF_GenderType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Holiday] ADD  CONSTRAINT [DF_Holiday_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Holiday] ADD  CONSTRAINT [DF_Holiday_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Holiday] ADD  CONSTRAINT [DF_Holiday_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Holiday] ADD  CONSTRAINT [DF_Holiday_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [LanguageType] ADD  CONSTRAINT [DF_LanguageType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [LanguageType] ADD  CONSTRAINT [DF_LanguageType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [LanguageType] ADD  CONSTRAINT [DF_LanguageType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [LanguageType] ADD  CONSTRAINT [DF_LanguageType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [LanguageType] ADD  CONSTRAINT [DF_LanguageType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Location] ADD  CONSTRAINT [DF_Location_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Location] ADD  CONSTRAINT [DF_Location_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Location] ADD  CONSTRAINT [DF_Location_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Location] ADD  CONSTRAINT [DF_Location_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [NotificationType] ADD  CONSTRAINT [DF_NotificationType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [NotificationType] ADD  CONSTRAINT [DF_NotificationType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [NotificationType] ADD  CONSTRAINT [DF_NotificationType_CreatedUTCDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [NotificationType] ADD  CONSTRAINT [DF_NotificationType_ModifiedUTCDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [NotificationType] ADD  CONSTRAINT [DF_NotificationType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Reservation] ADD  CONSTRAINT [DF_Reservation_NumberOfWheelchairs]  DEFAULT ((0)) FOR [NumberOfWheelchairs]
GO
ALTER TABLE [Reservation] ADD  CONSTRAINT [DF_Reservation_NumberOfBikes]  DEFAULT ((0)) FOR [NumberOfBikes]
GO
ALTER TABLE [Reservation] ADD  CONSTRAINT [DF_Reservation_PersonalCareAttendantIncluded]  DEFAULT ((0)) FOR [PersonalCareAttendantIncluded]
GO
ALTER TABLE [Reservation] ADD  CONSTRAINT [DF_Reservation_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Reservation] ADD  CONSTRAINT [DF_Reservation_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Reservation] ADD  CONSTRAINT [DF_Reservation_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Reservation] ADD  CONSTRAINT [DF_Reservation_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ReservationCancellationReasonType] ADD  CONSTRAINT [DF_ReservationCancellationReasonType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [ReservationCancellationReasonType] ADD  CONSTRAINT [DF_ReservationCancellationReasonType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [ReservationCancellationReasonType] ADD  CONSTRAINT [DF_ReservationCancellationReasonType_CreatedUTCDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [ReservationCancellationReasonType] ADD  CONSTRAINT [DF_ReservationCancellationReasonType_ModifiedUTCDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [ReservationCancellationReasonType] ADD  CONSTRAINT [DF_ReservationCancellationReasonType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ReservationRequest] ADD  CONSTRAINT [DF_ReservationRequest_NumberOfWheelchairs]  DEFAULT ((0)) FOR [NumberOfWheelchairs]
GO
ALTER TABLE [ReservationRequest] ADD  CONSTRAINT [DF_ReservationRequest_NumberOfBikes]  DEFAULT ((0)) FOR [NumberOfBikes]
GO
ALTER TABLE [ReservationRequest] ADD  CONSTRAINT [DF_ReservationRequest_PersonalCareAttendantIncluded]  DEFAULT ((0)) FOR [PersonalCareAttendantIncluded]
GO
ALTER TABLE [ReservationRequest] ADD  CONSTRAINT [DF_ReservationRequest_PassengerRequiresAssistance]  DEFAULT ((0)) FOR [PassengerRequiresAssistance]
GO
ALTER TABLE [ReservationRequest] ADD  CONSTRAINT [DF_ReservationRequest_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [ReservationRequest] ADD  CONSTRAINT [DF_ReservationRequest_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [ReservationRequest] ADD  CONSTRAINT [DF_ReservationRequest_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [ReservationRequest] ADD  CONSTRAINT [DF_ReservationRequest_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ReservationRequestCancellationReasonType] ADD  CONSTRAINT [DF_ReservationRequestCancellationReasonType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [ReservationRequestCancellationReasonType] ADD  CONSTRAINT [DF_ReservationRequestCancellationReasonType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [ReservationRequestCancellationReasonType] ADD  CONSTRAINT [DF_ReservationRequestCancellationReasonType_CreatedUTCDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [ReservationRequestCancellationReasonType] ADD  CONSTRAINT [DF_ReservationRequestCancellationReasonType_ModifiedUTCDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [ReservationRequestCancellationReasonType] ADD  CONSTRAINT [DF_ReservationRequestCancellationReasonType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ReservationRequestOption] ADD  CONSTRAINT [DF_ReservationRequestOption_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ReservationRequestStatusType] ADD  CONSTRAINT [DF_ReservationRequestStatusType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [ReservationRequestStatusType] ADD  CONSTRAINT [DF_ReservationRequestStatusType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [ReservationRequestStatusType] ADD  CONSTRAINT [DF_ReservationRequestStatusType_CreatedUTCDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [ReservationRequestStatusType] ADD  CONSTRAINT [DF_ReservationRequestStatusType_ModifiedUTCDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [ReservationRequestStatusType] ADD  CONSTRAINT [DF_ReservationRequestStatusType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ReservationStatusType] ADD  CONSTRAINT [DF_ReservationStatusType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [ReservationStatusType] ADD  CONSTRAINT [DF_ReservationStatusType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [ReservationStatusType] ADD  CONSTRAINT [DF_ReservationStatusType_CreatedUTCDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [ReservationStatusType] ADD  CONSTRAINT [DF_ReservationStatusType_ModifiedUTCDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [ReservationStatusType] ADD  CONSTRAINT [DF_ReservationStatusType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Ride] ADD  CONSTRAINT [DF_Ride_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Ride] ADD  CONSTRAINT [DF_Ride_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Ride] ADD  CONSTRAINT [DF_Ride_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Ride] ADD  CONSTRAINT [DF_Ride_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [RidePosition] ADD  CONSTRAINT [DF_RidePosition_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [RidePosition] ADD  CONSTRAINT [DF_RidePosition_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [RidePosition] ADD  CONSTRAINT [DF_RidePosition_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [RidePosition] ADD  CONSTRAINT [DF_RidePosition_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [RideServiceType] ADD  CONSTRAINT [DF_RideServiceType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [RideServiceType] ADD  CONSTRAINT [DF_RideServiceType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [RideServiceType] ADD  CONSTRAINT [DF_RideServiceType_CreatedUTCDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [RideServiceType] ADD  CONSTRAINT [DF_RideServiceType_ModifiedUTCDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [RideServiceType] ADD  CONSTRAINT [DF_RideServiceType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Users] ADD  CONSTRAINT [DF_Users_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Users] ADD  CONSTRAINT [DF_Users_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Users] ADD  CONSTRAINT [DF_Users_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Users] ADD  CONSTRAINT [DF_Users_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Users_Location] ADD  CONSTRAINT [DF_Users_Location_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Users_Location] ADD  CONSTRAINT [DF_Users_Location_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Users_Location] ADD  CONSTRAINT [DF_Users_Location_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Users_Location] ADD  CONSTRAINT [DF_Users_Location_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Users_NotificationType] ADD  CONSTRAINT [DF_Users_NotificationType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Users_NotificationType] ADD  CONSTRAINT [DF_Users_NotificationType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Users_NotificationType] ADD  CONSTRAINT [DF_Users_NotificationType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Users_NotificationType] ADD  CONSTRAINT [DF_Users_NotificationType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Vehicle] ADD  CONSTRAINT [DF_Vehicle_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Vehicle] ADD  CONSTRAINT [DF_Vehicle_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Vehicle] ADD  CONSTRAINT [DF_Vehicle_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Vehicle] ADD  CONSTRAINT [DF_Vehicle_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Vehicle_VehicleFeatureType] ADD  CONSTRAINT [DF_Vehicle_VehicleFeatureType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [Vehicle_VehicleFeatureType] ADD  CONSTRAINT [DF_Vehicle_VehicleFeatureType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [Vehicle_VehicleFeatureType] ADD  CONSTRAINT [DF_Vehicle_VehicleFeatureType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [Vehicle_VehicleFeatureType] ADD  CONSTRAINT [DF_Vehicle_VehicleFeatureType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleFeatureType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleFeatureType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleFeatureType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleFeatureType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleFeatureType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [VehicleStatusType] ADD  CONSTRAINT [DF_VehicleStatusType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [VehicleStatusType] ADD  CONSTRAINT [DF_VehicleStatusType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [VehicleStatusType] ADD  CONSTRAINT [DF_VehicleStatusType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [VehicleStatusType] ADD  CONSTRAINT [DF_VehicleStatusType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [VehicleStatusType] ADD  CONSTRAINT [DF_VehicleStatusType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [VehicleType] ADD  CONSTRAINT [DF_VehicleType_DisplayPriority]  DEFAULT ((100)) FOR [DisplayPriority]
GO
ALTER TABLE [VehicleType] ADD  CONSTRAINT [DF_VehicleType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [VehicleType] ADD  CONSTRAINT [DF_VehicleType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [VehicleType] ADD  CONSTRAINT [DF_VehicleType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [VehicleType] ADD  CONSTRAINT [DF_VehicleType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [VehicleType_VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleType_VehicleFeatureType_DataVersion]  DEFAULT ((1)) FOR [DataVersion]
GO
ALTER TABLE [VehicleType_VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleType_VehicleFeatureType_CreatedUtcDate]  DEFAULT (getutcdate()) FOR [CreatedUtcDate]
GO
ALTER TABLE [VehicleType_VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleType_VehicleFeatureType_ModifiedUtcDate]  DEFAULT (getutcdate()) FOR [ModifiedUtcDate]
GO
ALTER TABLE [VehicleType_VehicleFeatureType] ADD  CONSTRAINT [DF_VehicleType_VehicleFeatureType_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Users] FOREIGN KEY([UserId])
REFERENCES [Users] ([UserId])
GO
ALTER TABLE [Driver] CHECK CONSTRAINT [FK_Driver_Users]
GO
ALTER TABLE [Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Vehicle] FOREIGN KEY([CurrentVehicleId])
REFERENCES [Vehicle] ([VehicleId])
GO
ALTER TABLE [Driver] CHECK CONSTRAINT [FK_Driver_Vehicle]
GO
ALTER TABLE [Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_FeedbackType] FOREIGN KEY([FeedbackTypeId])
REFERENCES [FeedbackType] ([FeedbackTypeId])
GO
ALTER TABLE [Feedback] CHECK CONSTRAINT [FK_Feedback_FeedbackType]
GO
ALTER TABLE [FeedbackType]  WITH CHECK ADD  CONSTRAINT [FK_FeedbackType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [FeedbackType] CHECK CONSTRAINT [FK_FeedbackType_LanguageType]
GO
ALTER TABLE [GenderType]  WITH CHECK ADD  CONSTRAINT [FK_GenderType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [GenderType] CHECK CONSTRAINT [FK_GenderType_LanguageType]
GO
ALTER TABLE [NotificationType]  WITH CHECK ADD  CONSTRAINT [FK_NotificationType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [NotificationType] CHECK CONSTRAINT [FK_NotificationType_LanguageType]
GO
ALTER TABLE [Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Location] FOREIGN KEY([PickUpLocationId])
REFERENCES [Location] ([LocationId])
GO
ALTER TABLE [Reservation] CHECK CONSTRAINT [FK_Reservation_Location]
GO
ALTER TABLE [Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_ReservationCancellationReasonType] FOREIGN KEY([ReservationCancellationReasonId])
REFERENCES [ReservationCancellationReasonType] ([ReservationCancellationReasonTypeId])
GO
ALTER TABLE [Reservation] CHECK CONSTRAINT [FK_Reservation_ReservationCancellationReasonType]
GO
ALTER TABLE [Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_ReservationRequestOption] FOREIGN KEY([ReservationRequestOptionId])
REFERENCES [ReservationRequestOption] ([ReservationRequestOptionId])
GO
ALTER TABLE [Reservation] CHECK CONSTRAINT [FK_Reservation_ReservationRequestOption]
GO
ALTER TABLE [Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Users] FOREIGN KEY([UserId])
REFERENCES [Users] ([UserId])
GO
ALTER TABLE [Reservation] CHECK CONSTRAINT [FK_Reservation_Users]
GO
ALTER TABLE [ReservationCancellationReasonType]  WITH CHECK ADD  CONSTRAINT [FK_ReservationCancellationReasonType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [ReservationCancellationReasonType] CHECK CONSTRAINT [FK_ReservationCancellationReasonType_LanguageType]
GO
ALTER TABLE [ReservationRequest]  WITH CHECK ADD  CONSTRAINT [FK_ReservationRequest_DestinationLocation] FOREIGN KEY([DestinationLocationId])
REFERENCES [Location] ([LocationId])
GO
ALTER TABLE [ReservationRequest] CHECK CONSTRAINT [FK_ReservationRequest_DestinationLocation]
GO
ALTER TABLE [ReservationRequest]  WITH CHECK ADD  CONSTRAINT [FK_ReservationRequest_PickupLocation] FOREIGN KEY([PickupLocationId])
REFERENCES [Location] ([LocationId])
GO
ALTER TABLE [ReservationRequest] CHECK CONSTRAINT [FK_ReservationRequest_PickupLocation]
GO
ALTER TABLE [ReservationRequest]  WITH CHECK ADD  CONSTRAINT [FK_ReservationRequest_Reservation] FOREIGN KEY([ReplacesReservationId])
REFERENCES [Reservation] ([ReservationId])
GO
ALTER TABLE [ReservationRequest] CHECK CONSTRAINT [FK_ReservationRequest_Reservation]
GO
ALTER TABLE [ReservationRequest]  WITH CHECK ADD  CONSTRAINT [FK_ReservationRequest_ReservationRequestCancellationReasonType] FOREIGN KEY([ReservationRequestCancellationReasonTypeId])
REFERENCES [ReservationRequestCancellationReasonType] ([ReservationRequestCancellationReasonTypeId])
GO
ALTER TABLE [ReservationRequest] CHECK CONSTRAINT [FK_ReservationRequest_ReservationRequestCancellationReasonType]
GO
ALTER TABLE [ReservationRequest]  WITH CHECK ADD  CONSTRAINT [FK_ReservationRequest_ReservationRequestStatusType] FOREIGN KEY([ReservationRequestStatusTypeId])
REFERENCES [ReservationRequestStatusType] ([ReservationRequestStatusTypeId])
GO
ALTER TABLE [ReservationRequest] CHECK CONSTRAINT [FK_ReservationRequest_ReservationRequestStatusType]
GO
ALTER TABLE [ReservationRequest]  WITH CHECK ADD  CONSTRAINT [FK_ReservationRequest_Users] FOREIGN KEY([UserId])
REFERENCES [Users] ([UserId])
GO
ALTER TABLE [ReservationRequest] CHECK CONSTRAINT [FK_ReservationRequest_Users]
GO
ALTER TABLE [ReservationRequestCancellationReasonType]  WITH CHECK ADD  CONSTRAINT [FK_ReservationRequestCancellationReasonType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [ReservationRequestCancellationReasonType] CHECK CONSTRAINT [FK_ReservationRequestCancellationReasonType_LanguageType]
GO
ALTER TABLE [ReservationRequestStatusType]  WITH CHECK ADD  CONSTRAINT [FK_ReservationRequestStatusType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [ReservationRequestStatusType] CHECK CONSTRAINT [FK_ReservationRequestStatusType_LanguageType]
GO
ALTER TABLE [ReservationStatusType]  WITH CHECK ADD  CONSTRAINT [FK_ReservationStatusType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [ReservationStatusType] CHECK CONSTRAINT [FK_ReservationStatusType_LanguageType]
GO
ALTER TABLE [Ride]  WITH CHECK ADD  CONSTRAINT [FK_Ride_Driver] FOREIGN KEY([DriverId])
REFERENCES [Driver] ([DriverId])
GO
ALTER TABLE [Ride] CHECK CONSTRAINT [FK_Ride_Driver]
GO
ALTER TABLE [Ride]  WITH CHECK ADD  CONSTRAINT [FK_Ride_Users] FOREIGN KEY([UserId])
REFERENCES [Users] ([UserId])
GO
ALTER TABLE [Ride] CHECK CONSTRAINT [FK_Ride_Users]
GO
ALTER TABLE [Ride]  WITH CHECK ADD  CONSTRAINT [FK_Ride_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [Vehicle] ([VehicleId])
GO
ALTER TABLE [Ride] CHECK CONSTRAINT [FK_Ride_Vehicle]
GO
ALTER TABLE [RidePosition]  WITH CHECK ADD  CONSTRAINT [FK_RidePosition_Ride] FOREIGN KEY([RideId])
REFERENCES [Ride] ([RideId])
GO
ALTER TABLE [RidePosition] CHECK CONSTRAINT [FK_RidePosition_Ride]
GO
ALTER TABLE [RideServiceType]  WITH CHECK ADD  CONSTRAINT [FK_RideServiceType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [RideServiceType] CHECK CONSTRAINT [FK_RideServiceType_LanguageType]
GO
ALTER TABLE [Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_GenderType_GenderTypeId] FOREIGN KEY([GenderTypeId])
REFERENCES [GenderType] ([GenderTypeId])
GO
ALTER TABLE [Users] CHECK CONSTRAINT [FK_Users_GenderType_GenderTypeId]
GO
ALTER TABLE [Users_Location]  WITH CHECK ADD  CONSTRAINT [FK_Users_Location_Location] FOREIGN KEY([LocationId])
REFERENCES [Location] ([LocationId])
GO
ALTER TABLE [Users_Location] CHECK CONSTRAINT [FK_Users_Location_Location]
GO
ALTER TABLE [Users_Location]  WITH CHECK ADD  CONSTRAINT [FK_Users_Location_Users] FOREIGN KEY([UserId])
REFERENCES [Users] ([UserId])
GO
ALTER TABLE [Users_Location] CHECK CONSTRAINT [FK_Users_Location_Users]
GO
ALTER TABLE [Users_NotificationType]  WITH CHECK ADD  CONSTRAINT [FK_Users_NotificationType_NotificationType] FOREIGN KEY([NotificationTypeId])
REFERENCES [NotificationType] ([NotificationTypeId])
GO
ALTER TABLE [Users_NotificationType] CHECK CONSTRAINT [FK_Users_NotificationType_NotificationType]
GO
ALTER TABLE [Users_NotificationType]  WITH CHECK ADD  CONSTRAINT [FK_Users_NotificationType_Users] FOREIGN KEY([UserId])
REFERENCES [Users] ([UserId])
GO
ALTER TABLE [Users_NotificationType] CHECK CONSTRAINT [FK_Users_NotificationType_Users]
GO
ALTER TABLE [Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_VehicleStatusType] FOREIGN KEY([VehicleStatusTypeId])
REFERENCES [VehicleStatusType] ([VehicleStatusTypeId])
GO
ALTER TABLE [Vehicle] CHECK CONSTRAINT [FK_Vehicle_VehicleStatusType]
GO
ALTER TABLE [Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_VehicleType] FOREIGN KEY([VehicleTypeId])
REFERENCES [VehicleType] ([VehicleTypeId])
GO
ALTER TABLE [Vehicle] CHECK CONSTRAINT [FK_Vehicle_VehicleType]
GO
ALTER TABLE [Vehicle_VehicleFeatureType]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_VehicleFeatureType_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [Vehicle] ([VehicleId])
GO
ALTER TABLE [Vehicle_VehicleFeatureType] CHECK CONSTRAINT [FK_Vehicle_VehicleFeatureType_Vehicle]
GO
ALTER TABLE [Vehicle_VehicleFeatureType]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_VehicleFeatureType_VehicleFeatureType] FOREIGN KEY([VehicleFeatureTypeId])
REFERENCES [VehicleFeatureType] ([VehicleFeatureTypeId])
GO
ALTER TABLE [Vehicle_VehicleFeatureType] CHECK CONSTRAINT [FK_Vehicle_VehicleFeatureType_VehicleFeatureType]
GO
ALTER TABLE [VehicleFeatureType]  WITH CHECK ADD  CONSTRAINT [FK_VehicleFeatureType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [VehicleFeatureType] CHECK CONSTRAINT [FK_VehicleFeatureType_LanguageType]
GO
ALTER TABLE [VehicleStatusType]  WITH CHECK ADD  CONSTRAINT [FK_VehicleStatusType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [VehicleStatusType] CHECK CONSTRAINT [FK_VehicleStatusType_LanguageType]
GO
ALTER TABLE [VehicleType]  WITH CHECK ADD  CONSTRAINT [FK_VehicleType_LanguageType] FOREIGN KEY([LanguageTypeId])
REFERENCES [LanguageType] ([LanguageTypeId])
GO
ALTER TABLE [VehicleType] CHECK CONSTRAINT [FK_VehicleType_LanguageType]
GO
ALTER TABLE [VehicleType_VehicleFeatureType]  WITH CHECK ADD  CONSTRAINT [FK_VehicleType_VehicleFeatureType_VehicleFeatureType] FOREIGN KEY([VehicleFeatureTypeId])
REFERENCES [VehicleFeatureType] ([VehicleFeatureTypeId])
GO
ALTER TABLE [VehicleType_VehicleFeatureType] CHECK CONSTRAINT [FK_VehicleType_VehicleFeatureType_VehicleFeatureType]
GO
ALTER TABLE [VehicleType_VehicleFeatureType]  WITH CHECK ADD  CONSTRAINT [FK_VehicleType_VehicleFeatureType_VehicleType] FOREIGN KEY([VehicleTypeId])
REFERENCES [VehicleType] ([VehicleTypeId])
GO
ALTER TABLE [VehicleType_VehicleFeatureType] CHECK CONSTRAINT [FK_VehicleType_VehicleFeatureType_VehicleType]
GO
/****** Object:  Trigger [trgDriverUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgDriverUpdate] ON [Driver]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Driver a
        INNER JOIN inserted b
          ON a.DriverId = b.DriverId


GO
ALTER TABLE [Driver] ENABLE TRIGGER [trgDriverUpdate]
GO
/****** Object:  Trigger [trgFeedbackUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgFeedbackUpdate] ON [Feedback]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Feedback a
        INNER JOIN inserted b
          ON a.FeedbackId = b.FeedbackId


GO
ALTER TABLE [Feedback] ENABLE TRIGGER [trgFeedbackUpdate]
GO
/****** Object:  Trigger [trgFeedbackTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgFeedbackTypeUpdate] ON [FeedbackType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM FeedbackType a
        INNER JOIN inserted b
          ON a.FeedbackTypeId = b.FeedbackTypeId


GO
ALTER TABLE [FeedbackType] ENABLE TRIGGER [trgFeedbackTypeUpdate]
GO
/****** Object:  Trigger [trgGenderTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgGenderTypeUpdate] ON [GenderType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM GenderType a
        INNER JOIN inserted b
          ON a.GenderTypeId = b.GenderTypeId


GO
ALTER TABLE [GenderType] ENABLE TRIGGER [trgGenderTypeUpdate]
GO
/****** Object:  Trigger [trgHolidayUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgHolidayUpdate] ON [Holiday]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Holiday a
        INNER JOIN inserted b
          ON a.HolidayId = b.HolidayId


GO
ALTER TABLE [Holiday] ENABLE TRIGGER [trgHolidayUpdate]
GO
/****** Object:  Trigger [trgLanguageTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgLanguageTypeUpdate] ON [LanguageType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM LanguageType a
        INNER JOIN inserted b
          ON a.LanguageTypeId = b.LanguageTypeId


GO
ALTER TABLE [LanguageType] ENABLE TRIGGER [trgLanguageTypeUpdate]
GO
/****** Object:  Trigger [trgLocationUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgLocationUpdate] ON [Location]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Location a
        INNER JOIN inserted b
          ON a.LocationId = b.LocationId


GO
ALTER TABLE [Location] ENABLE TRIGGER [trgLocationUpdate]
GO
/****** Object:  Trigger [trgNotificationTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgNotificationTypeUpdate] ON [NotificationType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM NotificationType a
        INNER JOIN inserted b
          ON a.NotificationTypeId = b.NotificationTypeId


GO
ALTER TABLE [NotificationType] ENABLE TRIGGER [trgNotificationTypeUpdate]
GO
/****** Object:  Trigger [trgReservationUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgReservationUpdate] ON [Reservation]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Reservation a
        INNER JOIN inserted b
          ON a.ReservationId = b.ReservationId


GO
ALTER TABLE [Reservation] ENABLE TRIGGER [trgReservationUpdate]
GO
/****** Object:  Trigger [trgReservationCancellationReasonTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgReservationCancellationReasonTypeUpdate] ON [ReservationCancellationReasonType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM ReservationCancellationReasonType a
        INNER JOIN inserted b
          ON a.ReservationCancellationReasonTypeId = b.ReservationCancellationReasonTypeId


GO
ALTER TABLE [ReservationCancellationReasonType] ENABLE TRIGGER [trgReservationCancellationReasonTypeUpdate]
GO
/****** Object:  Trigger [trgReservationRequestUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgReservationRequestUpdate] ON [ReservationRequest]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM ReservationRequest a
        INNER JOIN inserted b
          ON a.ReservationRequestId = b.ReservationRequestId


GO
ALTER TABLE [ReservationRequest] ENABLE TRIGGER [trgReservationRequestUpdate]
GO
/****** Object:  Trigger [trgReservationRequestCancellationReasonTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgReservationRequestCancellationReasonTypeUpdate] ON [ReservationRequestCancellationReasonType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM ReservationRequestCancellationReasonType a
        INNER JOIN inserted b
          ON a.ReservationRequestCancellationReasonTypeId = b.ReservationRequestCancellationReasonTypeId


GO
ALTER TABLE [ReservationRequestCancellationReasonType] ENABLE TRIGGER [trgReservationRequestCancellationReasonTypeUpdate]
GO
/****** Object:  Trigger [trgReservationRequestOptionUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgReservationRequestOptionUpdate] ON [ReservationRequestOption]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM ReservationRequestOption a
        INNER JOIN inserted b
          ON a.ReservationRequestOptionId = b.ReservationRequestOptionId


GO
ALTER TABLE [ReservationRequestOption] ENABLE TRIGGER [trgReservationRequestOptionUpdate]
GO
/****** Object:  Trigger [trgReservationRequestStatusTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgReservationRequestStatusTypeUpdate] ON [ReservationRequestStatusType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM ReservationRequestStatusType a
        INNER JOIN inserted b
          ON a.ReservationRequestStatusTypeId = b.ReservationRequestStatusTypeId


GO
ALTER TABLE [ReservationRequestStatusType] ENABLE TRIGGER [trgReservationRequestStatusTypeUpdate]
GO
/****** Object:  Trigger [trgReservationStatusTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgReservationStatusTypeUpdate] ON [ReservationStatusType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM ReservationStatusType a
        INNER JOIN inserted b
          ON a.ReservationStatusTypeId = b.ReservationStatusTypeId


GO
ALTER TABLE [ReservationStatusType] ENABLE TRIGGER [trgReservationStatusTypeUpdate]
GO
/****** Object:  Trigger [trgRideUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgRideUpdate] ON [Ride]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Ride a
        INNER JOIN inserted b
          ON a.RideId = b.RideId


GO
ALTER TABLE [Ride] ENABLE TRIGGER [trgRideUpdate]
GO
/****** Object:  Trigger [trgRidePositionUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgRidePositionUpdate] ON [RidePosition]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM RidePosition a
        INNER JOIN inserted b
          ON a.RidePositionId = b.RidePositionId


GO
ALTER TABLE [RidePosition] ENABLE TRIGGER [trgRidePositionUpdate]
GO
/****** Object:  Trigger [trgRideServiceTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgRideServiceTypeUpdate] ON [RideServiceType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM RideServiceType a
        INNER JOIN inserted b
          ON a.RideServiceTypeId = b.RideServiceTypeId


GO
ALTER TABLE [RideServiceType] ENABLE TRIGGER [trgRideServiceTypeUpdate]
GO
/****** Object:  Trigger [trgUsersUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgUsersUpdate] ON [Users]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Users a
        INNER JOIN inserted b
          ON a.UserId = b.UserId


GO
ALTER TABLE [Users] ENABLE TRIGGER [trgUsersUpdate]
GO
/****** Object:  Trigger [trgUsers_LocationUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgUsers_LocationUpdate] ON [Users_Location]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Users_Location a
        INNER JOIN inserted b
          ON a.UserId = b.UserId AND a.LocationId = b.LocationId


GO
ALTER TABLE [Users_Location] ENABLE TRIGGER [trgUsers_LocationUpdate]
GO
/****** Object:  Trigger [trgUsers_NotificationTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgUsers_NotificationTypeUpdate] ON [Users_NotificationType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Users_NotificationType a
        INNER JOIN inserted b
          ON a.UserId = b.UserId AND a.NotificationTypeId = b.NotificationTypeId


GO
ALTER TABLE [Users_NotificationType] ENABLE TRIGGER [trgUsers_NotificationTypeUpdate]
GO
/****** Object:  Trigger [trgVehicleUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgVehicleUpdate] ON [Vehicle]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Vehicle a
        INNER JOIN inserted b
          ON a.VehicleId = b.VehicleId


GO
ALTER TABLE [Vehicle] ENABLE TRIGGER [trgVehicleUpdate]
GO
/****** Object:  Trigger [trgVehicle_VehicleFeatureTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgVehicle_VehicleFeatureTypeUpdate] ON [Vehicle_VehicleFeatureType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM Vehicle_VehicleFeatureType a
        INNER JOIN inserted b
          ON a.VehicleId = b.VehicleId AND a.VehicleFeatureTypeId = b.VehicleFeatureTypeId


GO
ALTER TABLE [Vehicle_VehicleFeatureType] ENABLE TRIGGER [trgVehicle_VehicleFeatureTypeUpdate]
GO
/****** Object:  Trigger [trgVehicleFeatureTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgVehicleFeatureTypeUpdate] ON [VehicleFeatureType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM VehicleFeatureType a
        INNER JOIN inserted b
          ON a.VehicleFeatureTypeId = b.VehicleFeatureTypeId


GO
ALTER TABLE [VehicleFeatureType] ENABLE TRIGGER [trgVehicleFeatureTypeUpdate]
GO
/****** Object:  Trigger [trgVehicleStatusTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgVehicleStatusTypeUpdate] ON [VehicleStatusType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM VehicleStatusType a
        INNER JOIN inserted b
          ON a.VehicleStatusTypeId = b.VehicleStatusTypeId


GO
ALTER TABLE [VehicleStatusType] ENABLE TRIGGER [trgVehicleStatusTypeUpdate]
GO
/****** Object:  Trigger [trgVehicleTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgVehicleTypeUpdate] ON [VehicleType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM VehicleType a
        INNER JOIN inserted b
          ON a.VehicleTypeId = b.VehicleTypeId


GO
ALTER TABLE [VehicleType] ENABLE TRIGGER [trgVehicleTypeUpdate]
GO
/****** Object:  Trigger [trgVehicleType_VehicleFeatureTypeUpdate]    Script Date: 4/1/2019 4:13:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

      CREATE TRIGGER [trgVehicleType_VehicleFeatureTypeUpdate] ON [VehicleType_VehicleFeatureType]
      FOR UPDATE
      AS 

      SET NOCOUNT ON

      UPDATE a SET 
        a.DataVersion = b.DataVersion + 1
      FROM VehicleType_VehicleFeatureType a
        INNER JOIN inserted b
          ON a.VehicleTypeId = b.VehicleTypeId AND a.VehicleFeatureTypeId = b.VehicleFeatureTypeId


GO
ALTER TABLE [VehicleType_VehicleFeatureType] ENABLE TRIGGER [trgVehicleType_VehicleFeatureTypeUpdate]
GO
