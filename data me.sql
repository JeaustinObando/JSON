use JsonDB
-- Type Furniture
DECLARE @count INT;
declare @TempJson TABLE (
    id int, 
    JsonData varchar(MAX)
);

INSERT INTO @TempJson 
SELECT idTypeFurniture,jsonTypeFurniture FROM JsonBit.dbo.typeFurniture

SELECT @count = COUNT(*) FROM @TempJson;

WHILE @count > 0
BEGIN
	DECLARE @Json VARCHAR(MAX) = (select top(1) JsonData from @TempJson)
	insert into dbo.typeFurniture
		select idTypeFurniture,name,details
		from openJson(@Json)
		with (	idTypeFurniture int,
				name varchar(20),
				details varchar(50))
	
    DELETE TOP (1) FROM @TempJson
    SELECT @count = COUNT(*) FROM @TempJson;
END

select * from dbo.typeFurniture

--Furniture

DECLARE @count INT;
declare @TempJson TABLE (
    id int, 
    JsonData varchar(MAX)
);

INSERT INTO @TempJson 
SELECT idFurniture,jsonType FROM JsonBit.dbo.furniture

SELECT @count = COUNT(*) FROM @TempJson;

WHILE @count > 0
BEGIN
	DECLARE @Json VARCHAR(MAX) = (select top(1) JsonData from @TempJson)
	insert into dbo.furniture
		select idFurniture,name,space,material,pieces,typeFurniture,price
		from openJson(@Json)
		with (	idFurniture int,
				name varchar(20),
				space varchar(30),
				material varchar(30),
				pieces int,
				typeFurniture int,
				price money)
	
    DELETE TOP (1) FROM @TempJson
    SELECT @count = COUNT(*) FROM @TempJson;
END

select * from furniture


--type employee

DECLARE @count INT;
declare @TempJson TABLE (
    id int, 
    JsonData varchar(MAX)
);

INSERT INTO @TempJson 
SELECT idTypeEmployee,jsonTypeEmployee FROM JsonBit.dbo.type_employee

SELECT @count = COUNT(*) FROM @TempJson;

WHILE @count > 0
BEGIN
	DECLARE @Json VARCHAR(MAX) = (select top(1) JsonData from @TempJson)
	insert into dbo.type_employee
		select idTypeEmployee,name
		from openJson(@Json)
		with (	idTypeEmployee int,
				name varchar(20))
	
    DELETE TOP (1) FROM @TempJson
    SELECT @count = COUNT(*) FROM @TempJson;
END
delete from type_employee
select * from dbo.type_employee

--Employee

DECLARE @count INT;
declare @TempJson TABLE (
    id int, 
    JsonData varchar(MAX)
);

INSERT INTO @TempJson 
SELECT idEmployee,jsonEmployee FROM JsonBit.dbo.employee

SELECT @count = COUNT(*) FROM @TempJson;

WHILE @count > 0
BEGIN
	DECLARE @Json VARCHAR(MAX) = (select top(1) JsonData from @TempJson)
	insert into dbo.employee
		select idEmployee,name,firstLastName,SecondLastName,identificationCard,idTypeEmployee,address,birthday
		from openJson(@Json)
		with (	idEmployee int,
				name varchar(20),
				firstLastName varchar(20),
				SecondLastName varchar(20),
				identificationCard varchar(20),
				idTypeEmployee int,
				address varchar(20),
				birthday date)
	
    DELETE TOP (1) FROM @TempJson
    SELECT @count = COUNT(*) FROM @TempJson;
END

select * from employee


--client


DECLARE @count INT;
declare @TempJson TABLE (
    id int, 
    JsonData varchar(MAX)
);

INSERT INTO @TempJson 
SELECT idClient,jsonClient FROM JsonBit.dbo.client

SELECT @count = COUNT(*) FROM @TempJson;

WHILE @count > 0
BEGIN
	DECLARE @Json VARCHAR(MAX) = (select top(1) JsonData from @TempJson)
	insert into dbo.client
		select idClient,name,firstLastName,secondLastName,address,idPayMethod
		from openJson(@Json)
		with (	idClient int,
				name varchar(20),
				firstLastName varchar(20),
				secondLastName varchar(20),
				address varchar(50),
				idPayMethod int)
	
    DELETE TOP (1) FROM @TempJson
    SELECT @count = COUNT(*) FROM @TempJson;
END

select * from client


