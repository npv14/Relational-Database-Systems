drop table official;
drop table court;
drop table player;

/* Creating tables */
create table OFFICIAL
(No integer not null primary key,
 Name varchar(30) not null,
 Country varchar(20) not null,
 gender char(1) not null);

create table PLAYER
(Id integer not null primary key,
 Name varchar(25) not null,
 Country varchar(25) not null,
 SeedNo integer check (SeedNo between 1 and 32));

/* Adding data into the OFFICIAL table */
insert into OFFICIAL values(1,'Dick Braco','Trinidad and Tobago','m');
insert into OFFICIAL values(2,'Piers Palmer','UK','m');
insert into OFFICIAL values(3,'Gerry Armstrong','UK','m');
insert into OFFICIAL values(4,'Sav Loizou','UK','m');
insert into OFFICIAL values(5,'Nicholas Rodotheos Panayi','UK','m');
insert into OFFICIAL values(6,'Toby Granger','UK','m');
insert into OFFICIAL values(7,'James Keothavong','UK','m');
insert into OFFICIAL values(8,'Mario Yiddo Kitibos','Uzbekistan','m');
insert into OFFICIAL values(9,'Carlos Bernardes','Brazil','m');
insert into OFFICIAL values(10,'Mohamed El Jennati','Morocco','m');
insert into OFFICIAL values(11,'Jake Garner','USA','m');
insert into OFFICIAL values(12,'Lars Graff','Sweden','m');
insert into OFFICIAL values(13,'Roland Herfel','Germany','m');
insert into OFFICIAL values(14,'Emmanuel Joseph','France','m');
insert into OFFICIAL values(15,'Mohamed Lahyani ','Sweden','m');
insert into OFFICIAL values(16,'Pascal Maria','France','m');
insert into OFFICIAL values(17,'Gianluca Moscarella','Italy','m');
insert into OFFICIAL values(18,'Cedric Mourier','France','m');
insert into OFFICIAL values(19,'Fergus Murphy','Ireland','m');
insert into OFFICIAL values(20,'Ali Nili','Iran','m');
insert into OFFICIAL values(21,'Kader Nouni','France','m');
insert into OFFICIAL values(22,'Carlos Ramos','Portugal','m');
insert into OFFICIAL values(23,'Damina Steiner','Argentina','m');
insert into OFFICIAL values(24,'Andreas Egli','Switzerland','m');
insert into OFFICIAL values(25,'Anne Lasserre Ullrich','France','f');
insert into OFFICIAL values(26,'Bertie Bowron','UK','m');
insert into OFFICIAL values(27,'Bruno Rebeuh','France','m');
insert into OFFICIAL values(28,'Cecil Hollins','USA','m');
insert into OFFICIAL values(29,'Christina Olaussen','Denmark','f');
insert into OFFICIAL values(30,'David Littlefield','USA','m');
insert into OFFICIAL values(31,'Enric Molina','Spain','m');
insert into OFFICIAL values(32,'Denis Overberg','Australia','m');
insert into OFFICIAL values(33,'Donna Kelso','Australia','f');
insert into OFFICIAL values(34,'Edward James','UK','m');
insert into OFFICIAL values(35,'Fabian Cherny','Argentina','m');
insert into OFFICIAL values(36,'Fiona Edwards','UK','f');
insert into OFFICIAL values(37,'Frank Hammond','USA','m');
insert into OFFICIAL values(38,'Freddie Sore','UK','m');
insert into OFFICIAL values(39,'Georgina Clark','UK','f');
insert into OFFICIAL values(40,'Gil de Kermadec','France','m');
insert into OFFICIAL values(41,'Jane Harvey','UK','f');
insert into OFFICIAL values(42,'Javier Moreno','Spain','m');
insert into OFFICIAL values(43,'Jeremy Shales','UK','m');
insert into OFFICIAL values(44,'John Frame','UK','m');
insert into OFFICIAL values(45,'John Parry','UK','m');
insert into OFFICIAL values(46,'Jorge Dias','Portugal','m');
insert into OFFICIAL values(47,'Kerrilyn Cramer','Australia','f');
insert into OFFICIAL values(48,'Laura Ceccarelli','Italy','f');
insert into OFFICIAL values(49,'Leanne White','Australia','f');
insert into OFFICIAL values(50,'Lynn Welch','USA','f');
insert into OFFICIAL values(51,'Mike Morrissey','UK','m');
insert into OFFICIAL values(52,'Norbert Peick','Germany','m');
insert into OFFICIAL values(53,'Norm Chryst','USA','m');
insert into OFFICIAL values(54,'Richard Ings','Australia','m');
insert into OFFICIAL values(55,'Romano Grillotti','Italy','m');
insert into OFFICIAL values(56,'Sandra de Jenken','France','f');
insert into OFFICIAL values(57,'Steve Ullrich','USA','m');
insert into OFFICIAL values(58,'Ted Watts','UK','m');
insert into OFFICIAL values(59,'Sylvia Watts','UK','f');
insert into OFFICIAL values(60,'Wayne McKewen','Australia','m');
insert into OFFICIAL values(61,'Missy Malool','USA','f');
insert into OFFICIAL values(62,'Bunny Williams','USA','f');
insert into OFFICIAL values(63,'Billy Lipp','USA','m');
insert into OFFICIAL values(64,'Dessie Samuels','USA','f');
insert into OFFICIAL values(65,'Mike Loo','USA','m');
insert into OFFICIAL values(66,'Kieth Crossland','USA','m');


/* Adding data into the PLAYER table */
insert into PLAYER values(1,'Novak Djokovic','Serbia',1);
insert into PLAYER values(2,'Philipp Kohlschreiber','Germany',null);
insert into PLAYER values(3,'Jarkko Nieminen','Finland',null);
insert into PLAYER values(4,'Lleyton Hewitt ','Australia',null);
insert into PLAYER values(5,'Pierre-Hugues Herbert','France',null);
insert into PLAYER values(6,'Hyeon Chung','Korea',null);
insert into PLAYER values(7,'Jan-Lennard Struff','Germany',null);
insert into PLAYER values(8,'Bernard Tomic','Australia',27);
insert into PLAYER values(9,'Leonardo Mayer','Argentina',24);
insert into PLAYER values(10,'Thanasi Kokkinakis','Australia',null);
insert into PLAYER values(11,'Janko Tipsarevic','Serbia',null);
insert into PLAYER values(12,'Marcel Granollers','Spain',null);
insert into PLAYER values(13,'Marsel Ilhan','Turkey',null);
insert into PLAYER values(14,'Jerzy Janowicz','Poland',null);
insert into PLAYER values(15,'Lucas Pouille','France',null);
insert into PLAYER values(16,'Kevin Anderson','South Africa',14);
insert into PLAYER values(17,'Marin Cilic','Croatia',9);
insert into PLAYER values(18,'Hiroki Moriya','Japan',null);
insert into PLAYER values(19,'Andreas Haider-Maurer','Austria',null);
insert into PLAYER values(20,'Ricardas Berankis','Lithuania',null);
insert into PLAYER values(21,'Matthew Ebden','Australia',null);
insert into PLAYER values(22,'Blaz Rola','Slovenia',null);
insert into PLAYER values(23,'Go Soeda','Japan',null);
insert into PLAYER values(24,'John Isner','USA',17);
insert into PLAYER values(25,'Pablo Cuevas','Uruguay',28);
insert into PLAYER values(26,'Denis Kudla','USA',null);
insert into PLAYER values(27,'Teymuraz Gabashvili','Russia',null);
insert into PLAYER values(28,'Alexander Zverev','Germany',null);
insert into PLAYER values(29,'Joao Souza','Brazil',null);
insert into PLAYER values(30,'Santiago Giraldo','Colombia',null);
insert into PLAYER values(31,'Simone Bolelli','Italy',null);
insert into PLAYER values(32,'Kei Nishikori','Japan',5);
insert into PLAYER values(33,'Stanislas Wawrinka','Switzerland',4);
insert into PLAYER values(34,'Joao Sousa','Portugal',null);
insert into PLAYER values(35,'Victor Estrella','Dominican Republic',null);
insert into PLAYER values(36,'Benjamin Becker','Germany',null);
insert into PLAYER values(37,'Martin Klizan','Slovakia',null);
insert into PLAYER values(38,'Fernando Verdasco','Spain',null);
insert into PLAYER values(39,'Dudi Sela','Israel',null);
insert into PLAYER values(40,'Dominic Thiem','Austria',32);
insert into PLAYER values(41,'Tommy Robredo','Spain',19);
insert into PLAYER values(42,'John Millman','Australia',null);
insert into PLAYER values(43,'Donald Young','USA',null);
insert into PLAYER values(44,'Marcos Baghdatis','Cyprus',null);
insert into PLAYER values(45,'Liam Broady','UK',null);
insert into PLAYER values(46,'Marinko Matosevic','Australia',null);
insert into PLAYER values(47,'Horacio Zeballos','Argentina',null);
insert into PLAYER values(48,'David Goffin','Belgium',16);
insert into PLAYER values(49,'Grigor Dimitrov','Bulgaria',11);
insert into PLAYER values(50,'Federico Delbonis','Argentina',null);
insert into PLAYER values(51,'Lukas Lacko','Slovakia',null);
insert into PLAYER values(52,'Steve Johnson','USA',null);
insert into PLAYER values(53,'Kenny De Schepper','France',null);
insert into PLAYER values(54,'John-Patrick Smith','Australia',null);
insert into PLAYER values(55,'Luke Saville','Australia',null);
insert into PLAYER values(56,'Richard Gasquet','France',21);
insert into PLAYER values(57,'Nick Kyrgios','Australia',26);
insert into PLAYER values(58,'Diego Schwartzman','Argentina',null);
insert into PLAYER values(59,'Juan Monaco','Argentina',null);
insert into PLAYER values(60,'Florian Mayer','Germany',null);
insert into PLAYER values(61,'Dusan Lajovic','Serbia',null);
insert into PLAYER values(62,'Tommy Haas','Germany',null);
insert into PLAYER values(63,'Daniel Gimeno','Spain',null);
insert into PLAYER values(64,'Milos Raonic','Canada',7);
insert into PLAYER values(65,'Luca Vanni','Italy',null);
insert into PLAYER values(66,'James Ward','UK',null);
insert into PLAYER values(67,'Jiri Vesely','Czech Republic',null);
insert into PLAYER values(68,'Paolo Lorenzi','Italy',null);
insert into PLAYER values(69,'Vasek Pospisil','Canada',null);
insert into PLAYER values(70,'Vincent Millot','France',null);
insert into PLAYER values(71,'Tim Smyczek','USA',null);
insert into PLAYER values(72,'Fabio Fognini','Italy',30);
insert into PLAYER values(73,'Viktor Troicki','Serbia',22);
insert into PLAYER values(74,'Aleksandr Nedovyesov','Kazakhstan',null);
insert into PLAYER values(75,'Radek Stepanek','Czech Republic',null);
insert into PLAYER values(76,'Aljaz Bedene','UK',null);
insert into PLAYER values(77,'Dustin Brown','Germany',null);
insert into PLAYER values(78,'Yen-Hsun Lu','Chinese Taipei',null);
insert into PLAYER values(79,'Thomaz Bellucci','Brazil',null);
insert into PLAYER values(80,'Rafael Nadal','Spain',10);
insert into PLAYER values(81,'Jo-Wilfried Tsonga','France',13);
insert into PLAYER values(82,'Gilles Muller','Luxembourg',null);
insert into PLAYER values(83,'Denis Istomin','Uzbekistan',null);
insert into PLAYER values(84,'Albert Ramos','Spain',null);
insert into PLAYER values(85,'Alexandr Dolgopolov','Ukraine',null);
insert into PLAYER values(86,'Kyle Edmund','UK',null);
insert into PLAYER values(87,'Elias Ymer','Sweden',null);
insert into PLAYER values(88,'Ivo Karlovic','Croatia',23);
insert into PLAYER values(89,'Andreas Seppi','Italy',25);
insert into PLAYER values(90,'Brydan Klein','UK',null);
insert into PLAYER values(91,'Sergiy Stakhovsky','Ukraine',null);
insert into PLAYER values(92,'Borna Coric','Croatia',null);
insert into PLAYER values(93,'Robin Haase','Netherlands',null);
insert into PLAYER values(94,'Alejandro Falla','Colombia',null);
insert into PLAYER values(95,'Mikhail Kukushkin','Kazakhstan',null);
insert into PLAYER values(96,'Andy Murray','UK',3);
insert into PLAYER values(97,'Tomas Berdych','Czech Republic',6);
insert into PLAYER values(98,'Jeremy Chardy','France',null);
insert into PLAYER values(99,'Filip Krajinovic','Serbia',null);
insert into PLAYER values(100,'Nicolas Mahut','France',null);
insert into PLAYER values(101,'Ernests Gulbis','Latvia',null);
insert into PLAYER values(102,'Lukas Rosol','Czech Republic',null);
insert into PLAYER values(103,'Pablo Andujar','Spain',null);
insert into PLAYER values(104,'Guillermo Garcia-Lopez','Spain',29);
insert into PLAYER values(105,'Gael Monfils','France',18);
insert into PLAYER values(106,'Pablo Carreno','Spain',null);
insert into PLAYER values(107,'Adrian Mannarino','France',null);
insert into PLAYER values(108,'Michael Berrer','Germany',null);
insert into PLAYER values(109,'Yuichi Sugita','Japan',null);
insert into PLAYER values(110,'Blaz Kavcic','Slovenia',null);
insert into PLAYER values(111,'Nicolas Almagro','Spain',null);
insert into PLAYER values(112,'Gilles Simon','France',12);
insert into PLAYER values(113,'Feliciano Lopez','Spain',15) ;
insert into PLAYER values(114,'Steve Darcis','Belgium',null);
insert into PLAYER values(115,'Nikoloz Basilashvili','Georgia',null);
insert into PLAYER values(116,'Facundo Bagnis','Argentina',null);
insert into PLAYER values(117,'Benoit Paire','France',null);
insert into PLAYER values(118,'Mikhail Youzhny','Russia',null);
insert into PLAYER values(119,'Ruben Bemelmans','Belgium',null);
insert into PLAYER values(120,'Roberto Bautista','Spain',20);
insert into PLAYER values(121,'Jack Sock','USA',31);
insert into PLAYER values(122,'Samuel Groth','Australia',null);
insert into PLAYER values(123,'Malek Jaziri','Tunisia',null);
insert into PLAYER values(124,'James Duckworth','Australia',null);
insert into PLAYER values(125,'Sam Querrey','USA',null);
insert into PLAYER values(126,'Igor Sijsling','Netherlands',null);
insert into PLAYER values(127,'Damir Dzumhur','Bosnia and Herzegovina',null);
insert into PLAYER values(128,'Roger Federer','Switzerland',2);


Insert into MATCH values('first',1,1,1,2,123,1);
Insert into MATCH values('first',2,1,33,34,109,33);
Insert into MATCH values('first',3,1,31,32,202,32);
Insert into MATCH values('first',4,1,49,50,90,49);
Insert into MATCH values('first',5,1,57,58,85,57);
Insert into MATCH values('first',6,1,3,4,240,3);
Insert into MATCH values('first',7,1,17,18,112,17);
Insert into MATCH values('first',8,1,63,64,126,64);
Insert into MATCH values('first',9,1,23,24,105,24);
Insert into MATCH values('first',10,1,15,16,140,16);
Insert into MATCH values('first',11,1,45,46,194,45);
Insert into MATCH values('first',12,1,55,56,97,56);
Insert into MATCH values('first',13,1,27,28,226,28);
Insert into MATCH values('first',14,1,59,60,101,59);
Insert into MATCH values('first',15,1,13,14,161,13);
Insert into MATCH values('first',16,1,19,20,53,20);
Insert into MATCH values('first',17,1,35,36,137,35);
Insert into MATCH values('first',18,1,11,12,138,12);
Insert into MATCH values('first',19,1,25,26,171,26);
Insert into MATCH values('first',20,1,39,40,122,40);
Insert into MATCH values('first',21,1,61,62,120,62);
Insert into MATCH values('first',22,1,47,48,97,48);
Insert into MATCH values('first',23,1,53,54,178,53);
Insert into MATCH values('first',24,1,5,6,191,5);
Insert into MATCH values('first',25,1,41,42,88,42);
Insert into MATCH values('first',26,1,21,22,88,21);
Insert into MATCH values('first',27,1,37,38,237,38);
Insert into MATCH values('first',28,1,51,52,169,52);
Insert into MATCH values('first',29,1,9, 10,175,9);
Insert into MATCH values('first',30,1,7,8,124,8);
Insert into MATCH values('first',31,1,29,30,120,30);
Insert into MATCH values('first',32,1,43,44,131,44);
Insert into MATCH values('first',33,2,127,128,68,128);
Insert into MATCH values('first',34,2,95,96,132,96);
Insert into MATCH values('first',35,2,79,80,131,80);
Insert into MATCH values('first',36,2,97,98,191,97);
Insert into MATCH values('first',37,2,81,82,231,81);
Insert into MATCH values('first',38,2,111,112,125,112);
Insert into MATCH values('first',39,2,85,86,108,85);
Insert into MATCH values('first',40,2,105,106,94,105);
Insert into MATCH values('first',41,2,87,88,170,88);
Insert into MATCH values('first',42,2,65,66,154,66);
Insert into MATCH values('first',43,2,89,90,82,89);
Insert into MATCH values('first',44,2,113,114,121,113);
Insert into MATCH values('first',45,2,125,126,80,125);
Insert into MATCH values('first',46,2,103,104,180,103);
Insert into MATCH values('first',47,2,119,120,105,120);
Insert into MATCH values('first',48,2,73,74,104,73);
Insert into MATCH values('first',49,2,83,84,83,84);
Insert into MATCH values('first',50,2,93,94,143,93);
Insert into MATCH values('first',51,2,109,110,154,110);
Insert into MATCH values('first',52,2,75,76,191,76);
Insert into MATCH values('first',53,2,77,78,128,77);
Insert into MATCH values('first',54,2,107,108,143,107);
Insert into MATCH values('first',55,2,91,92,235,92);
Insert into MATCH values('first',56,2,67,68,155,67);
Insert into MATCH values('first',57,2,117,118,105,117);
Insert into MATCH values('first',58,2,69,70,223,69);
Insert into MATCH values('first',59,2,115,116,110,115);
Insert into MATCH values('first',60,2,121,122,132,122);
Insert into MATCH values('first',61,2,123,124,187,124);
Insert into MATCH values('first',62,2,99,100,167,100);
Insert into MATCH values('first',63,2,71,72,95,72);
Insert into MATCH values('first',64,2,101,102,140,102);
Insert into MATCH values('second',1,3,1,3,92,1);
Insert into MATCH values('second',2,3,17,20,214,17);
Insert into MATCH values('second',3,3,30,32,0,30);
Insert into MATCH values('second',4,3,62,64,154,64);
Insert into MATCH values('second',5,3,33,35,91,33);
Insert into MATCH values('second',6,3,49,52,131,49);
Insert into MATCH values('second',7,3,13,16,172,16);
Insert into MATCH values('second',8,3,45,48,113,48);
Insert into MATCH values('second',9,3,38,40,192,38);
Insert into MATCH values('second',10,3,42,44,224,44);
Insert into MATCH values('second',11,3,5,8,120,8);
Insert into MATCH values('second',12,3,57,59,100,57);
Insert into MATCH values('second',13,3,26,28,171,26);
Insert into MATCH values('second',14,3,53,56,78,56);
Insert into MATCH values('second',15,3,21,24,117,24);
Insert into MATCH values('second',16,3,9,12,119,9);
Insert into MATCH values('second',17,4,125,128,86,128);
Insert into MATCH values('second',18,4,77,80,154,77);
Insert into MATCH values('second',19,4,93,96,87,96);
Insert into MATCH values('second',20,4,81,84,100,81);
Insert into MATCH values('second',21,4,66,67,157,66);
Insert into MATCH values('second',22,4,97,100,105,97);
Insert into MATCH values('second',23,4,110,112,150,112);
Insert into MATCH values('second',24,4,105,107,106,105);
Insert into MATCH values('second',25,4,69,72,125,69);
Insert into MATCH values('second',26,4,73,76,124,73);
Insert into MATCH values('second',27,4,85,88,203,88);
Insert into MATCH values('second',28,4,89,92,212,89);
Insert into MATCH values('second',29,4,117,120,157,120);
Insert into MATCH values('second',30,4,102,103,168,103);
Insert into MATCH values('second',31,4,113,115,176,115);
Insert into MATCH values('second',32,4,122,124,127,122);
Insert into MATCH values('third',1,5,49,56,116,56);
Insert into MATCH values('third',2,5,1,8,92,1);
Insert into MATCH values('third',3,5,33,38,114,33);
Insert into MATCH values('third',4,5,57,64,163,57);
Insert into MATCH values('third',5,5,44,48,105,48);
Insert into MATCH values('third',6,5,9, 16,136,16);
Insert into MATCH values('third',7,5,26,30,174,26);
Insert into MATCH values('third',8,6,122,128,136,128);
Insert into MATCH values('third',9,6,89,96,128,96);
Insert into MATCH values('third',10,6,105,112,191,112);
Insert into MATCH values('third',11,6,17,24,271,17);
Insert into MATCH values('third',12,6,66,69,185,69);
Insert into MATCH values('third',13,6,97,103,159,97);
Insert into MATCH values('third',14,6,73,77,138,73);
Insert into MATCH values('third',15,6,81,88,171,88);
Insert into MATCH values('third',16,6,115,120,96,120);
Insert into MATCH values('fourth',1,7,88,96,183,96);
Insert into MATCH values('fourth',2,7,120,128,86,128);
Insert into MATCH values('fourth',3,7,33,48,143,33);
Insert into MATCH values('fourth',4,7,97,112,117,112);
Insert into MATCH values('fourth',5,7,56,57,174,56);
Insert into MATCH values('fourth',6,7,17,26,164,17);
Insert into MATCH values('fourth',7,7,69,73,159,69);
Insert into MATCH values('fourth',8,8,1,16,227,1);
Insert into MATCH values('QF',1,9,69,96,132,96);
Insert into MATCH values('QF',2,9,1,9,109,1);
Insert into MATCH values('QF',3,9,112,128,95,128);
Insert into MATCH values('QF',4,9,33,56,208,56);
Insert into MATCH values('SF',1,11,1,56,141,1);
Insert into MATCH values('SF',2,11,96,128,127,128);
insert into match values('final',1,13,1,128,null,null);


create table match
(draw varchar(10) not null,
 No integer not null constraint No_check  check  (No > 0),
 day integer not null constraint day_check check (day between 1 and 13),
 player1 integer not null constraint player1id references player,
 player2 integer not null constraint player2id references player,
 duration integer,
 winner integer  ,
primary key (draw, No),
constraint winner_check  check  (winner= player1 or winner = player2));

create table judging
(
    jdraw varchar(10) not null,
    jno integer not null,
    official integer not null references OFFICIAL,
    role varchar(12) constraint check_role check (role in ('chair umpire' , 'line umpire', 'referee')),
    primary key (jdraw, jno, official),
    FOREIGN key (jdraw, jno) references match
);

select country
from PLAYER
where seedno is not null
having count(*) >= (select max(count(*))
                                    from PLAYER
                                    where seedno is not null
                                    group by country)
group by country;


                   where gender = 'f' )));

select name, seed
from



select name, seedno
from player
where seedno is not null and id in
((select id
from player)
minus
(select winner
from match
where draw = 'first'));

select draw, no
from match, player p1, player p2
where player1 = p1.id and player2  = p2.id and p1.country = p2.country;

update match
set duration = 176  , winner = (select id
                                    from player where name = 'Novak Djokovic')
where draw = 'final';



select * from match;


create view PlayerStat as
select distinct name ,id, count(*) as no_match
from match , player
where id = player1 or id = player2
group by name, id
order by id;


select * from PlayerStat
where no_match = 2;

 select count(*)
        from judging
        where role = 'referee' and 'first' = jdraw and 2 = jno;

Insert into judging (jdraw, jno, official, role) values('first',1,11,'chair umpire');
Insert into judging (jdraw, jno, official, role) values('first',2,11,'referee');

create or replace trigger check_jud
before insert ON judging
 for each row
 declare
  owner_num integer;
  found_match integer;
  found_official integer;
    found_chair integer;
    found_referee integer;
 begin
 select count(*) into found_match
 from match
 where  draw = :new.jdraw and no = :new.jno;
 if found_no = 0 then
    raise_application_error (num=>-20100, msg=>'There is no match!');
  else
  select count(*) into found_official
  from official
  where no = :new.official;
  if found_official = 0 then
    raise_application_error (num=>-20200, msg=>'There is no official!');
    else
     if :new.role = 'chair umpire' or  then
        select count(*) into found_chair
        from judging
        where role = :new.role and draw = :new.jdraw and no = :new.jno;
        end if;
    if :new.role = 'referee' then
        select count(*) into found_referee
        from judging
        where role = :new.role and draw = :new.jdraw and no = :new.jno;
        end if;
    if found_chair = 1 or found_referee = 1 then
        raise_application_error (num=>-20200, msg=>'There is no official!');
        end if;
     Insert into judging (jdraw, jno, official, role) values(:new.jdraw,:new.jno,:new.official,:new.role);
    end if;
  end if;
 end;
/



create or replace trigger PREVENT_JUDGING
before insert on judging
for each row
when (new.role in ('referee','chair umpire'))
 declare
     RoleExists integer;
 begin
     select count(*) into RoleExists
     from judging
     where draw=:new.draw and match=:new.match and role=:new.role;

     if roleExists = 1 then
 raise_application_error (num=> -20055,
        msg=> 'There can only be one chair umpire or a referee per match!');
     end if;
end;
/

Find manufacturers who make more than one model of the same type of printers (e.g., two models of laser printers). Show the type of printers too.
























