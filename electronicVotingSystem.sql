drop database voterDB;

create database voterDB;

use voterDB;

create table evs_tbl_user_credentials(
userid varchar(6),
password varchar(20) not null,
usertype varchar(1) check(usertype='A' or usertype='E' or usertype='V'),
loginstatus int(1) check(loginstatus=1 or loginstatus=0),
primary key(userid));


create table evs_tabl_user_profile(
userid varchar(6),
firstname varchar(15) not null,
lastname varchar(15) not null,
dateofbirth date,
gender varchar(7) not null,
street varchar(30) not null,
location varchar(15) not null,
city varchar(15) not null,
state varchar(15) not null,
pincode varchar(10) not null,
mobileno varchar(10),
emailid varchar(30),
foreign key(userid) references evs_tbl_user_credentials(userid));

create table evs_tbl_election(
electionid varchar(6),
name varchar(15) not null,
electiondate date,
district varchar(15) not null,
constituency varchar(15) not null,
countingdate date not null,
primary key(electionid));


create table evs_tbl_party(
partyid varchar(6),
partyname varchar(20),
leadername varchar(20),
symbol varchar(20),
primary key(partyid));


create table evs_tbl_candidate(
candidateid varchar(6),
name varchar(20) not null,
electionid varchar(6),
partyid varchar(6),
district varchar(20) not null,
constituency varchar(20) not null,
dateofbirth date not null,mobileno varchar(10),
address varchar(50) not null,
emailid varchar(20),
primary key(candidateid),
foreign key(electionid) references evs_tbl_election(electionid),
foreign key(partyid) references evs_tbl_party(partyid));

create table evs_tbl_application(
userid varchar(6),
constituency varchar(30) not null,
passedstatus int(2),
approvedstatus int(2),
voterid varchar(8),
primary key(voterid),
foreign key(userid) references evs_tbl_user_credentials(userid));

insert into evs_tbl_application values('sr1001','JAMANAGAR',1,1,1021);

create table evs_tbl_result(serialno int(6),
electionid varchar(6),
candidateid varchar(6),
votecount int(5),
primary key(serialno),
foreign key(electionid) references evs_tbl_election(electionid),
foreign key(candidateid) references evs_tbl_candidate(candidateid));

create table evs_tbl_eo(
electoralofficerid varchar(6),
constituency varchar(25) not null,
primary key(electoralofficerid));

create table evs_tbl_voter_details(
serialno int(6)primary key,
candidateid varchar(6),
electionid varchar(6),
voterid varchar(8),
foreign key(electionid) references evs_tbl_election(electionid),
foreign key(candidateid) references evs_tbl_candidate(candidateid),
foreign key(voterid) references evs_tbl_application(voterid));





/*
Drop trigger trg_cred_profile;

Delimiter //
create trigger trg_cred_profile
before insert on evs_tabl_user_profile

for each row

begin

set New.userid=CONCAT((substr(New.firstname,1,2)),New.userid);

update evs_tbl_user_credentials set userid=new.userid;

end //

delimiter ;

*/


/*
insert into two tables:
================================
*/

insert into evs_tbl_user_credentials values(
1001,'pwd1','A',0);

insert into evs_tabl_user_profile values(1001,'sridevi',
'atheli',current_date(),'Male','hyd','panjajutta','hyd','ts','500042',8123232323,
'rajesh@gmail.com');
*/






/*
Delimiter //
create trigger trg_tbl_application
before insert on evs_tbl_application

for each row

begin

set New.voterid=concat(substr(New.userid,1,2),substr(New.constituency,1,2),New.voterid);

end //

delimiter ;


*/
 select * from evs_tbl_user_credentials;

select * from evs_tabl_user_profile;

insert into evs_tbl_application values('sr1001','JAMANAGAR',1,1,1021);
select * from evs_tbl_application;



