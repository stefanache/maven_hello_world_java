@echo off
cls

java -version |more
rem pause
echo %JAVA_HOME%
rem pause
mvn -version |more
rem pause
echo %M2_HOME%
rem pause
echo %MAVEN_HOME%
rem pause

pause

mvn clean |more

del target < y.dat 
mvn install |more

mvn package |more 


REM set groupId = "mySRC" 
REM set artifactId = "helloworld"
REM set artifact_version = "1.0.0-SNAPSHOT"
REM set src_java_groupId_Class_java="HelloWorld"
REM java -cp target/%artifactId%-%artifact_version%.jar %groupId%.%artifactId%.%src_java_groupId_Class_java% |more

java -cp target/helloworld-1.0.0-SNAPSHOT.jar mySRC.helloworld.HelloWorld |more

pause
