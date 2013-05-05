Demo Application
================

Demo Application Showcase the different between implementation.

  - Traditional w/ little javascript
  - Javescript / JQuery without used of any framework
  - Javascript structure in MVC pattern using Angular framework


Running From Ecplise
---------------------
  - Import project as exsting maven project (File -> Import -> Existing Maven Project)
  - Right click tomcat.launch > Run As -> Tomcat
  - open browser to http://localhost:8080/demo

Running From Console
--------------------
 - mvn tomcat7:run
 - open browser to http://localhost:8080/demo

Additional Notes
----------------
 - System using H2 in memory database that gets reinitialize everytime the application is restarted
 - Initial data for H2 is located at src/main/resources/data/data.sql
 - Not all best practices were follow when create this app.