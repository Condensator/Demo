CREATE TABLE [dbo].[employees] (
    [employee_id] INT          NOT NULL,
    [last_name]   VARCHAR (50) NOT NULL,
    [first_name]  VARCHAR (50) NULL,
    [salary]      MONEY        NULL
);


GO

ALTER TABLE [dbo].[employees]
    ADD CONSTRAINT [check_employee_id] CHECK ([employee_id]>=(1) AND [employee_id]<=(10000));


GO



