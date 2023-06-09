CREATE DATABASE [Quiz_Practice]

ALTER DATABASE [Quiz_Practice] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quiz_Practice] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quiz_Practice] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quiz_Practice] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quiz_Practice] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quiz_Practice] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quiz_Practice] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quiz_Practice] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quiz_Practice] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quiz_Practice] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quiz_Practice] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quiz_Practice] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quiz_Practice] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quiz_Practice] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quiz_Practice] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Quiz_Practice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quiz_Practice] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quiz_Practice] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quiz_Practice] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quiz_Practice] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quiz_Practice] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quiz_Practice] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quiz_Practice] SET RECOVERY FULL 
GO
ALTER DATABASE [Quiz_Practice] SET  MULTI_USER 
GO
ALTER DATABASE [Quiz_Practice] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quiz_Practice] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quiz_Practice] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quiz_Practice] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Quiz_Practice] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Quiz_Practice] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Quiz_Practice] SET QUERY_STORE = OFF
GO
USE [Quiz_Practice]
GO

/*Category*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*Category_quiz*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category_quiz](
	[quiz_id] [int] NOT NULL,
	[category_id] [int] NOT NULL
) ON [PRIMARY]
GO

/*Enrollment*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrollment](
	[quiz_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[day_enroll] [date] NOT NULL
) ON [PRIMARY]
GO

/*Exam*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[exam_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[quiz_id] [int] NOT NULL,
	[mark] [real] NOT NULL,
	[correct_answers] [int] NOT NULL,
	[num_of_question] [int] NOT NULL,
	[exam_date] [date] NOT NULL,
	[time] [time](7) NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*Feedback*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[quiz_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[comment] [nvarchar](500) NULL,
	[feedback_date] [date] NOT NULL,
	[rate] [float] NOT NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*Option*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Option](
	[quiz_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[option_id] [int] NOT NULL,
	[right_option] [bit] NULL,
	[option_content] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_option_1] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC,
	[question_id] ASC,
	[option_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*Option_question_exam*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Option_question_exam](
	[exam_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[option_id] [int] NOT NULL,
	[option] [nvarchar](1000) NOT NULL,
	[right_option] [int] NOT NULL,
	[option_status] [int] NOT NULL,
 CONSTRAINT [PK_Option_question_exam] PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC,
	[question_id] ASC,
	[option_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*Question*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[quiz_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[question] [nvarchar](4000) NOT NULL,
	[intruction] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Question_1] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC,
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*Question_exam*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question_exam](
	[exam_id] [int] NOT NULL,
	[question_id] [int] NOT NULL,
	[question] [nvarchar](1000) NOT NULL,
	[question_status] [int] NOT NULL,
 CONSTRAINT [PK_Question_exam] PRIMARY KEY CLUSTERED 
(
	[exam_id] ASC,
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*Quiz*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[quiz_id] [int] IDENTITY(1,1) NOT NULL,
	[creator_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](1000) NULL,
	[last_update] [date] NULL,
	[create_date] [date] NOT NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[quiz_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/*User*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nchar](50) NOT NULL,
	[password] [nchar](30) NOT NULL,
	[email] [nchar](50) NOT NULL,
	[avatar] [nchar](200) NULL,
	[role_id] [int] NOT NULL,
	[about_me] [nvarchar](4000) NULL,
	[connect] [nvarchar](4000) NULL,
	
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (1, N'Mathematics')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (2, N'History')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (3, N'Geography')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (4, N'Physics')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (5, N'Literature')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (6, N'Biological')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (7, N'Chemistry')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (8, N'Philosophy')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (9, N'IT')
INSERT [dbo].[Category] ([category_id], [category_name]) VALUES (10, N'English')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Exam] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [username], [password], [email], [avatar], [role_id], [about_me], [connect]) VALUES (1, N'admin', N'123456', N'admin@gmail.com', NULL, 2, NULL, NULL)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [avatar], [role_id], [about_me], [connect]) VALUES (2, N'user1', N'123456', N'user1@gmail.com', NULL, 0, NULL, NULL)
INSERT [dbo].[User] ([user_id], [username], [password], [email], [avatar], [role_id], [about_me], [connect]) VALUES (3, N'banned user', N'123456', N'user2@gmail.com', NULL, 10, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO


ALTER TABLE [dbo].[Category_quiz]  WITH CHECK ADD  CONSTRAINT [FK_Category_quiz_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Category_quiz] CHECK CONSTRAINT [FK_Category_quiz_Category]
GO
ALTER TABLE [dbo].[Category_quiz]  WITH CHECK ADD  CONSTRAINT [FK_Category_quiz_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Category_quiz] CHECK CONSTRAINT [FK_Category_quiz_Quiz]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_Quiz1] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_Quiz1]
GO
ALTER TABLE [dbo].[Enrollment]  WITH CHECK ADD  CONSTRAINT [FK_Enrollment_users1] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Enrollment] CHECK CONSTRAINT [FK_Enrollment_users1]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Quiz]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_users]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_feedback_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_feedback_Quiz]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_feedback_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_feedback_users]
GO
ALTER TABLE [dbo].[Option]  WITH CHECK ADD  CONSTRAINT [FK_Option_Question1] FOREIGN KEY([quiz_id], [question_id])
REFERENCES [dbo].[Question] ([quiz_id], [question_id])
GO
ALTER TABLE [dbo].[Option] CHECK CONSTRAINT [FK_Option_Question1]
GO
ALTER TABLE [dbo].[Option_question_exam]  WITH CHECK ADD  CONSTRAINT [FK_Option_question_exam_Question_exam] FOREIGN KEY([exam_id], [question_id])
REFERENCES [dbo].[Question_exam] ([exam_id], [question_id])
GO
ALTER TABLE [dbo].[Option_question_exam] CHECK CONSTRAINT [FK_Option_question_exam_Question_exam]
GO

ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_Quiz] FOREIGN KEY([quiz_id])
REFERENCES [dbo].[Quiz] ([quiz_id])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_Quiz]
GO
ALTER TABLE [dbo].[Question_exam]  WITH CHECK ADD  CONSTRAINT [FK_Question_exam_Exam] FOREIGN KEY([exam_id])
REFERENCES [dbo].[Exam] ([exam_id])
GO
ALTER TABLE [dbo].[Question_exam] CHECK CONSTRAINT [FK_Question_exam_Exam]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_users] FOREIGN KEY([creator_id])
REFERENCES [dbo].[User] ([user_id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_users]
GO
USE [master]
GO
ALTER DATABASE [Quiz_Practice] SET  READ_WRITE 
GO
