@echo off

@echo Author: Deri Kurniawan

set username=""
set password=""
set dst="http://192.168.1.1"
set popup="true"
set target=""
set redirect="https://deri-kurniawan.github.io/autologin/internet-status.html"

@REM <form name="sendin" action="http://labkomti.net/login" method="post">
@REM 	<input type="hidden" name="username" value="mhs" />
@REM 	<input type="hidden" name="password" value="mhs987" />
@REM 	<input type="hidden" name="dst" value="http://192.168.1.1/" />
@REM 	<input type="hidden" name="popup" value="true" />
@REM 	<button type="submit">Login</button>
@REM </form>

@echo connecting...

timeout 5

curl -d "username=%username%&password=%password%&dst=%dst%" -H "Content-Type: application/x-www-form-urlencoded" -X POST %target% && start %redirect%
