create database VehicleLoan

use VehicleLoan

create table User_Details (User_id int primary key , User_FirstName nvarchar(20) not null ,
User_LastName nvarchar(20) , User_Age numeric(2) check(User_Age>18) , User_DoB date not null , 
User_gender varchar(10) , User_PhoneNum numeric(10) , User_Email nvarchar(250) , User_Address nvarchar(500) ,
User_city varchar(50) , User_state varchar(50) , User_pincode numeric(6) , User_password nvarchar(20) )

create table Employment_Details(user_ref_id int references User_Details(User_id) , 
type_of_emp varchar(50) , annual_sal numeric(20) , existing_emi varchar(10)  )

create table Admin_Details(Admin_id int primary key , Admin_UserName nvarchar(30) not null ,
Admin_password nvarchar(20) , Admin_Email nvarchar(250) , Admin_timestamp datetime default CURRENT_TIMESTAMP )  



