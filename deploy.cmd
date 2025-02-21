@echo off
echo Copying files to WebApplication2 directory...
if not exist "%DEPLOYMENT_TARGET%\WebApplication2" mkdir "%DEPLOYMENT_TARGET%\WebApplication2"
xcopy /Y /E /I "%DEPLOYMENT_SOURCE%\site\wwwroot\WebApplication2" "%DEPLOYMENT_TARGET%\WebApplication2\"
if %ERRORLEVEL% NEQ 0 goto error
echo Deployment Successful.
goto end

:error
echo An error has occurred during web site deployment.
exit /b 1

:end
echo Finished successfully.
