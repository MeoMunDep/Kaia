@echo off
title kaia Bot by @MeoMunDep
color 0A

cd %~dp0

echo Checking for bot updates...
git pull origin main > nul 2>&1
echo Bot updated!

echo Checking configuration files...

if not exist configs.json (
    echo {> configs.json
    echo   "rotateProxy": false,>> configs.json
    echo   "skipInvalidProxy": true,>> configs.json
    echo   "proxyRotationInterval": 2,>> configs.json
    echo   "delayEachAccount": [1, 1],>> configs.json
    echo   "timeToRestartAllAccounts": 300,>> configs.json
    echo   "howManyAccountsRunInOneTime": 10,>> configs.json
    echo   "doTasks": true,>> configs.json
    echo   "upgradeBoosts": true,>> configs.json
    echo   "autoSpin": true,>> configs.json
    echo   "autoUpgrade": true,>> configs.json
    echo   "lvlToSpin": 4>> configs.json
    echo }>> configs.json
    echo Created configs.json
)

(for %%F in (datas.txt proxies.txt) do (
    if not exist %%F (
        type nul > %%F
        echo Created %%F
    )
))

echo Configuration files checked.

echo Checking dependencies...
if exist "..\node_modules" (
    echo Using node_modules from parent directory...
    cd ..
    CALL npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils https-proxy-agent socks-proxy-agent 
    cd %~dp0
) else (
    echo Installing dependencies in current directory...
    CALL npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils https-proxy-agent socks-proxy-agent 
)
echo Dependencies installation completed!

echo Starting the bot...
node meomundep

pause
exit
