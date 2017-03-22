This project is used as a starting template.
It requires DCS, any other module needs to be added if requested.
it runs on ATG11.1 with Oracle 11 XE, jdk 1.7_0 and Jboss EAP 6.1
DYNAMO_HOME set to C:\ATG\ATG11.1\home (use junction if required)
deployment descriptor under quickstart.xml need to be deployed to jboss standalone/configuration
Install Jrebel and install a license (use facebook/google+/twitter)

-- Database creation
Create an oracle user with all privileges named QUICKSTART

run: SQLPLUS sys as sysdba 
create user QUICKSTART identified by "atg";
grant all privileges to QUICKSTART;

run the patch.sql file under sql. It remove a warning bug under JBOSS Transacation Manager and Oralce XE
connect as QUICKSTART/atg
run quickstart-all.sql under sql folder.

--------
Create an external tool under Eclipse that runs assembly and deployment to jboss deployment folder.

with location of C:\ATG\ATG11.1\home\bin\runAssembler.bat
Working Directory:
${env_var:DYNAMO_HOME}

and arguments:
-jboss -overwrite -server ${project_name} ${env_var:JBOSS_HOME}\standalone\deployments\${project_name}\${project_name}.ear   -m ${project_name}

Set Env Variables : DYNAMO_HOME JAVA_HOME JBOSS_HOME and JAVA_OPTS in the ENV TAB of tool conifuration.
.
Select QUICKSTART Project in the Project Explorer and run the Exteral tool you named ATG Deployer.
this should deploys QuickStart Project to JBOSS dep forlder.

Default login for dyn/admin is admin/admin, update password to Welcome01
----------
Do not forget to add QuickStart.ear.deployed under standalone/deployement/QuickStart/ folder so jboss deploys the exploded ear
The same for ojdbc6.jar under the same folder.

default listening port is http://localhost:8480/QuickStart
Use URLHammer.sh to test server load.
	
