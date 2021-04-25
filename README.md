
# project
<h2>What is CompanyEmployee project?</h2>
This can be a web site of any company.
CompanyEmployee project is made for owner/Hr/manager of company who needs the data of company employee.
In this project the Admin tag is active rest of the tags are need to be linked with other pages.
This project is made using jsp,servlet and sql oracle database.

<h2>Operations :</h2>
You can perform various operations like:
1 Add
2 delete
3 update
On employee of the company

<h2>Steps To install this project on eclipse:</h2>
<li> Create Dynamic web Project</li>
<li> Right click on your project ->build path ->configure build path ->add external jar ->select servlet-api</li> 
<li> In WebContent/WebINF/lib folder paste the ojdbc14 jar file</li>
<li> Copy all jsp,html file and folders from WebContent folder of my project and paste it all in WebContent folder of your project.</li>
<li> Create Packages in src folder like my project structure</li>
<li> Paste all programs into your projects.</li> 
<li> On database you need to create two tables admin and employee</li>
<li> Admin Table</li> 
create table admin(
ad_id number(38) primary key,
ad_name varchar(255),
ad_address varchar(255),
ad_contact number(38),
ad_salary number(38),
ad_email varchar(255),
ad_uname varchar(255),
ad_password varchar(255))
<li>Employee Table</li>
create table employee(
emp_id number(38) primary key,
emp_name varchar(255),
emp_address varchar(255),
emp_contact number(38),
emp_dept varchar(255),
emp_salary number(38),
emp_email varchar(255),
emp_uname varchar(255),
emp_password varchar(255))
<br>
<br>
<h2>Screenshot of projects :</h2>
<h3>Home page</h3>
![Screenshot (8)](https://user-images.githubusercontent.com/69745859/115980378-e7168180-a5a9-11eb-9f30-eab16a6ca834.png)

