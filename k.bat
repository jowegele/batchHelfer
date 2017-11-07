REM Meine erste Batchdatei, mann is das beschränkt!
@echo off

IF [%1]==[] goto standard 
IF [%1]==[edit] goto edit
IF [%1]==[a] goto a
IF [%1]==[d] goto duckduck
IF [%1]==[g] goto google
IF [%1]==[w] goto wikipedia
IF [%1]==[m] goto maps
IF [%1]==[l] goto leo
IF [%1]==[p] goto dep
IF [%1]==[y] goto yahoo
IF NOT [%1]==[] goto frei
goto ende

:standard
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" www.zeit.de
	goto ende

:edit
	start notepad "c:\WINDOWS\System32\k.bat"

:a
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "http://%2"
	goto ende

:duckduck
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "https://duckduckgo.com/?q= %2+%3+%4+%5+%6 &t=ffsb&ia=qa"
	goto ende

:google
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "www.google.de/search?hl=de&q= %2+%3+%4+%5+%6 &btnG=Google-Suche&meta="
	goto ende

:wikipedia
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "http://%2.wikipedia.org/wiki/Spezial:Search?ns0=1&search=%3+%4+%5&fulltext=Suche"
	goto ende

:maps
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "http://maps.google.de/maps?f=q&hl=de&geocode=&q=%2+%3+%4+&sll=47.15984,2.988281&sspn=14.194963,28.125&ie=UTF8&t=h&z=14"
	goto ende

:leo
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "http://dict.leo.org/%2de?lp=%2de&lang=de&search=%3+%4+%5"
	goto ende

:dep
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "http://www.dep.pl/dict?word=%2&words=&lang=DE"
	goto ende

:yahoo	
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" "http://de.search.yahoo.com/search?p=%2+%3+%4+%5+%6&fr=yfp-t-501&ei=UTF-8&rd=r1"
	goto ende

:frei
	start "C:\Program Files (x86)\Mozilla Firefox\firefox.exe" %1
	goto ende

:ende
   echo.
   exit
