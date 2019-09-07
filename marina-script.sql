drop table service;
drop table slip;
drop table boat_owner;
drop table marina;


/* Creating tables */

create table marina
(id integer not null constraint check_marinaid check (id > 0),
 name varchar(30) not null,
 address varchar(50) not null,
 constraint pk_marina primary key (id));

create table boat_owner
(OwnerNo integer not null constraint check_owner check (OwnerNo > 0),
 Fname varchar(15) not null,
 Lname varchar(15) not null,
 Address varchar (50) not null,
 constraint pk_owner primary key (OwnerNo));

create table Slip
(SlipId integer not null constraint check_slip check (SlipId > 0),
 Marina integer not null constraint slip_fk1 references marina,
 Length /* length in feet */ integer not null
        constraint check_length check (length between 5 and 50),
 Fee number not null,
 Boat varchar(12),
 Type varchar(15),
 Owner integer constraint slip_fk2 references Boat_Owner,
 constraint slip_pk primary key (SlipId,Marina));

create table Service
(type integer not null check (type > 0) primary key,
 description varchar(30) not null);

/* Populating the MARINA table */

insert into marina values(1,'Picton','Port Marlborough PO Box 111 Picton');
insert into marina values(2,'Waikawa','Port Marlborough PO Box 112 Picton');
insert into marina values(3,'Havelock','Port Marlborough PO Box 113 Picton');
insert into marina values(4,'Nelson','Nelson marina PO Box 645 Nelson');
insert into marina values(5,'Tarakohe','Port GOlden Bay 189 Queen Street Richmond');

/* Populating the BOAT_OWNER table */

insert into boat_owner values(1,'Bruce','Adney','208 Citrus Avenue Richmond');
insert into boat_owner values(2,'Bill','Anderson','18 Wilcox Nelson');
insert into boat_owner values(3,'Mary','Blake','263 Commodore Rd Nelson');
insert into boat_owner values(4,'Sandy','Elend','462 Riverside Christchurch');
insert into boat_owner values(5,'Daniel','Feenstra','72 Queen St Dunedin');
insert into boat_owner values(6,'Maria','White','81 Oak Ave Richmond');
insert into boat_owner values(7,'Alyssa','Kelly','12 Waters Cres Nelson');
insert into boat_owner values(8,'Peter','Norton','9 Garland St Picton');
insert into boat_owner values(9,'David','Smeltz','13 Lakewood Rd Picton');
insert into boat_owner values(10,'Ashton','Trent','2 Bay Shore Christchurch');

/* Populating the SLIP table */

insert into slip values(1,1,40,3800,'Anderson II','Sprite 4000',2);
insert into slip values(2,1,40,3600,'Mermaid','Dolphin 25',3);
insert into slip values(3,1,30,2800,null,null,null);
insert into slip values(4,1,25,2200,'Anderson III','Dolphin 25',2);
insert into slip values(1,2,30,2800,null,null,null);
insert into slip values(2,2,30,2900,'Gypsy','Sprite 3000',4);
insert into slip values(3,2,25,2500,'South Sky','Ray 4025',5);
insert into slip values(1,3,25,2600,'Mariana','Dolphin 25',6);
insert into slip values(2,3,30,3200,'My Pride','Sprite 3000',7);
insert into slip values(3,3,40,4200,'Escape','Sprite 4000',1);
insert into slip values(4,3,40,4100,null,null,null);
insert into slip values(1,4,25,1500,'Axxon II','Dolphin 25',9);
insert into slip values(2,4,25,1600,null,null,null);
insert into slip values(3,4,25,1450,'Listy','Dolphin 22',8);
insert into slip values(4,4,30,2200,'Bravo','Dolphin 28',10);
insert into slip values(5,1,40,4000,'Lucky Star','Sprite 4000',1);
insert into slip values(5,2,30,2400,null,null,null);
insert into slip values(5,3,40,4100,null,null,null);

/* Populating the SERVICE table */

insert into service values(1,'routine engine maintenance');
insert into service values(2,'engine repair');
insert into service values(3,'air conditioning');
insert into service values(4,'electrical systems');
insert into service values(5,'fiberglass repair');
insert into service values(6,'canvas installation');
insert into service values(7,'canvas repair');
insert into service values(8,'electronic systems');


select fname, lname, type, count(*)
from boat_owner join slip on OwnerNo = Owner
group by type, fname, lname
having count(*) >= 2;
















































