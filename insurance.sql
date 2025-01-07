CREATE DATABASE insurence;
GO

USE insurence;

INSERT INTO Goods_location (id, corps, floor_location, room)
VALUES 
(1, N'A', 1, N'101'),
(2, N'B', 2, N'202'),
(3, N'C', 3, N'303'),
(4, N'D', 4, N'404'),
(5, N'E', 5, N'505'),
(6, N'F', 6, N'606');

INSERT INTO Supplier (id, name, location, contact_info)
VALUES 
(1, N'Техно Поставка', N'вул. Технологій 123', N'123-456-7890'),
(2, N'Офісні Рішення', N'бульв. Офісний 456', N'987-654-3210'),
(3, N'Меблевий Світ', N'просп. Меблів 789', N'555-555-5555'),
(4, N'Техно Сервіс', N'вул. Сервісна 101', N'111-222-3333'),
(5, N'Офіс Сучасний', N'просп. Інновацій 88', N'444-555-6666'),
(6, N'Меблі Еліт', N'бульв. Елегантний 12', N'777-888-9999');

INSERT INTO Goods (id, name_of_goods, inventory_number, price, date_of_purchase, supplier_id, goods_location_id)
VALUES 
(1, N'Ноутбук', N'ІНВ123', 40000.00, '2024-01-15', 1, 1),
(2, N'Офісне крісло', N'ІНВ124', 8000.00, '2024-01-20', 3, 2),
(3, N'Стіл', N'ІНВ125', 12000.00, '2024-02-01', 3, 3),
(4, N'Принтер', N'ІНВ126', 20000.00, '2024-02-10', 2, 1),
(5, N'Монітор', N'ІНВ127', 15000.00, '2024-02-15', 4, 4),
(6, N'Шафа для документів', N'ІНВ128', 25000.00, '2024-02-20', 6, 5),
(7, N'Клавіатура', N'ІНВ129', 3000.00, '2024-03-01', 4, 6),
(8, N'Мишка', N'ІНВ130', 1200.00, '2024-03-05', 5, 4);

INSERT INTO Coupon (id, term_of_insurence_months, location_of_coupon, goods_id)
VALUES 
(1, 12, N'Папка А', 1),
(2, 24, N'Папка Б', 2),
(3, 36, N'Папка В', 3),
(4, 6, N'Папка Г', 5),
(5, 18, N'Папка Д', 6),
(6, 12, N'Папка Е', 7),
(7, 24, N'Папка Ж', 8);

INSERT INTO Repair (id, date, description_of_problem, coupon_id)
VALUES 
(1, '2024-03-01', N'Екран не працює', 1),
(2, '2024-03-15', N'Зламалося колесо', 2),
(3, '2024-03-20', N'Тріщина на столі', 3),
(4, '2024-03-10', N'Не вмикається монітор', 4),
(5, '2024-03-25', N'Пошкоджені дверцята', 5),
(6, '2024-04-01', N'Залипають клавіші', 6),
(7, '2024-04-15', N'Не працює кнопка', 7);


USE insurence;

ALTER TABLE Coupon
ADD CONSTRAINT FK_Coupon_Goods
FOREIGN KEY (goods_id) REFERENCES Goods(id);

ALTER TABLE Goods
ADD CONSTRAINT FK_Goods_Supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(id),
    CONSTRAINT FK_Goods_Location FOREIGN KEY (goods_location_id) REFERENCES Goods_location(id);


ALTER TABLE Repair
ADD CONSTRAINT FK_Repair_Coupon
FOREIGN KEY (coupon_id) REFERENCES Coupon(id);


USE insurence;

INSERT INTO Goods_location (id, corps, floor_location, room)
VALUES 
(1, N'A', 1, N'101'),
(2, N'B', 2, N'202'),
(3, N'C', 3, N'303'),
(4, N'D', 4, N'404'),
(5, N'E', 5, N'505'),
(6, N'F', 6, N'606');

INSERT INTO Supplier (id, name, location, contact_info)
VALUES 
(1, N'Техно Поставка', N'вул. Технологій 123', N'123-456-7890'),
(2, N'Офісні Рішення', N'бульв. Офісний 456', N'987-654-3210'),
(3, N'Меблевий Світ', N'просп. Меблів 789', N'555-555-5555'),
(4, N'Техно Сервіс', N'вул. Сервісна 101', N'111-222-3333'),
(5, N'Офіс Сучасний', N'просп. Інновацій 88', N'444-555-6666'),
(6, N'Меблі Еліт', N'бульв. Елегантний 12', N'777-888-9999');

INSERT INTO Goods (id, name_of_goods, inventory_number, price, date_of_purchase, supplier_id, goods_location_id)
VALUES 
(1, N'Ноутбук', N'ІНВ123', 40000.00, '2024-01-15', 1, 1),
(2, N'Офісне крісло', N'ІНВ124', 8000.00, '2024-01-20', 3, 2),
(3, N'Стіл', N'ІНВ125', 12000.00, '2024-02-01', 3, 3),
(4, N'Принтер', N'ІНВ126', 20000.00, '2024-02-10', 2, 1),
(5, N'Монітор', N'ІНВ127', 15000.00, '2024-02-15', 4, 4),
(6, N'Шафа для документів', N'ІНВ128', 25000.00, '2024-02-20', 6, 5),
(7, N'Клавіатура', N'ІНВ129', 3000.00, '2024-03-01', 4, 6),
(8, N'Мишка', N'ІНВ130', 1200.00, '2024-03-05', 5, 4);

INSERT INTO Coupon (id, term_of_insurence_months, location_of_coupon, goods_id)
VALUES 
(1, 12, N'Папка А', 1),
(2, 24, N'Папка Б', 2),
(3, 36, N'Папка В', 3),
(4, 6, N'Папка Г', 5),
(5, 18, N'Папка Д', 6),
(6, 12, N'Папка Е', 7),
(7, 24, N'Папка Ж', 8);

INSERT INTO Repair (id, date, description_of_problem, coupon_id)
VALUES 
(1, '2024-03-01', N'Екран не працює', 1),
(2, '2024-03-15', N'Зламалося колесо', 2),
(3, '2024-03-20', N'Тріщина на столі', 3),
(4, '2024-03-10', N'Не вмикається монітор', 4),
(5, '2024-03-25', N'Пошкоджені дверцята', 5),
(6, '2024-04-01', N'Залипають клавіші', 6),
(7, '2024-04-15', N'Не працює кнопка', 7);


USE insurence;

SELECT * FROM Supplier;

SELECT * FROM Coupon;

SELECT * FROM Repair;

SELECT * FROM Goods_location;

-- Список товарів разом з інформацією про їх постачальників
SELECT 
    Goods.id AS Товар_ID,
    Goods.name_of_goods AS Назва_товару,
    Goods.price AS Ціна,
    Supplier.name AS Постачальник,
    Supplier.location AS Локація_постачальника
FROM Goods
JOIN Supplier ON Goods.supplier_id = Supplier.id;

-- Список товарів та їхнє розташування
SELECT 
    Goods.id AS Товар_ID,
    Goods.name_of_goods AS Назва_товару,
    Goods.price AS Ціна,
    Goods_location.corps AS Корпус,
    Goods_location.floor_location AS Поверх,
    Goods_location.room AS Кімната
FROM Goods
JOIN Goods_location ON Goods.goods_location_id = Goods_location.id;

-- талони з інформацією про товари
SELECT 
    Coupon.id AS Талон_ID,
    Coupon.location_of_coupon AS Локація_талонів,
    Coupon.term_of_insurence_months AS Термін_страхування_місяців,
    Goods.name_of_goods AS Назва_товару,
    Goods.price AS Ціна
FROM Coupon
JOIN Goods ON Coupon.goods_id = Goods.id;

-- Список ремонтів із деталями про проблему та пов’язані талони
SELECT 
    Repair.id AS Ремонт_ID,
    Repair.date AS Дата_ремонту,
    Repair.description_of_problem AS Опис_проблеми,
    Coupon.location_of_coupon AS Локація_талонів,
    Goods.name_of_goods AS Назва_товару
FROM Repair
JOIN Coupon ON Repair.coupon_id = Coupon.id
JOIN Goods ON Coupon.goods_id = Goods.id;

-- Всі товари з інформацією про постачальників
SELECT 
    Goods.id AS Товар_ID,
    Goods.name_of_goods AS Назва_товару,
    Goods.price AS Ціна,
    Supplier.name AS Постачальник
FROM Goods
JOIN Supplier ON Goods.supplier_id = Supplier.id;

-- Деталі про ремонти,талонів, товари та їх постачальників
SELECT 
    Repair.id AS Ремонт_ID,
    Repair.date AS Дата_ремонту,
    Repair.description_of_problem AS Опис_проблеми,
    Coupon.location_of_coupon AS Локація_талонів,
    Goods.name_of_goods AS Назва_товару,
    Supplier.name AS Постачальник
FROM Repair
JOIN Coupon ON Repair.coupon_id = Coupon.id
JOIN Goods ON Coupon.goods_id = Goods.id
JOIN Supplier ON Goods.supplier_id = Supplier.id;



USE insurence;
GO

	CREATE VIEW Coupon_with_goods AS
SELECT
	Coupon.id AS Талон_ID,
	Goods.id AS Товар_ID,
	Goods.name_of_goods AS Назва_товару,
	Goods.date_of_purchase AS Дата_покупки,
	Coupon.term_of_insurence_months AS Термін_страхування_місяців,
	Coupon.location_of_coupon AS Локація_талонів,
	Goods.inventory_number AS Інвентарний_номер,
	Goods.price AS Ціна
FROM
	Coupon
JOIN
	Goods ON Coupon.goods_id = Goods.id
GO

	CREATE VIEW Goods_with_suppliers AS
SELECT 
    Goods.id AS Товар_ID,
    Goods.name_of_goods AS Назва_товару,
    Goods.price AS Ціна,
    Supplier.name AS Постачальник,
    Supplier.location AS Локація_постачальника
FROM Goods
JOIN Supplier ON Goods.supplier_id = Supplier.id;
GO

	CREATE VIEW Goods_with_location AS
SELECT 
    Goods.id AS Товар_ID,
    Goods.name_of_goods AS Назва_товару,
    Goods_location.corps AS Корпус,
    Goods_location.floor_location AS Поверх,
    Goods_location.room AS Кімната
FROM Goods
JOIN Goods_location ON Goods.goods_location_id = Goods_location.id;
GO

	CREATE VIEW Repairs_with_coupons AS
SELECT 
    Repair.id AS Ремонт_ID,
    Repair.date AS Дата_ремонту,
    Repair.description_of_problem AS Опис_проблеми,
    Coupon.location_of_coupon AS Локація_купонів,
    Goods.name_of_goods AS Назва_товару
FROM Repair
JOIN Coupon ON Repair.coupon_id = Coupon.id
JOIN Goods ON Coupon.goods_id = Goods.id;
GO

	CREATE VIEW Full_goods_details AS
SELECT 
    Goods.id AS Товар_ID,
    Goods.name_of_goods AS Назва_товару,
    Goods.price AS Ціна,
    Supplier.name AS Постачальник,
    Goods_location.corps AS Корпус,
    Goods_location.floor_location AS Поверх,
    Goods_location.room AS Кімната
FROM Goods
JOIN Supplier ON Goods.supplier_id = Supplier.id
JOIN Goods_location ON Goods.goods_location_id = Goods_location.id;
GO


use insurence;

ALTER TABLE Goods_location ADD
ValidFrom DATETIME2 GENERATED ALWAYS AS ROW START HIDDEN
    CONSTRAINT DF_Goods_location_ValidFrom DEFAULT SYSUTCDATETIME(),
ValidTo DATETIME2 GENERATED ALWAYS AS ROW END HIDDEN
    CONSTRAINT DF_Goods_Location_ValidTo DEFAULT CONVERT(DATETIME2, '9999-12-31 23:59:59.9999999'),
PERIOD FOR SYSTEM_TIME(ValidFrom, ValidTo);
GO

ALTER TABLE Goods_location
    SET (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.Goods_location_History));
GO

SELECT * FROM Goods_location;

UPDATE Goods_location SET room = N'303' WHERE id = 1;
SELECT * FROM Goods_location;
SELECT * FROM Goods_location_History;


USE insurence;
GO

CREATE OR ALTER PROCEDURE dbo.sp_GetCoupon
    @Id INT = NULL,
    @TermOfInsuranceMonths INT = NULL,
    @PageSize INT = 20,
    @PageNumber INT = 1,
    @SortColumn NVARCHAR(128) = 'id',
    @SortDirection BIT = 0
AS
BEGIN
    SELECT id, term_of_insurence_months, location_of_coupon, goods_id
    FROM Coupon
    WHERE (@Id IS NULL OR id = @Id)
      AND (@TermOfInsuranceMonths IS NULL OR term_of_insurence_months = @TermOfInsuranceMonths)
    ORDER BY
        CASE WHEN @SortDirection = 0 THEN
            CASE @SortColumn
                WHEN 'id' THEN CAST(id AS NVARCHAR)
                WHEN 'term_of_insurence_months' THEN CAST(term_of_insurence_months AS NVARCHAR)
            END
        END ASC,
        CASE WHEN @SortDirection = 1 THEN
            CASE @SortColumn
                WHEN 'id' THEN CAST(id AS NVARCHAR)
                WHEN 'term_of_insurence_months' THEN CAST(term_of_insurence_months AS NVARCHAR)
            END
        END DESC
    OFFSET (@PageNumber - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
GO

CREATE OR ALTER PROCEDURE dbo.sp_GetGoods
    @Id INT = NULL,
    @Name NVARCHAR(255) = NULL,
    @PageSize INT = 20,
    @PageNumber INT = 1,
    @SortColumn NVARCHAR(128) = 'id',
    @SortDirection BIT = 0
AS
BEGIN
    SELECT id, name_of_goods, inventory_number, price, date_of_purchase, supplier_id, goods_location_id
    FROM Goods
    WHERE (@Id IS NULL OR id = @Id)
      AND (@Name IS NULL OR name_of_goods LIKE @Name + '%')
    ORDER BY
        CASE WHEN @SortDirection = 0 THEN
            CASE @SortColumn
                WHEN 'id' THEN CAST(id AS NVARCHAR)
                WHEN 'name_of_goods' THEN name_of_goods
            END
        END ASC,
        CASE WHEN @SortDirection = 1 THEN
            CASE @SortColumn
                WHEN 'id' THEN CAST(id AS NVARCHAR)
                WHEN 'name_of_goods' THEN name_of_goods
            END
        END DESC
    OFFSET (@PageNumber - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
GO

-- Названо так тому що sp_GetGoodsLocation видавало помилку
CREATE OR ALTER PROCEDURE dbo.sp_GetGoodsLoc
    @Id INT = NULL,
    @Corps NVARCHAR(255) = NULL,
    @PageSize INT = 20,
    @PageNumber INT = 1,
    @SortColumn NVARCHAR(128) = 'id',
    @SortDirection BIT = 0
AS
BEGIN
    SELECT id, corps, floor_location, room
    FROM Goods_location
    WHERE (@Id IS NULL OR id = @Id)
      AND (@Corps IS NULL OR corps LIKE @Corps + '%')
    ORDER BY
        CASE WHEN @SortDirection = 0 THEN
            CASE @SortColumn
                WHEN 'id' THEN CAST(id AS NVARCHAR)
                WHEN 'corps' THEN corps
            END
        END ASC,
        CASE WHEN @SortDirection = 1 THEN
            CASE @SortColumn
                WHEN 'id' THEN CAST(id AS NVARCHAR)
                WHEN 'corps' THEN corps
            END
        END DESC
    OFFSET (@PageNumber - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
GO

CREATE OR ALTER PROCEDURE dbo.sp_GetSupplier
    @Id INT = NULL,
    @Name NVARCHAR(255) = NULL,
    @PageSize INT = 20,
    @PageNumber INT = 1,
    @SortColumn NVARCHAR(128) = 'id',
    @SortDirection BIT = 0
AS
BEGIN
    SELECT id, name, location, contact_info
    FROM Supplier
    WHERE (@Id IS NULL OR id = @Id)
      AND (@Name IS NULL OR name LIKE @Name + '%')
    ORDER BY
        CASE WHEN @SortDirection = 0 THEN
            CASE @SortColumn
                WHEN 'id' THEN CAST(id AS NVARCHAR)
                WHEN 'name' THEN name
            END
        END ASC,
        CASE WHEN @SortDirection = 1 THEN
            CASE @SortColumn
                WHEN 'id' THEN CAST(id AS NVARCHAR)
                WHEN 'name' THEN name
            END
        END DESC
    OFFSET (@PageNumber - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;
GO

EXEC dbo.sp_GetCoupon;

EXEC dbo.sp_GetCoupon @SortColumn = 'term_of_insurence_months', @SortDirection = 0;

EXEC dbo.sp_GetCoupon @PageSize = 5, @PageNumber = 2;


EXEC dbo.sp_GetGoods;

EXEC dbo.sp_GetGoods @Name = 'Laptop', @SortColumn = 'name_of_goods', @SortDirection = 1;

EXEC dbo.sp_GetGoods @PageSize = 10, @PageNumber = 1;


EXEC dbo.sp_GetGoodsLoc;

EXEC dbo.sp_GetGoodsLoc @Corps = 'A', @SortColumn = 'corps', @SortDirection = 0;


EXEC dbo.sp_GetSupplier;

EXEC dbo.sp_GetSupplier @Name = 'Tech Supplier Co.', @SortColumn = 'name', @SortDirection = 1;

EXEC dbo.sp_GetSupplier @PageSize = 3, @PageNumber = 2;



USE insurence;
GO

CREATE OR ALTER PROCEDURE dbo.sp_SetCoupon
@id INT = NULL OUTPUT,
@term_of_insurence_months INT = NULL,
@location_of_coupon NVARCHAR(255) = NULL,
@goods_id INT = NULL
AS
BEGIN

    IF @id IS NULL AND @location_of_coupon IS NULL OR @location_of_coupon = ''
    BEGIN
        PRINT 'location_of_coupon cannot be an empty string.';
        RETURN;
    END

    IF @id IS NULL AND @term_of_insurence_months IS NULL OR @term_of_insurence_months < 0
    BEGIN
        PRINT 'Invalid value of @term_of_insurence_months';
        RETURN;
    END

    BEGIN TRY
        IF @id IS NULL
        BEGIN
            SET @id = 1 + (SELECT ISNULL(MAX(id), 0) FROM dbo.Coupon);

            INSERT dbo.Coupon (id, term_of_insurence_months, location_of_coupon, goods_id)
            VALUES (@id, @term_of_insurence_months, @location_of_coupon, @goods_id);
        END
        ELSE
            UPDATE dbo.Coupon
            SET term_of_insurence_months = ISNULL(@term_of_insurence_months, term_of_insurence_months),
                location_of_coupon = ISNULL(NULLIF(@location_of_coupon, ''), location_of_coupon),
                goods_id = ISNULL(@goods_id, goods_id)
            WHERE id = @id;
    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE();
    END CATCH
END;

GO

CREATE OR ALTER PROCEDURE dbo.sp_SetGoods
@id INT = NULL OUTPUT,
@name_of_goods NVARCHAR(255) = NULL,
@inventory_number NVARCHAR(255) = NULL,
@price FLOAT = NULL,
@date_of_purchase DATE = NULL,
@supplier_id INT = NULL,
@goods_location_id INT = NULL
AS
BEGIN
    
    IF @id IS NULL AND @price IS NULL OR @price < 0
    BEGIN
        PRINT 'Price cannot be negative.';
        RETURN;
    END

    IF @id IS NULL AND @inventory_number IS NULL OR @inventory_number = ''
    BEGIN
        PRINT 'inventory_number cannot be an empty string.';
        RETURN;
    END

    IF @id IS NULL AND @name_of_goods IS NULL OR @name_of_goods = ''
    BEGIN
        PRINT 'Invalid value of @name_of_goods';
        RETURN;
    END

	IF @id IS NULL AND @date_of_purchase IS NULL OR @date_of_purchase = ''
    BEGIN
        PRINT 'Invalid value of @date_of_purcase';
        RETURN;
    END

    BEGIN TRY
        IF @id IS NULL
        BEGIN
            SET @id = 1 + (SELECT ISNULL(MAX(id), 0) FROM dbo.Goods);

            INSERT dbo.Goods (id, name_of_goods, inventory_number, price, date_of_purchase, supplier_id, goods_location_id)
            VALUES (@id, @name_of_goods, @inventory_number, @price, @date_of_purchase, @supplier_id, @goods_location_id);
        END
        ELSE
            UPDATE dbo.Goods
            SET name_of_goods = ISNULL(NULLIF(@name_of_goods, ''), name_of_goods),
                inventory_number = ISNULL(NULLIF(@inventory_number, ''), inventory_number),
                price = ISNULL(@price, price),
                date_of_purchase = ISNULL(@date_of_purchase, date_of_purchase),
                supplier_id = ISNULL(@supplier_id, supplier_id),
                goods_location_id = ISNULL(@goods_location_id, goods_location_id)
            WHERE id = @id;
    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE();
    END CATCH
END;

GO

CREATE OR ALTER PROCEDURE dbo.sp_SetGoodsLocation
@id INT = NULL OUTPUT,
@corps NVARCHAR(255) = NULL,
@floor_location INT = NULL,
@room NVARCHAR(55) = NULL
AS
BEGIN
  
    IF @id IS NULL AND @floor_location IS NULL OR  @floor_location < 0
    BEGIN
        PRINT 'floor_location cannot be negative.';
        RETURN;
    END

    IF @id IS NULL AND @room IS NULL OR @room = ''
    BEGIN
        PRINT 'room cannot be an empty string.';
        RETURN;
    END

    IF @id IS NULL AND @corps IS NULL OR @corps = ''
    BEGIN
        PRINT 'Invalid value of @corps';
        RETURN;
    END

    BEGIN TRY
        IF @id IS NULL
        BEGIN
            SET @id = 1 + (SELECT ISNULL(MAX(id), 0) FROM dbo.Goods_location);

            INSERT dbo.Goods_location (id, corps, floor_location, room)
            VALUES (@id, @corps, @floor_location, @room);
        END
        ELSE
            UPDATE dbo.Goods_location
            SET corps = ISNULL(NULLIF(@corps, ''), corps),
                floor_location = ISNULL(@floor_location, floor_location),
                room = ISNULL(NULLIF(@room, ''), room)
            WHERE id = @id;
    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE();
    END CATCH
END;

GO

CREATE OR ALTER PROCEDURE dbo.sp_SetSupplier
@id INT = NULL OUTPUT,
@name NVARCHAR(255) = NULL,
@location NVARCHAR(255) = NULL,
@contact_info NVARCHAR(255) = NULL
AS
BEGIN

      IF @id IS NULL AND @location IS NULL OR @location = ''
    BEGIN
        PRINT 'location cannot be an empty string.';
        RETURN;
    END
    IF @id IS NULL AND @contact_info IS NULL OR @contact_info = ''
    BEGIN
        PRINT 'contact_info cannot be an empty string.';
        RETURN;
    END

    IF @id IS NULL AND @name IS NULL OR @name = ''
    BEGIN
        PRINT 'Invalid value of @name';
        RETURN;
    END

    BEGIN TRY
        IF @id IS NULL
        BEGIN
            SET @id = 1 + (SELECT ISNULL(MAX(id), 0) FROM dbo.Supplier);

            INSERT dbo.Supplier (id, name, location, contact_info)
            VALUES (@id, @name, @location, @contact_info);
        END
        ELSE
            UPDATE dbo.Supplier
            SET name = ISNULL(NULLIF(@name, ''), name),
                location = ISNULL(NULLIF(@location, ''), location),
                contact_info = ISNULL(NULLIF(@contact_info, ''), contact_info)
            WHERE id = @id;
    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE();
    END CATCH
END;

GO

CREATE OR ALTER PROCEDURE dbo.sp_SetRepair
@id INT = NULL OUTPUT,
@date DATE = NULL,
@description_of_problem NVARCHAR(255) = NULL,
@coupon_id INT = NULL
AS
BEGIN

   	  IF @id IS NULL AND @description_of_problem IS NULL OR @description_of_problem = ''
    BEGIN
        PRINT 'Invalid value of @description_of_problem';
        RETURN;
    END

	  IF @id IS NULL AND @date IS NULL OR @date = ''
    BEGIN
        PRINT 'Invalid value of @date';
        RETURN;
    END

    BEGIN TRY
        IF @id IS NULL
        BEGIN
    
            SET @id = 1 + (SELECT ISNULL(MAX(id), 0) FROM dbo.Repair);

            INSERT INTO dbo.Repair (id, date, description_of_problem, coupon_id)
            VALUES (@id, @date, @description_of_problem, @coupon_id);
        END
        ELSE
        BEGIN
       
            UPDATE dbo.Repair
            SET date = ISNULL(@date, date),
                description_of_problem = ISNULL(NULLIF(@description_of_problem, ''), description_of_problem),
                coupon_id = ISNULL(@coupon_id, coupon_id)
            WHERE id = @id;

            IF @@ROWCOUNT = 0
            BEGIN
                PRINT 'No record found with the given ID.';
                RETURN;
            END
        END
    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE();
    END CATCH
END;

GO

-- CASE 1: Valid data for all fields
DECLARE @coupon_id INT;
EXEC dbo.sp_SetCoupon @id = NULL, @term_of_insurence_months = 24, @location_of_coupon = N'Папка А', @goods_id = 2;
SELECT @coupon_id;

-- CASE 2: Negative term_of_insurence_months (should fail)
EXEC dbo.sp_SetCoupon @id = NULL, @term_of_insurence_months = -6, @location_of_coupon = N'Папка Б', @goods_id = 3;
SELECT @coupon_id;

-- CASE 3: Empty location_of_coupon (should fail)
EXEC dbo.sp_SetCoupon @id = NULL, @term_of_insurence_months = 12, @location_of_coupon = '', @goods_id = 1;
SELECT @coupon_id;

-- CASE 4: Valid data for Goods
DECLARE @goods_id INT;
EXEC dbo.sp_SetGoods @id = NULL, @name_of_goods = N'Смартфон', @inventory_number = 'ІНВ150', @price = 800.00, @date_of_purchase = '2024-06-20', @supplier_id = 2, @goods_location_id = 3;
SELECT @goods_id;

-- CASE 5: Negative price for Goods (should fail)
EXEC dbo.sp_SetGoods @id = NULL, @name_of_goods = N'Сканер', @inventory_number = 'ІНВ151', @price = -200.00, @date_of_purchase = '2024-06-21', @supplier_id = 1, @goods_location_id = 4;
SELECT @goods_id;

-- CASE 6: Empty name_of_goods (should fail)
EXEC dbo.sp_SetGoods @id = NULL, @name_of_goods = '', @inventory_number = 'ІНВ152', @price = 300.00, @date_of_purchase = '2024-06-22', @supplier_id = 2, @goods_location_id = 5;
SELECT @goods_id;

-- CASE 7: Valid data for GoodsLocation
DECLARE @goods_location_id INT;
EXEC dbo.sp_SetGoodsLocation @id = NULL, @corps = N'Адміністративний корпус', @floor_location = 2, @room = '204';
SELECT @goods_location_id;

-- CASE 8: Negative floor_location (should fail)
EXEC dbo.sp_SetGoodsLocation @id = NULL, @corps = N'Лабораторний корпус', @floor_location = -1, @room = '101';
SELECT @goods_location_id;

-- CASE 9: Empty corps (should fail)
EXEC dbo.sp_SetGoodsLocation @id = NULL, @corps = '', @floor_location = 1, @room = '102';
SELECT @goods_location_id;

-- CASE 10: Valid update for Coupon
EXEC dbo.sp_SetCoupon @id = 1, @term_of_insurence_months = 18, @location_of_coupon = N'Папка В', @goods_id = 2;
SELECT @coupon_id;

-- CASE 11: Negative term_of_insurence_months for Coupon (should fail)
EXEC dbo.sp_SetCoupon @id = 1, @term_of_insurence_months = -12, @location_of_coupon = N'Папка Г', @goods_id = 3;
SELECT @coupon_id;

-- CASE 12: Empty location_of_coupon for Coupon (should fail)
EXEC dbo.sp_SetCoupon @id = 1, @term_of_insurence_months = 24, @location_of_coupon = '', @goods_id = 4;
SELECT @coupon_id;

-- CASE 13: Valid update for Goods
EXEC dbo.sp_SetGoods @id = 1, @name_of_goods = N'Принтер', @inventory_number = 'ІНВ160', @price = 450.00, @date_of_purchase = '2024-07-15', @supplier_id = 3, @goods_location_id = 6;
SELECT @goods_id;

-- CASE 14: Update with negative price for Goods (should fail)
EXEC dbo.sp_SetGoods @id = 1, @price = -300.00;
SELECT @goods_id;

-- CASE 15: Update with empty name_of_goods (should fail)
EXEC dbo.sp_SetGoods @id = 1, @name_of_goods = '';
SELECT @goods_id;

-- CASE 16: Valid update for GoodsLocation
EXEC dbo.sp_SetGoodsLocation @id = 1, @corps = N'Основний корпус', @floor_location = 5, @room = '501';
SELECT @goods_location_id;

-- CASE 17: Update with negative floor_location for GoodsLocation (should fail)
EXEC dbo.sp_SetGoodsLocation @id = 1, @floor_location = -2;
SELECT @goods_location_id;

-- CASE 18: Update with empty corps for GoodsLocation (should fail)
EXEC dbo.sp_SetGoodsLocation @id = 1, @corps = '';
SELECT @goods_location_id;

-- CASE 19: Valid update for Supplier
DECLARE @supplier_id INT;
EXEC dbo.sp_SetSupplier @id = 1, @name = N'Новий Постачальник', @location = N'Львів', @contact_info = '987-654-3210';
SELECT @supplier_id;

-- CASE 20: Update with empty name for Supplier (should fail)
EXEC dbo.sp_SetSupplier @id = 1, @name = '';
SELECT @supplier_id;

-- Case 21: Valid data for new repair
DECLARE @repair_id INT;
EXEC dbo.sp_SetRepair @id = NULL, @date = '2024-12-20', @description_of_problem = N'Замінити батарею', @coupon_id = 1

-- Case 22: Missing date (should fail)
EXEC dbo.sp_SetRepair @id = NULL, @date = NULL, @description_of_problem = N'Замінити дисплей', @coupon_id = 2;

-- Case 23: Empty description_of_problem (should fail)
EXEC dbo.sp_SetRepair @id = NULL, @date = '2024-12-21', @description_of_problem = '', @coupon_id = 3;

-- Case 24: Valid update to existing repair
EXEC dbo.sp_SetRepair @id = 1, @date = '2024-12-25', @description_of_problem = N'Додаткове обслуговування', @coupon_id = 4;

-- Case 25: Update with NULL values (should keep existing values)
EXEC dbo.sp_SetRepair @id = 1, @date = NULL, @description_of_problem = NULL, @coupon_id = NULL;

-- Case 26: Update non-existent ID (should print error message)
EXEC dbo.sp_SetRepair @id = 999, @date = '2024-12-31', @description_of_problem = N'Невідомий ремонт', @coupon_id = 5;

-- Case 27: Valid data for new repair with NULL coupon_id
EXEC dbo.sp_SetRepair @id = NULL, @date = '2024-12-22', @description_of_problem = N'Перевірка системи', @coupon_id = NULL;


use insurence;
GO

CREATE OR ALTER PROCEDURE dbo.sp_PurchaseGoods
@term_of_insurence_months INT,
@location_of_coupon NVARCHAR(255),
@name_of_goods NVARCHAR(255),
@inventory_number NVARCHAR(255),
@price FLOAT,
@date_of_purchase DATE,
@supplier_id INT,
@goods_location_id INT,
@CouponId INT = NULL OUTPUT,
@GoodsId INT = NULL OUTPUT
AS
BEGIN
    BEGIN TRY

        EXEC dbo.sp_SetGoods
            @id = NULL,
            @name_of_goods = @name_of_goods,
            @inventory_number = @inventory_number,
            @price = @price,
            @date_of_purchase = @date_of_purchase,
            @supplier_id = @supplier_id,
            @goods_location_id = @goods_location_id,
            @id = @GoodsId OUTPUT;


        EXEC dbo.sp_SetCoupon
            @id = NULL,
            @term_of_insurence_months = @term_of_insurence_months,
            @location_of_coupon = @location_of_coupon,
            @goods_id = @GoodsId,
            @id = @CouponId OUTPUT;

        PRINT 'Coupon and Goods created successfully.'
    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE();
        THROW;
    END CATCH
END

GO

CREATE OR ALTER PROCEDURE dbo.sp_MoveGoods
@GoodsId INT,
@NewLocationId INT
AS
BEGIN
    BEGIN TRY
        IF @GoodsId IS NULL OR @NewLocationId IS NULL
        BEGIN
            PRINT 'Invalid GoodsId or NewLocationId.'
            RETURN;
        END

        UPDATE dbo.Goods
        SET goods_location_id = @NewLocationId
        WHERE id = @GoodsId;

        PRINT 'Goods location updated successfully.'
    END TRY
    BEGIN CATCH
        PRINT ERROR_MESSAGE();
        THROW;
    END CATCH
END

