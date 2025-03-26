-- Создание, запись, обновление и удаление данных

create database TestDB; -- создание базы данных

create table if not exists  -- создать таблицу, если не создана
	TestDB.TestTable1 ( 
	ID integer primary key not null auto_increment, -- первичный ключ заполняется автоматически 
	Name varchar (6) default "Produrct", -- по дефолту, если не введено значение, заполяется как продукт
	Weight integer check(Weight > 0) ); -- проверка на дурака, что вес больше 0


insert into  TestDB.TestTable1 (Name, Weight)
	values ('Auto', 200000); -- добавляет только одну строку 
    
update TestDB.TestTable1  -- обновиться данные
set Name = 'ball' -- запиши в столбец с именем .. новые данные ..
where ID = 2; -- строку выбери ту, в которой выполняется условие ID = 
    
select * from TestDB.TestTable1;
        
update TestDB.TestTable1  -- обновиться данные
set Weight = 20 -- запиши в столбец с именем .. новые данные ..
where Name = "AUTO"; -- строку выбери ту, в которой выполняется условие Name = 
    
alter table testdb.goods
	add price integer default 0; -- добавление солбца со значением по умолчанию 

alter table testdb.goods
	modify price decimal (8,2);  -- изменение типа данных в стоблце
    
alter table testdb.goods
	change column price item_price int; -- переименоварие столбца

create view TestDB.V_table1 as -- создание вьюхи (витрины данных) для дашбордов
select * from TestDB.TestTable1;
    
delete from TestDB.TestTable1 -- удаление строки по условию
where ID = 3;

truncate testdb.testtable -- удалить все данные в таблице, а потом дропнуть через контекстное меню в схеме
