create or alter procedure add_buy @pidBuy int,@pidClient int,@ppersonalized bit,@pidEmployee int
	as begin 
	insert into buy(idBuy,idClient,amount, personalized,idEmployee)
	values(@pidBuy,@pidClient,0,@ppersonalized,@pidEmployee)

	end

create or alter procedure price_buy @pidBuy int,@pidProduct int 
	as begin 
	insert into buyXproducts(idBuy,idProduct)
	values(@pidBuy,@pidProduct)

	end

create or alter procedure facturation 
	as begin 
	update set idbuy,name,price from buyXproducts inner join furniture on idProduct = idFurniture
	end
