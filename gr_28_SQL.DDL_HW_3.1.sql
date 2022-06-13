--SQL_DDL
--Первая часть.

--Таблица employees

--1)Создать таблицу employees
--id. serial primary key,
--employee_name. Varchar(50), not null

create table employees(
    id serial primary key,
    employee_name Varchar(50) not null
);



--2)Наполнить таблицу employee 70 строками.

insert into employees(employee_name)
  values ('Ivanov'),
         ('Ivanova'),  
         ('Sanova'), 
         ('Sanov'), 
         ('Anova'),
         ('Anov'),
         ('Fanova'),
         ('Fanov'),
         ('Wanova'),
         ('Ranova'),
         ('Ranov'),
         ('Tanova'),
         ('Tanov'),
         ('Panova'),
         ('Panov'),
         ('San'),
         ('Nova'),
         ('Sano'),
         ('Znova'),
         ('Jano'),
         ('Bova'),
         ('Banova'),
         ('Manova'),
         ('Manov'),
         ('Nanova'),
         ('Nanov'),
         ('Hanova'),
         ('Hanov'),
         ('Kanova'),
         ('Kanov'),
         ('Kano'),
         ('Kan'),
         ('Lanova'),
         ('Lano'),
         ('Lan'),
         ('Ganova'),
         ('Ganov'),
         ('Gan'),
         ('Danova'),
         ('Danov'),
         ('Dan'),
         ('Bano'),
         ('Banova'),
         ('Banov'),
         ('Canova'),
         ('Canov'),
         ('Cano'),
         ('Can'),
         ('Rova'),
         ('Tova'),
         ('Jova'),
         ('Enova'),
         ('Enov'),
         ('Unova'),
         ('Unov'),
         ('Inov'),
         ('Ianova'),
         ('Lova'),
         ('Sanora'),
         ('Manora'),
         ('Tanoka'),
         ('Sarova'),
         ('Sarov'),
         ('Tarova'),
         ('Tarov'),
         ('Sakova'),
         ('Sakov'),
         ('Rakova'),
         ('Rakov'),
         ('Bakova');

-- select * from employees;
        
    --Таблица salary

--3)Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null  

 create table salary(
    id Serial  primary key,
    monthly_salary Int not null 
 );

/*4)Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
 */       

insert into salary(monthly_salary)
   values (1000),
          (1100),
          (1200),
          (1300),
          (1400),
          (1500),
          (1600),
          (1700),
          (1800),
          (1900),
          (2000),
          (2100),
          (2200),
          (2300),
          (2400);
         
         
 /* Таблица employee_salary

5)Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
 */      
          
 create table employee_salary(
    id Serial  primary key,
    employee_id Int not null unique,
    salary_id Int not null
 );


/*6)Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
id employee_id salary_id
1   3            7
2   1            4
3   5            9
4   40           13
5   23           4
6   11           2
7   52           10
8   15           13
9   26           4
10  16           1
11  33           7
..  ..           ..
*/

insert into employee_salary(employee_id,salary_id)
  values (3,7),
         (1,4),
         (5,9),
         (40,13),
         (23,4),
         (11,2),
         (52,10),
         (15,13),
         (26,4),
         (16,1),
         (33,7),
         (39,2),
         (38,6),
         (21,11),
         (22,1),
         (13,14),
         (14,6),
         (57,7),
         (51,8),
         (60,2),
         (31,5),
         (42,15),
         (69,9),
         (68,7),
         (67,13),
         (66,12),
         (65,10),
         (64,11),
         (63,7),
         (9,15),
         (72,7),
         (79,7),
         (80,7),
         (88,7),
         (99,7),
         (77,7),
         (90,7),
         (96,7),
         (86,7),
         (75,7);
 
 --select * from employee_salary;
        
/*Таблица roles

7)Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
*/
   
create table roles(
   id Serial  primary key,
 role_name int not null unique
);

--8)Поменять тип столба role_name с int на varchar(30)

alter table roles
alter column role_name type varchar (30);

/*9)Наполнить таблицу roles 20 строками:
id        role_name
1         Junior Python dev
2         Middle Python dev
3         Senior Python dev
4         Junior Java dev
5         Middle Java dev
6         Senior Java dev
7         Junior JavaScript dev
8         Middle JavaScript dev
9         Senior JavaScript dev
10        Junior Manual QA engineer
11        Middle Manual QA engineer
12        Senior Manual QA engineer
13        Project Maneger
14        Designer
15        HR
16        CEO
17        Sales manager
18        Junior Atomation QA engineer
19        Middle Atomation QA engineer
20        Senior Atomation QA engineer
*/

insert into roles(role_name)
 values ('Junior Python dev'),
        ('Middle Python dev'),
        ('Senior Python dev'),
        ('Junior Java dev'),
        ('Middle Java dev'),
        ('Senior Java dev'),
        ('Junior JavaScript dev'),
        ('Middle JavaScript dev'),
        ('Senior JavaScript dev'),
        ('Junior Manual QA engineer'),
        ('Middle Manual QA engineer'),
        ('Senior Manual QA engineer'),
        ('Project Maneger'),
        ('Designer'),
        ('HR'),
        ('CEO'),
        ('Sales manager'),
        ('Junior Atomation QA engineer'),
        ('Middle Atomation QA engineer'),
        ('Senior Atomation QA engineer');
       
 --select * from  roles;
   
      /* Таблица roles_employee

10)Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
*/
       
 create table roles_employee(
    id Serial  primary key,
    employee_id Int not null unique,
    role_id Int not null,
    foreign key (employee_id)
     references employees(id),
    foreign key (role_id)
     references roles(id)
 );

/*11)Наполнить таблицу roles_employee 40 строками:
id  employee_id  role_id
1     7           2
2     20          4
3     3           9
4     5           13
5     23          4
6     11          2
7     10          9
8     22          13
9     21          3
10    34          4
11    6           7
..    ..          ..
*/

insert into roles_employee (employee_id,role_id)
  values (7,2),
         (20,4),
         (3,9),
         (5,13),
         (23,4),
         (11,2),
         (10,9),
         (22,13),
         (21,3),
         (34,4),
         (6,7),
         (1,20),
         (70,19),
         (25,11),
         (30,5),
         (32,8),
         (40,1),
         (42,2),
         (43,3),
         (44,4),
         (39,4),
         (45,5),
         (46,6),
         (47,7),
         (48,8),
         (49,9),
         (50,10),
         (51,11),
         (52,12),
         (53,3),
         (54,4),
         (55,8),
         (56,1),
         (57,1),
         (58,1),
         (60,4),
         (63,2),
         (66,19),
         (68,20),
         (69,18);
 
select * from roles_employee;


        
        
        
        
        
            

         
         
         







