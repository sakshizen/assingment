create table Product(
ProductId int not null primary key identity(1,1),
	Description varchar(30) not null unique ,
	SetQty int not null,
	check (SetQty=1 or SetQty=5 or SetQty=10  ),
	Rate decimal(10,2)
		)

	insert into Product values('BMW-its a car',1,1200000)
	
	insert into Product values('Scorpio-its a car',2,700000)

	insert into Product values('celerio-its a car',3,600000)

	insert into Product values('Tata altroz-its a car',2,947000)
	
	insert into Product values('Hyundai Creta-its a car',1,999000)

	insert into Product values('kia seltos-its a car',2,120000)
	
	insert into Product values('toyota Fortuner-its a car',2,170000)

	insert into Product values('Tata Nexon-its a car',3,800000)

	insert into Product values('MG-Hector-its a car',2,184700)
	
	insert into Product values('Tata harrier-its a car',1,139900)



	--Que 2--Update all the rates with 10% rate hike. 

	UPDATE product SET Rate = Rate*1.1
    from Product

	--Que 3--Delete last record by providing the ProductID. 

	DELETE FROM Product
	WHERE ProductId=10

	--Que 4--Alter the above table and add the following column. 

	alter table Product 
add MarginCode char(1)
check (MarginCode='A' or MarginCode='B' or MarginCode=null)

update Product
set MarginCode='A'
where ProductId<3

update Product
set MarginCode='B'
where ProductId>4

select * from Product

use WFA3DotNet