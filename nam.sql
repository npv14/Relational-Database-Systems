drop table dvd;
drop table customer;
drop table stars;
drop table star;
drop table movie;
drop table director;



CREATE TABLE DIRECTOR
(DNUMBER /* Unique number */ INTEGER NOT NULL constraint dir_pk PRIMARY KEY,
LNAME /* Last name */ VARCHAR(16) NOT NULL,
FNAME /* First name */ VARCHAR(15),
BORN /* Year of birth */ INTEGER
                constraint dir_born check (BORN between 1880 and 1990),
DIED /* Year of death */ INTEGER constraint dir_died check (DIED>1930),
constraint corr_years check (born <= died));

CREATE TABLE MOVIE
(MNUMBER /* Unique number for a movie */ INTEGER NOT NULL PRIMARY KEY,
TITLE /* Title */ VARCHAR(50) not null,
TYPE /* Type of the movie */ VARCHAR(15) NOT NULL,
AANOM /* Number of nominations for Academy Awards */ INTEGER,
AAWON /* Number of AA won */ INTEGER,
YEAR /* Year when the movie was made */ INTEGER,
CRITICS /* Critics' rating */ VARCHAR(2),
DIRECTOR /* Director's number */ INTEGER REFERENCES DIRECTOR);

CREATE TABLE STAR
(SNUMBER /* Unique number */ INTEGER NOT NULL,
LNAME /* Last name */ VARCHAR(15) NOT NULL,
FNAME /* First name */ VARCHAR(15),
BORN /* Year of birth */ INTEGER
                constraint check_born check (BORN between 1880 and 2000),
DIED /* Year of death */ INTEGER constraint check_died check (DIED>1930),
CITY /* City of birth */ VARCHAR(15),
constraint corr_syears check (born <= died),
PRIMARY KEY (SNUMBER));

CREATE TABLE CUSTOMER
(LNAME /* Last name */ VARCHAR(15) NOT NULL,
FNAME /* First name */ VARCHAR(15) NOT NULL,
CNUMBER /* Unique number */ INTEGER NOT NULL,
ADDRESS /* Customer's address */ VARCHAR(40),
RENTALS /* The number of DVDs rented */ INTEGER check (rentals>=0),
BONUS /* 1/10 of RENTALS */ INTEGER,
JDATE /* Date of joining the club */ DATE,
PRIMARY KEY (CNUMBER));

CREATE TABLE DVD
(CODE /* Unique number */ INTEGER NOT NULL,
MOVIE /* Movie number */ INTEGER NOT NULL,
PDATE /* Purchase date */ DATE,
TIMES /* Times rented */ INTEGER default 0,
CUSTOMER /* Number of the customer renting the DVD */ INTEGER,
HIREDATE /* Date of hire */ DATE,
PRIMARY KEY (CODE),
FOREIGN KEY (CUSTOMER) REFERENCES CUSTOMER(CNUMBER),
FOREIGN KEY (MOVIE) REFERENCES MOVIE,
CONSTRAINT CHECK_TIMES CHECK (TIMES >= 0));

CREATE TABLE STARS
(MOVIE /* Movie number */ INTEGER NOT NULL REFERENCES MOVIE(MNUMBER),
STAR /* Star number */ INTEGER NOT NULL REFERENCES STAR(SNUMBER),
ROLE /* Name of the role */ VARCHAR(20) NOT NULL,
PRIMARY KEY (MOVIE,STAR,ROLE));


select distinct type
from movie;

select distinct star.fname, star.lname
from star, movie, stars, director
where movie = mnumber and star = snumber and director = dnumber and director.fname = 'Sofia' and director.lname = 'Coppola';


select distinct star.fname, star.lname, count(*)
from star, movie, stars, director
where movie = mnumber and star = snumber and director = dnumber and director.fname = 'Sofia' and director.lname = 'Coppola'
group by  star.fname, star.lname
having count(*) > 1;

select distinct type, count(*)
from movie
group by type
having count(*)  >= 5
order by count(*) desc;


select   fname, lname, count(*)
from director join movie on director = dnumber
group by dnumber, fname, lname
having count(*) >= (select count(*) from movie where director = 15);

select count(*) from movie;

select count(*) from movie where director = 31;

select fname, lname, count(*)
from director join  movie on dnumber = director
where type = 'drama'
group by fname, lname
having count(*) >= all(select count(*) from movie where type = 'drama' group by director);

select fname, lname
from director join movie on director = dnumber
where type='drama'
group by director, fname, lname
having count(*) >= all (select count(*) from movie
where type='drama' group by director);

create or replace trigger change_owner2
after insert on owns
for each row
when (new.datesold is null)
declare
check_tuple integer;
olname varchar(15);
ofname varchar(15);
begin
select count(*) into check_tuple
from owner2
where dr_lic =:new.ownerid;
if check_tuple = 0 then
select lname, fname into olname, ofname
from owner
where dr_lic =: new.ownerid;
insert into owner2
values(:new.ownerid, olname, ofname, 1);
else
update owner2
set no_cars = no_cars+1
where :new.ownerid = dr_lic;
endif;
end;










create or replace trigger change_owner2
after insert on owns
for each row
when (new.datesold is null)
declare
check_tuple integer;
olname varchar(15);
ofname varchar(15);
begin
select count(*) into check_tuple
from owner2
where dr_lic=:new.ownerid;
if check_tuple = 0 then
-- this is a new owner, not appearing in OWNER2 yetselect lname, fname into olname, ofname -- find the name of the owner
from owner
where dr_lic = :new.ownerid;
insert into owner2
values(:new.ownerid,olname,ofname,1);
else
update owner2 -- existing owner, add one more car
set no_cars=no_cars+1
where :new.ownerid=dr_lic;
end if;
end;



select distinct star.fname, star.lname, count(*)
from movie, director, star , stars
where director = dnumber and mnumber = movie and snumber = star and DIRECTOR.fname = 'Sofia' and DIRECTOR.lname = 'Coppola'
having count(*) >= 2;




select type, count(*) as No_movie
from movie
group by type
having count(*) > 5
order by count(*) desc;

select fname, lname
from director
where dnumber in (select dnumber
                    from movie join director on director = dnumber
                    group by dnumber
                    having count(*) >= (select count(*) from movie where director = 15));



select fname, lname, type,  count(*) as no_drama
from movie join director on director = dnumber
where type = 'drama'
having count(*) >= (select max(no_drama) from(select count(*) as no_drama
from movie
where type = 'drama'
group by director
))
group by dnumber,fname, lname, type;



select max(no_drama) from(
select count(*) as no_drama
                    from movie join director on director = dnumber
                    where type = 'drama'
                    group by dnumber, type
);




select title, Critics
from movie
where not ( Critics = 'NR');

select fname, lname, cnumber,rentals, rentals/10 as bonous
from Customer;





select distinct star
from stars
where movie = 5 or movie = 6;
