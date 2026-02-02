@echo off
setlocal enabledelayedexpansion
set MAVEN_PROJECTBASEDIR=%~dp0
if "%MAVEN_PROJECTBASEDIR:~-1%"=="\" set MAVEN_PROJECTBASEDIR=%MAVEN_PROJECTBASEDIR:~0,-1%
set WRAPPER_DIR=%MAVEN_PROJECTBASEDIR%\.mvn\wrapper
set JAR_FILE=%WRAPPER_DIR%\maven-wrapper.jar
if not exist "%JAR_FILE%" (
  echo Maven wrapper not found, downloading...
  if not exist "%WRAPPER_DIR%" mkdir "%WRAPPER_DIR%"
  powershell -Command "Invoke-WebRequest -Uri 'https://repo.maven.apache.org/maven2/io/takari/maven-wrapper/0.5.6/maven-wrapper-0.5.6.jar' -OutFile '%JAR_FILE%'"
  if not exist "%JAR_FILE%" (
    echo Failed to download maven-wrapper.jar. Please download it manually to %JAR_FILE%
    exit /b 1
  )
)

java -Dmaven.multiModuleProjectDirectory="%MAVEN_PROJECTBASEDIR%" -cp "%JAR_FILE%" org.apache.maven.wrapper.MavenWrapperMain %*
endlocal
