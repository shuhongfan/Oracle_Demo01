
--�����۸������
create  table t_pricetable
(
id number primary key,
price number(10,2),
ownertypeid number,
minnum number,
maxnum number
);


--ҵ������
create table t_ownertype
(
id number primary key,
name varchar2(30)
);

--ҵ����
create table t_owners
(
id number primary key,
name varchar2(30),
addressid number,
housenumber varchar2(30),
watermeter varchar2(30),
adddate date,
ownertypeid number
);



--�����
create table t_area
(
id number,
name varchar2(30)
);

--�շ�Ա��
create table t_operator
(
id number,
name varchar2(30)
);


--��ַ��
create table t_address
(
id number primary key,
name varchar2(100),
areaid number,
operatorid number
);


--�����--
create table t_account 
(
id number primary key,
owneruuid number,
ownertype number,
areaid number,
year char(4),
month char(2),
num0 number,
num1 number,
usenum number,
meteruser number,
meterdate date,
money number(10,2),
isfee char(1),
feedate date,
feeuser number
);


create sequence seq_account;

--ҵ������
insert into t_ownertype values(1,'����');
insert into t_ownertype values(2,'������ҵ��λ');
insert into t_ownertype values(3,'��ҵ');

--��ַ��Ϣ--
insert into t_address values( 1,'���˻�԰',1,1);
insert into t_address values( 2,'��Դ����',1,1);
insert into t_address values( 3,'����Է����С��',2,2);
insert into t_address values( 4,'���ϻ�԰',2,2);
insert into t_address values( 5,'��Ӫ',2,2);
insert into t_address values( 6,'�����۶����',3,2);
insert into t_address values( 7,'������',3,2);

--ҵ����Ϣ
insert into t_owners values(1,'����',1,'1-1','30406',to_date('2015-04-12','yyyy-MM-dd'),1 );
insert into t_owners values(2,'��ǿ',1,'1-2','30407',to_date('2015-02-14','yyyy-MM-dd'),1 );
insert into t_owners values(3,'����',1,'1-3','30408',to_date('2015-03-18','yyyy-MM-dd'),1 );
insert into t_owners values(4,'��С��',2,'2-4','30409',to_date('2015-06-15','yyyy-MM-dd'),1 );
insert into t_owners values(5,'����',2,'2-5','30410',to_date('2013-09-11','yyyy-MM-dd'),1 );
insert into t_owners values(6,'����',2,'2-2','30411',to_date('2014-09-11','yyyy-MM-dd'),1 );
insert into t_owners values(7,'�ܽ�',3,'2-5','30433',to_date('2016-09-11','yyyy-MM-dd'),1 );
insert into t_owners values(8,'����',4,'2-2','30455',to_date('2016-09-11','yyyy-MM-dd'),1 );
insert into t_owners values(9,'��ƽ������ҽ���ҽԺ',5,'2-2','30422',to_date('2016-10-11','yyyy-MM-dd'),2 );
insert into t_owners values(10,'����������',5,'4-2','30423',to_date('2016-10-12','yyyy-MM-dd'),3 );


--����Ա
insert into t_operator values(1,'��С��');
insert into t_operator values(2,'��仨');



--����--
insert into t_area values(1,'����');
insert into t_area values(2,'��ƽ');
insert into t_area values(3,'����');
insert into t_area values(4,'����');
insert into t_area values(5,'����');
insert into t_area values(6,'����');


--�۸��--

insert into t_pricetable values(1,2.45,1,0,5);
insert into t_pricetable values(2,3.45,1,5,10);
insert into t_pricetable values(3,4.45,1,10,null);

insert into t_pricetable values(4,3.87,2,0,5);
insert into t_pricetable values(5,4.87,2,5,10);
insert into t_pricetable values(6,5.87,2,10,null);

insert into t_pricetable values(7,4.36,3,0,5);
insert into t_pricetable values(8,5.36,3,5,10);
insert into t_pricetable values(9,6.36,3,10,null);

--�����--
insert into t_account values( seq_account.nextval,1,1,1,'2012','01',30203,50123,0,1,sysdate,34.51,'1',to_date('2012-02-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','02',50123,60303,0,1,sysdate,23.43,'1',to_date('2012-03-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','03',60303,74111,0,1,sysdate,45.34,'1',to_date('2012-04-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','04',74111,77012,0,1,sysdate,52.54,'1',to_date('2012-05-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','05',77012,79031,0,1,sysdate,54.66,'1',to_date('2012-06-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','06',79031,80201,0,1,sysdate,76.45,'1',to_date('2012-07-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','07',80201,88331,0,1,sysdate,65.65,'1',to_date('2012-08-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','08',88331,89123,0,1,sysdate,55.67,'1',to_date('2012-09-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','09',89123,90122,0,1,sysdate,112.54,'1',to_date('2012-10-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','10',90122,93911,0,1,sysdate,76.21,'1',to_date('2012-11-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','11',93911,95012,0,1,sysdate,76.25,'1',to_date('2012-12-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,1,1,1,'2012','12',95012,99081,0,1,sysdate,44.51,'1',to_date('2013-01-14','yyyy-MM-dd'),2 );

insert into t_account values( seq_account.nextval,2,1,3,'2012','01',30334,50433,0,1,sysdate,34.51,'1',to_date('2013-02-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','02',50433,60765,0,1,sysdate,23.43,'1',to_date('2013-03-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','03',60765,74155,0,1,sysdate,45.34,'1',to_date('2013-04-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','04',74155,77099,0,1,sysdate,52.54,'1',to_date('2013-05-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','05',77099,79076,0,1,sysdate,54.66,'1',to_date('2013-06-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','06',79076,80287,0,1,sysdate,76.45,'1',to_date('2013-07-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','07',80287,88432,0,1,sysdate,65.65,'1',to_date('2013-08-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','08',88432,89765,0,1,sysdate,55.67,'1',to_date('2013-09-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','09',89765,90567,0,1,sysdate,112.54,'1',to_date('2013-10-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','10',90567,93932,0,1,sysdate,76.21,'1',to_date('2013-11-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','11',93932,95076,0,1,sysdate,76.25,'1',to_date('2013-12-14','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,2,1,3,'2012','12',95076,99324,0,1,sysdate,44.51,'1',to_date('2014-01-14','yyyy-MM-dd'),2 );

insert into t_account values( seq_account.nextval,100,1,3,'2012','12',95076,99324,0,1,sysdate,44.51,'1',to_date('2014-01-01','yyyy-MM-dd'),2 );
insert into t_account values( seq_account.nextval,101,1,3,'2012','12',95076,99324,0,1,sysdate,44.51,'1',to_date('2015-01-01','yyyy-MM-dd'),2 );

update t_account set usenum=num1-num0;
update t_account set money=usenum*2.45;
commit;