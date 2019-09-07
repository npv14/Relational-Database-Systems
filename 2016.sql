
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
insert into slip values(2,2,30,2900,'Gypsy','Sprite 3000',265);
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

insert into boat_owner values(265,'Bruce','Adney','208 Citrus Avenue Richmond');

insert into slip values(2,2,30,2900,'Gypsy','Sprite 3000',265);

select * from slip
where marina = 4
order by slipid;

select * from boat_owner
where fname = 'Peter' and lname = 'Norton'
;

select * from income;
where Owner = 8
;

select length
from Income
where total = (select max(total) from Income);

order by lname;

select fname, lname, type, count(*)
from boat_owner join slip on OwnerNo = Owner
group by type, fname, lname
having count(*) >= 2;
drop VIEW Income;
create view Income
as select  length , sum(Fee) as total
from Slip
where Boat is not null
group by length;

delete from boat_owner
where OwnerNo = 265;

update slip
set Boat = 'White Dove', type = 'Dolphin 25', Owner = (select OwnerNo from boat_owner where fname='Peter' and lname='Norton')
where SlipId = 2 and  Marina = 4 and  boat is null ;

create table REQUEST
(RequestId integer not null,
 Marina integer not null,
 Slip integer not null,
 type integer not null constraint Request_fk2 references Service,
 status /* length in feet */ varchar(1) not null
        constraint check_type12 check (status = 'p' or status = 'n' or status = 'c' ),
 Es_number integer,
 Act_number integer,
descr description varchar(100),
 primary key (RequestId),
 FOREIGN KEY (Slip, Marina) REFERENCES Slip);


insert into REQUEST values(1,1,1,3,'c',4,3,'Air conditioner periodically stops indicating low coolant level');



5,4,1,1,'c',4,3,'oil change');
insert into REQUEST values(6,5,2,1,'c',4,4,'oil change');
insert into REQUEST values(7,1,2,1,p,4,1,oil change);
insert into REQUEST values(4,3,1,4,'c',6,7,'Fuse blown on two occassions');
insert into REQUEST values(4,3,1,4,'c',6,7,'Fuse blown on two occassions');
insert into REQUEST values(4,3,1,4,'c',6,7,'Fuse blown on two occassions');
insert into REQUEST values(4,3,1,4,'c',6,7,'Fuse blown on two occassions');
insert into REQUEST values(4,3,1,4,'c',6,7,'Fuse blown on two occassions');


insert into REQUEST values(
1,1,1,3,'c',4,3,'Air conditioner periodically stops indicating low coolant level');
insert into REQUEST values(
2,2,1,1,'c',4,4,'oil change');
insert into REQUEST values(
3,1,1,3,'c',4,4,'air conditioner needs repair');
insert into REQUEST values(
4,3,1,4,'c',6,7,'Fuse blown on two occassions');
insert into REQUEST values(
5,4,1,1,'c',4,3,'oil change');
insert into REQUEST values(
6,5,2,1,'c',4,4,'oil change');
insert into REQUEST values(
7,1,2,1,'p',4,1,'oil change');
insert into REQUEST values(
8,2,3,1,'p',4,1,'oil change');
insert into REQUEST values(
9,5,1,1,'n',4,4,'oil change');
insert into REQUEST values(
10,1,1,2,'n',4,0,'Heat exchanger not operating correctly');
insert into REQUEST values(
11,2,2,8,'n',3,0,'Install new GPS and chart plotter');
insert into REQUEST values(
12,2,4,1,'n',4,4,'oil change');
insert into REQUEST values(
13,3,2,1,'p',5,1,'oil change');
insert into REQUEST values(
14,1,3,1,'n',4,4,'oil change');
insert into REQUEST values(
15,3,3,6,'n',6,0,'Install new canvas');
insert into REQUEST values(
16,4,3,5,'n',3,0,'open pockets at base of two stations');
insert into REQUEST values(
17,1,4,4,'c',4,3,'electric flush periodically stops functioning');
insert into REQUEST values(
18,3,4,1,'c',4,3,'oil change');
insert into REQUEST values(
19,2,3,7,'n',2,0,'canvas leaks around zippers - install overlap');
insert into REQUEST values(
20,4,4,2,'n',3,0,'engine makes clattering sound');
insert into REQUEST values(
21,5,2,8,'n',2,0,'Both speed and depth rating on data unit lower than the owner thinks they should be');
insert into REQUEST values(
22,5,3,3,'n',3,0,'aircon unit shuts down with HHH showing on the panel');
create table request
(rid integer not null primary key,
 slip integer not null,
 marina integer not null,
 service integer not null constraint serv_type references service,
 status /* n for new, c for completed, p for in progress */
        char(1) not null constraint req_status check (status in ('n','c','p')),
 est_hours float not null,
 actual_hours float,
 descr varchar(100) not null,
 11   constraint request_fk foreign key (slip, marina) references slip);


select Slip.type, SlipId, boat_owner.fname, boat_owner.lname
from slip, boat_owner, REQUEST, service
where slip = Slipid and REQUEST.Marina = slip.marina and owner = OwnerNo and REQUEST.marina = 1 and service.description like '%engine%' and REQUEST.est_hours < 5 and status='n' and service = SERVICE.type ;



select * from SLIP30;
where REQUEST.descr like '%engine%';


create view SLIP30 as (
select slipid, slip.marina, fee, boat, fname, lname
from slip LEFT OUTER join boat_owner on owner = OwnerNo
where length = 30);

update SLIP30
 set boat='Star', fname = 'Peter', lname = 'Norton'
where slipid=5 and marina=2;

select count(*) from boat_owner
where fname='Peter' and lname = 'Norton';




create or replace trigger addslip
instead of update on SLIP30
for each row
declare
    found_no integer;
    ownerno1 integer;
begin
select count(*) into found_no
from boat_owner
where lname =:new.lname and fname =:new.fname;
if found_no = 0 then
raise_application_error (num=>-20100, msg=>'There is no owner with the given name!');
else
select OwnerNo into ownerno1
from boat_owner
where lname =:new.lname and fname =:new.fname;
update slip
set  boat =:new.boat,  owner = ownerno1
where marina  =:new.marina and slipid =:new.slipid;
end if;
end;
/




























