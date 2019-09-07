create table VEHICLE_TYPE
(make /* Make of a vehicle */ varchar(10) not null,
model /* Model of a vehicle */ varchar(10) not null,
power /* Motive power (petrol, gas, diesel) */ char(1)
      constraint check_power check (power in ('p','g','d')),
no_pass /* Number of passengers */ integer
      constraint check_pass check (no_pass between 0 and 6),
cap /* Capacity */ float
      constraint check_cap check (cap >= 0),
cc /* Volume of the motor */ integer
      constraint check_cc check (cc >= 0),
primary key (make,model));

create table OWNER
(dr_lic /* Driver's licence number */ char(8) not null primary key,
IRD /* IRD number of the owner */ char(8),
fname /* Owner's first name */ varchar(15) not null,
init /* Middle initial */ char(1),
lname /* Owner's last name */ varchar(15) not null,
address /* Owner's address */ varchar(30) not null,
bdate /* Owner's birthdate */ date,
sex /* Owner's sex */ char(1),
employer varchar(30),
phone /* Owner's phone number */ varchar(15));

create table EMPLOYEE
(fname /* Employee's first name */ varchar(15) not null,
init /* Employee's middle initial */ char(1),
lname /* Employee's last name */ varchar(15) not null,
IRD /* Employee's IRD number */ varchar(10) not null primary key,
sex /* Employee's sex */ char(1)
       constraint check_sex check (sex in ('f','m','F','M')),
bdate /* Employee's birthdate */ date,
office /* Employee's office */ varchar(5),
reg_org /* The number of the registration office the employee works for */
        varchar(10),
sdate /* Starting date in the organization */ date);

create table REG_ORG
(org_number /* The number of the registration organization */ varchar(10)
            not null primary key,
street /* Street name */ varchar(15) not null,
st_num /* Number in the street */ varchar(6) not null,
city /* City */ varchar(15) not null,
manager /* The manager's IRD number */ varchar(10) references employee);



create table VEHICLE
(plates /* Plate number */ varchar(6) not null primary key,
year /* Year of manufacture */ char(4)
      constraint check_year check (year between '1900' and '2011'),
eng_no /* Engine number */ varchar(9) not null unique,
ch_no /* Chassis number */ varchar(7) not null unique,
type /* Type of the vehicle (taxi, private, truck, ...) */ char(1)
      constraint check_type check (type in ('p','m','t','r','l')),
make /* Make of a vehicle */ varchar(10),
model /* Model of a vehicle */ varchar(10),
foreign key (make,model) references vehicle_type);

create table OWNS
(plates /* Owner's plates number */ varchar(6) not null references vehicle,
ownerid /* Owner's id number */ char(8) not null references owner,
purchase_date /* The date of purchase */ date,
drr /* The mileage */ char(6),
DateSold /* The date the vehicle was sold */ date default null,
primary key (plates,ownerid));

create table COLOR
(plates /* The plate number */ varchar(6) not null references vehicle,
color /* Color of the vehicle */ varchar(10) not null,
primary key (plates,color));

create table REGISTRATION
(plates /* Plates */ varchar(6) not null references vehicle,
emp /* IRD of the employee who registered the vehicle */ varchar(10) not null references employee,
reg_org /* Organization number */ varchar(10) not null references reg_org,
reg_date /* Registration date */ date not null,
country /* The country */ varchar(10),
drr /* mileage */ char(6),
amount /* the price */ number,
primary key (plates,emp,reg_org,reg_date));







select distinct type
from vehicle;

select vehicle.plates, make, model
from vehicle, registration
where vehicle.plates = registration.plates and country = 'Japan';

select vehicle.plates, fname, lname
from owner, vehicle, owns
where vehicle.plates = owns.plates and owns.ownerid = owner.dr_lic and datesold is null ;

select vehicle.plates, year, eng_no, ch_no, type, make, model
from vehicle join registration in vehicle.plates = registration.plates
where reg_date =






select * from registration;

create view MULTIREG
as select REG_ORG.org_number, M1.lname, M1.fname, count(*) as No_Emp
from REG_ORG , EMPLOYEE M1, EMPLOYEE M2
where REG_ORG.org_number = M2.reg_org and reg_org.manager = M1.IRD
group by REG_ORG.org_number, M1.lname, M1.fname;


drop VIEW MULTIREG;
select * from MULTIREG;

update MULTIREG
set fname = 'John' , lname = 'Right'
where org_number = 1303;


select * from VEHICLE
where plates in (select plates from REGISTRATION where reg_date between '01-JUL-2011' and '31-JUL-2011');





select vehicle.plates, make, model
from vehicle join REGISTRATION on vehicle.plates = REGISTRATION.plates
where country = 'Japan' and reg_date >= '01/JAN/1985'
and vehicle.plates in (select plates from REGISTRATION group by plates having count(*) < 3);



select fname, lname
from OWNER join OWNS on dr_lic = ownerid
where datesold is null
group by fname, lname, ownerid
having count(*) > 1;

update

select plates from REGISTRATION group by plates having count(*) < 3;





select vehicle.plates, make, model, count(*) as No_regs
from vehicle, registration R1, registration R2
where R1.plates = vehicle.plates and R1.country = 'Japan' and R1. reg_date>'01-jan-85'
and R1.plates=R2.plates
group by vehicle.plates, make, model
having count(*)<3;

update color
set color = 'green'
where plates =
(
select VEHICLE.plates
                from owns,OWNER, VEHICLE
                where ownerid = dr_lic and owns.plates = vehicle.plates
                and fname = 'Anna' and lname = 'Simmons' and make = 'VW' and model = 'golf'
);



insert into REGISTRATION values ('TX9283', 21321322, 1352, '01-JUL-2011', null, 169654,137.85);


create view emps as
select * from employee;

update emps
set bdate = '01-JAN-2011'
where IRD = 58743344;

create view view_reg as
select vehicle.plates , make, model, count(*) as no_reg
from REGISTRATION join VEHICLE on vehicle.plates = REGISTRATION.plates
group by vehicle.plates , make, model
order by  make;

delete from view_reg
where make = 'VW';

create index IYEAR
on vehicle(year);

select title, criti
from movie
where type = 'comedy' or type = 'drama';









