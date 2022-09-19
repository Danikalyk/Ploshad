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

insert into Categories (Category_Name) values ('����������������')
insert into Categories (Category_Name) values ('������������������')
insert into Categories (Category_Name) values ('������� �����')
insert into Categories (Category_Name) values ('��������')
insert into Categories (Category_Name) values ('��������')
insert into Categories (Category_Name) values ('������ ��� ����')
insert into Categories (Category_Name) values ('���������')

insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('������', 100, '����� �� ��� �������')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('Fairy', 120, '������ ���� ������������ � ������')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('����', 33, '����� ������')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('���������', 10000, '����� �������� ��� ������?')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('������', 550, '�� ��������� �����')
insert into Product (Product_Name, Product_Ed_Price, Product_Description) values ('Oriflame', 10, '������������, �� ������� ���������� ���� ���������?')

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