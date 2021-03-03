CREATE PROCEDURE [dbo].[usp_RandomQ] WITH RECOMPILE
AS



SET NOCOUNT ON
DECLARE @Id INT
SELECT @Id = CAST(RAND() * 10000000 AS INT)
IF @Id % 7 = 0
    EXEC dbo.Refresh_ReportByVoteType
ELSE IF @Id % 6 = 0
    EXEC dbo.Refresh_ReportByBadge
ELSE IF @Id % 5 = 0
    EXEC dbo.GetBadgesDetails @Id
ELSE IF @Id % 4 = 0
    EXEC dbo.GetCommentsDetails @Id
ELSE IF @Id % 3 = 0
    EXEC dbo.GetPostsDetails @Id
ELSE IF @Id % 2 = 0 AND @@SPID % 2 = 0
    EXEC dbo.GetUsersDetails @Id
ELSE
    EXEC dbo.GetVotesDetails @Id
GO

