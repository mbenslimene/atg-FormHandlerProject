# Description

web Application created by oracle at framework 11.2 that demonstrate the basic concept of repository item relationship (OnetoMany, ManytoMany...) and using the Out of the box From Handler to create, update delete items.

## Features

This project consists in realizing an ATG WEB module which implements the relations between the item-decriptor .
We will define 6 item-descriptor: A: Driver, B: License, C: Destination, D: Vehicle, E: Accident, F: Police fine.

The relationships between these entities are as follows:
- Relation 1-1 : A & B
- Relation 1-n List : A & C
- Relation n-n : A & D
- Relation 1-n Set : A & E
- Relation 1-n Map : A & F

This relation ship is mentioned in this file `/config/quickstart/repository/NewRepBD.xml`

- I have implemented  a droplet to create a random number of drivers with a random list of accident, police fine.
Each item descriptor is generated with a random value.
- I have create a scheduled job on ATG (planned each 10 minutes ) to create a random list of drivers, accident, police fine
- I have displayed the list of Drivers on JSP page by 20 elements orders by first name & last name and add a pagination functionality to display the next and preview 20 drivers, When click on driver, the detail of this driver will be displayed, on this page we can edit, delete a driver, add/remove a list of accident, police fine…
- On each modification of Licence, a mail will be sent (driver has a property mail)
 
Note : I have used OOB droplet to display data from repository, RespositoryFormHandler to update data 

- The mail functionality works if you update License Item information (same implementation of the other items), to use this foctionalite:
you should disable firewall on your system (machine in with your test this application) add your email and password to this file `SMTPEmail.properties` in this directory `config/atg/dynamo/service/SMTPEmail.properties` and lower the security of your mail account so that the mail will be automatically send. 
Notice that the mail will be sent to my address "bssmahdi@gmail.com".
- For Database generation, you should open this page `CDGeneratorBD.jsp` which contain a Custom Droplet that generate random elements in our database.

## Installation

This project requires DSS DCS DPS.
it runs on ATG11.1 with Oracle 11 XE, jdk 1.7_0 and Jboss EAP 6.1
DYNAMO_HOME set to C:\ATG\ATG11.1\home 
Deployment descriptor under quickstart.xml need to be deployed to jboss standalone/configuration

-- Database creation
Create an oracle user with all privileges named QUICKSTART

run: SQLPLUS sys as sysdba 
create user QUICKSTART identified by "atg";
grant all privileges to QUICKSTART;

run the patch.sql file under sql. It remove a warning bug under JBOSS Transacation Manager and Oralce XE
connect as QUICKSTART/atg
run quickstart-all.sql under sql folder.
run the sql commandes in the file `sql\Create Drivers sql commandes.txt` to create all the driver items.

-- Default listening port is `http://localhost:8480/QuickStart`

## Screenshots

`Show All Drivers`

![Alt text](/screenshots/ShowAllDrivers.PNG?raw=true "Show All Drivers")

`Detail Driver`

![Alt text](/screenshots/DetailDriver.PNG?raw=true "Detail Driver")

`Edit`

![Alt text](/screenshots/Edit.PNG?raw=true "Edit")


## Team

[[Mahdi Ben Selimene]](https://twitter.com/mahdochy) |
 [[Malek Ayadi]](https://github.com/malekayadi6) |
 [[Raja Kacem]](https://github.com/SnapCode007)
---|---|---


