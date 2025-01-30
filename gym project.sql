GYM Project

use gym_vg;

create table admin_details(
id INT primary Key AUTO_INCREMENT, 
adminName varchar(50),
adminPassword varchar(50)
);
insert into admin_details(adminName,adminPassword) values('viji', 'viji@123');
desc admin_details;
select * from admin_details;
DELETE FROM admin_details
WHERE id=1;
insert into admin_details(adminName,adminPassword) values('vijayalakshmi', 'viji@123');
select * from admin_details;
