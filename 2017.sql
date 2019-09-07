--------------------------------------------------------------------
-- COSC265 S2 2017, Lab Test
-- Achievement Script
--------------------------------------------------------------------

-- Town (City) table
create table Town
  (T_id        varchar(2)       ,
   T_name      varchar(20)      not null,
   primary key (T_id)
  );

-- Creature table
create table Creature
  (C_id             smallint    ,
   C_name           varchar(15) not null,
   C_type           varchar(10) not null,
   reside_t_id      varchar(2),
   primary key (C_id),
   constraint fk_cr_to foreign key (reside_t_id) references Town(T_id)
     on delete set null
  );

-- Skill table
create table Skill
  (S_code       char            ,
   S_desc       varchar(15)     not null,
   S_weight     number          ,
   primary key (S_code)
  );

-- Achievement table
create table Achievement
  (C_id         smallint        references Creature(C_id),
   S_code       char            references Skill(S_code),
   score        smallint        not null,
   test_t_id    varchar(2)      references Town(T_id),
   primary key (C_id, S_code),
   constraint fk_ac_cr foreign key (C_id) references Creature (C_id)
     on delete set null,
   constraint fk_ac_sk foreign key (S_code) references Skill (S_code)
     on delete set null,
   constraint fk_ac_to foreign key (test_t_id) references Town (T_id)
     on delete set null
  );

--------------------------------------------------------------------
-- COSC265 S2 2017, Lab Test
-- Achievement Instances Script
--------------------------------------------------------------------

-- Town records
insert
into Town (T_id, T_Name)
values    ('Au', 'Auckland');

insert
into Town (T_id, T_name)
values    ('Ch', 'Christchurch');

insert
into Town (T_id, T_name)
values    ('We', 'Wellington');


-- Creature records
insert
into Creature (C_id, C_name, C_type, reside_T_id)
values        (1, 'Bannon', 'Person', 'Ch');

insert
into Creature (C_id, C_name, C_type, reside_T_id)
values        (2, 'Myers', 'Person', 'Au');

insert
into Creature (C_id, C_name, C_type, reside_T_id)
values        (3, 'Neff', 'Person', 'We');

insert
into Creature (C_id, C_name, C_type, reside_T_id)
values        (4, 'Neff', 'Person', 'Ch');

insert
into Creature (C_id, C_name, C_type, reside_T_id)
values        (5, 'Mieska', 'Person', 'Ch');

insert
into Creature (C_id, C_name, C_type, reside_T_id)
values        (6, 'Carlis', 'Person', 'We');

insert
into Creature (C_id, C_name, C_type, reside_T_id)
values        (7, 'Gollum', 'Hobbit', 'We');

insert
into Creature (C_id, C_name, C_type, reside_T_id)
values        (8, 'Smaug', 'Dragon', null);


-- Skill records
insert
into Skill (S_code, S_desc, S_weight)
values     ('B', 'Breathe fire', 0.9);

insert
into Skill (S_code, S_desc, S_weight)
values     ('C', 'Code', 0.6);

insert
into Skill (S_code, S_desc, S_weight)
values     ('D', 'Design', 0.7);

insert
into Skill (S_code, S_desc, S_weight)
values     ('F', 'Float', 0.5);

insert
into Skill (S_code, S_desc, S_weight)
values     ('R', 'Riddle', 0.2);

insert
into Skill (S_code, S_desc, S_weight)
values     ('S', 'Swim', 0.7);

insert
into Skill (S_code, S_desc, S_weight)
values     ('T', 'Test', 0.8);

insert
into Skill (S_code, S_desc, S_weight)
values     ('W', 'Walk', 0.4);


-- Achievement records
insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (1, 'S', 1, 'Au');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (1, 'F', 3, 'Ch');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (1, 'C', 3, 'Ch');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (2, 'S', 3, 'Au');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (3, 'S', 2, 'Ch');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (3, 'D', 1, 'Ch');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (4, 'S', 2, 'We');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (4, 'F', 2, 'We');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (5, 'C', 3, 'Ch');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (5, 'T', 2, 'We');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (5, 'D', 1, 'Ch');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (7, 'F', 1, 'Ch');

insert
into Achievement (C_id, S_Code, score, test_T_id)
values    (7, 'R', 2, 'We');

insert
into Achievement (C_id, S_Code, score, test_T_id)


values    (8, 'B', 1, null);





create table jobskill
(
jobname varchar(20) not null constraint job_check check (jobname in ('SWDeveloper','Lifeguard','SystemsAnalyst')),

skill char(1) not null constraint skill_check check (skill in ('S','F','C','D')),
rank char(1) not null constraint rank_check check (rank in (1,2,3)),
primary key (jobname, skill)
);

select * from Creature;


insert into jobskill values ('SWDeveloper', 'C', 2);
insert into jobskill values ('SWDeveloper', 'D',3);
insert into jobskill values ('SWDeveloper', 'T', 1);
insert into jobskill values ('Lifeguard', 'F', 2);
insert into jobskill values ('Lifeguard', 'S', 1);




update Creature
set C_name = 'Smeagol'
where C_name = 'Gollum';



select C_name
from skill, Achievement, Creature
where Achievement.C_id = Creature.C_id and Achievement.S_code = Skill.S_code and S_weight <= 0.5
group by Creature.C_id,C_name
order by C_name;


select C_name
from Creature
where C_id   in(select C_id from Achievement
where S_code in (select S_code from Skill where S_weight <= 0.5))
order by C_name;


group by Creature.C_id,C_name
order by C_name;

select C_type, count(*),AVG(score)
from Achievement join Creature on Achievement.C_id = Creature.C_id
group by C_type
order by count(*) desc;


select S_code m1, S_code m2
from Achievement join skill m1 on Achievement.S_code = Skill.S_code
where  (select S_code
from Achievement join skill m2 on Achievement.S_code
where m1.S_code= 2 and m2.s_code = 2);



select distinct s1.S_code, s2.S_code
from  Achievement s1, Achievement s2
where  s1.S_code < s2.S_code and s1.C_id = s2.C_id and   s1.S_code = 2 and s2.S_code  = 2;



select C_name
from skill, Achievement, Creature
where Achievement.C_id = Creature.C_id and Achievement.S_code = Skill.S_code and S_weight <= 0.5
group by Creature.C_id,C_name
order by C_name;



select * from Achievement;

select *
from Creature
where creature_id in (select creature_id in )

select creature.c_id , count(*)
from creature left outer join Achievement on Creature.C_id = Achievement.C_id
group by Creature.C_id
order by  Creature.C_id;

create view ach_view as
select Creature.C_id, Creature.C_name, Creature.C_type, Achievement.S_code, Achievement.score, S_desc
from Creature, Achievement, Skill
where Creature.C_id = Achievement.C_id and Achievement.S_code = Skill.S_code
order by Creature.C_id;


select * from ach_view
where C_id = 4 or  C_id = 1 ;

insert into ach_view values (9, 'Fanghorn', 'Ent','W', 3, "ERAR");



create or replace trigger ADD_Ach
INSTEAD OF UPDATE ON ach_view

 begin

insert
into Creature (C_id, C_name, C_type)
values       (:new.C_id,  :new.C_name, :new.C_type);


insert
into Achievement (C_id, S_Code, score)
values    (:new.C_id, :new.S_code , :new.score);
 end;
/


select type, count(*) as No_movie
from movie
group by type
having count(*) > 5
order by count(*) desc;

































