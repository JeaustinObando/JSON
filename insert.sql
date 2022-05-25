use JsonBIT
--inserts typeFurniture
insert into typeFurniture(idTypeFurniture,jsonTypeFurniture)
values (1,'{"idTypeFurniture":1,"name":"Armchairs","details":"living room item"}')

insert into typeFurniture(idTypeFurniture,jsonTypeFurniture)
values (2,'{"idTypeFurniture":2,"name":"Table","details":"Kitchen item"}')

insert into typeFurniture(idTypeFurniture,jsonTypeFurniture)
values (3,'{"idTypeFurniture":3,"name":"Chair","details":"Table item"}')

--inserts furniture
insert into furniture(idFurniture,jsonType)
values (1,'{"idFurniture":1,"name":"Armchair","space":3,"material":"leather","pieces":3,"typeFurniture":1,"price":150000,"inventory":1500}')

insert into furniture(idFurniture,jsonType)
values (2,'{"idFurniture":2,"name":"Table","space":4,"material":"wood","pieces":4,"typeFurniture":2,"price":350000,"inventory":150}')

insert into furniture(idFurniture,jsonType)
values (3,'{"idFurniture":3,"name":"Chair","space":1,"material":"wood","pieces":1,"typeFurniture":3,"price":200000,"inventory":450}')

delete from furniture
--inserts clients
insert into client(idClient,jsonClient)
values (1,'{"idClient":1,"name":"Joshua", "firstLastName":"Morris","secondLastName":"Smith",
"address":"1850 West 400 South Pingree, ID 83262 USA","idPayMethod":1}')

insert into client(idClient,jsonClient)
values (2,'{"idClient":2,"name":"Amanda", "firstLastName":"Wiggins","secondLastName":"Ortiz",
"address":"795 County Road 732 Jonesboro, AR 72401 USA","idPayMethod":2}')

insert into client(idClient,jsonClient)
values (3,'{"idClient":3,"name":"Annette", "firstLastName":"Chase","secondLastName":"Aguirre",
"address":"11291 Maybrook Avenue Whittier, CA 90603 USA","idPayMethod":3}')

insert into client(idClient,jsonClient)
values (4,'{"idClient":4,"name":"Edward ", "firstLastName":"Martin","secondLastName":"Myers",
"address":"8261 Prospect Way Juneau, AK 99801 USA","idPayMethod":4}')

delete from client
select * from client
---inserts Type
use JsonBIT
insert into type_employee (idTypeEmployee,jsonTypeEmployee)
values
(1,'{"idTypeEmployee":1,"name":"Customer"}')

insert into type_employee (idTypeEmployee,jsonTypeEmployee)
values
(2,'{"idTypeEmployee":2,"name":"Billing"}')

insert into type_employee (idTypeEmployee,jsonTypeEmployee)
values
(3,'{"idTypeEmployee":3,"name":"Manufacturing"}')
delete from type_employee
select * from type_employee
--inserts employees
insert into employee(idEmployee,jsonEmployee)
values(1,'{"idEmployee":1,"name":"Stella","firstLastName":"Grey","SecondLastName":"Jhonson","identificationCard":"01-0548-0704","idTypeEmployee":1,"address":"Seattle, Washingthon DC","birthday":"12-01-1980"}')

insert into employee(idEmployee,jsonEmployee)
values(2,'{"idEmployee":2,"name":"Stela","firstLastName":"Grey","SecondLastName":"Jhonson","identificationCard":"01-0548-0704","idTypeEmployee":1,"address":"Seattle, Washingthon DC","birthday":"12-01-1980"}')



insert into employee(idEmployee,jsonEmployee)
values(3,'{"idEmployee":3,"name":"Stellita","firstLastName":"Grey","SecondLastName":"Jhonson","identificationCard":"01-0548-0704","idTypeEmployee":1,"address":"Seattle, Washingthon DC","birthday":"12-01-1980"}')



insert into employee(idEmployee,jsonEmployee)

values (2,'{"idEmployee":2,"name":"Alberto","firstLastName":"Perez","SecondLastName":"Quiros","identificationCard":"4397"
,"idTypeEmployee":2,"address":"100m Norte de Cementerio Alajuela","birthday":"01/01/1998"}')

insert into employee(idEmployee,jsonEmployee)
values (3,'{"idEmployee":3,"name":"Juan","firstLastName":"Rodrigues","SecondLastName":"Alvarez","identificationCard":"2525"
,"idTypeEmployee":3,"address":"150m sur, 75m oeste, Bomberos Grecia","birthday":"10/20/2001"}')

delete from employee
--inserts paymethods

use JsonDB
insert into Paymethod(idPayMethod, nameOwner, number, securityNumber, dueDate)
values (1, 'Joshua Morris Smith', '2342-2464-0593-3021', '291', '03/02/2030')

insert into PayMethod(idPayMethod, nameOwner, number, securityNumber, dueDate)
values (2, 'Amanda Wiggins Ortiz', '4922-2138-1289-5473', '456', '09/15/2029')

insert into PayMethod(idPayMethod, nameOwner, number, securityNumber, dueDate)
values (3, 'Annete Chase Aguirre', '4395-2382-2389-2932', '983', '01/20/2028')

insert into PayMethod(idPayMethod, nameOwner, number, securityNumber, dueDate)
values (4, 'Edward Martin Myers', '8922-1722-3891-1138', '239', '10/31/2033')



