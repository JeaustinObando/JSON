---Cree un procedimiento que genere el pedido personalizado de un cliente

create or alter procedure generateOrderPersonalized @idBuy int, @idClient int, @idEmployee int, @alterations varchar(max)
as 

if exists (select idClient from JsonBIT.dbo.client where idClient = @idClient)
	if exists (select idEmployee from JsonBIT.dbo.employee where idEmployee = @idEmployee)
		if not exists (select idBuy from buy where idBuy = @idBuy)
			begin
				insert into JsonDB.dbo.buy(idBuy, idClient, amount, personalized, idEmployee)
				values (@idBuy, @idClient, 0, 1, @idEmployee)

				insert into JsonDB.dbo.alterationsBuy(idBuy, name, details)
				select * from openjson(@alterations)
				with (
				idBuy int,
				name varchar(20),
				details varchar(50))
			end
		else
			begin 
				print 'error'
			end


exec generateOrderPersonalized 1, 1, 1, '{"idBuy":"1","name":"color", "details":"purple"}'
