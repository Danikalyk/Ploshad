create table Categories(
	Category_ID int primary key identity(1,1),
	Category_Name varchar(100) not null
)

create table Product(
	Product_ID int primary key identity(1,1),
	Product_Name varchar(100) not null,
	Product_Ed_Price money not null,
	Product_Description text not null
)

create table ProductCategoryReferences(
	Product int references Product(Product_ID),
	Category int references Categories(Category_ID),
	primary key (Product, Category)
)

insert into Categories (Category_Name) values ('Продовльственные')
insert into Categories (Category_Name) values ('Непродовльственные')
insert into Categories (Category_Name) values ('Бытовая химия')
insert into Categories (Category_Name) values ('Злаковые')
insert into Categories (Category_Name) values ('Молочные')
insert into Categories (Category_Name) values ('Товары для дома')
insert into Categories (Category_Name) values ('Косметика')

insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('Молоко', 100, 'Прямо из под коровки')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('Fairy', 120, 'Ототрёт даже воспоминания о бывшей')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('Хлеб', 33, 'Всему голова')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('Велосипед', 10000, 'Зачем изобреть его заново?')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('Лопата', 550, 'Не продавать рыжим')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('Oriflame', 10, 'Здравствуйте, не желаете приобрести нашу продукцию?')

insert into ProductCategoryReferences (Product, Category) values (1,1)
insert into ProductCategoryReferences (Product, Category) values (1,5)
insert into ProductCategoryReferences (Product, Category) values (2,2)
insert into ProductCategoryReferences (Product, Category) values (2,3)
insert into ProductCategoryReferences (Product, Category) values (3,1)
insert into ProductCategoryReferences (Product, Category) values (3,4)
insert into ProductCategoryReferences (Product, Category) values (5,2)
insert into ProductCategoryReferences (Product, Category) values (5,6)
insert into ProductCategoryReferences (Product, Category) values (6,2)
insert into ProductCategoryReferences (Product, Category) values (6,7)

SELECT Product.Product_Name, Product.Product_Ed_Price, Categories.Category_Name
FROM     Product LEFT JOIN
                  ProductCategoryReferences ON Product.Product_ID = ProductCategoryReferences.Product LEFT JOIN
                  Categories ON ProductCategoryReferences.Category = Categories.Category_ID