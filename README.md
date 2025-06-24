### 🚀 kaia Bot Setup Guide

Welcome to the bot setup guide! Follow the steps below to install and configure the bot correctly. This guide is designed for new users, with clear explanations for each step.

> 📱 **For Mobile Users (Termux):** [View the guide here](https://github.com/MeoMunDep/Guides-for-using-my-script-on-termux)

---

## Table of Contents

1. [System Requirements](#system-requirements)
2. [Installing the Bot](#installing-the-bot)
3. [Bot Configuration](#bot-configuration)
4. [Running the Bot](#running-the-bot)
5. [Updating the Bot](#updating-the-bot)
6. [Contact & Support](#contact--support)

---

## System Requirements

Before running the bot, make sure you have installed:

- **Node.js** (Version: `22.11.0`)
- **npm** (Version: `10.9.0`)
- **Git**
- **Docker** _(Optional)_

📥 **Node.js & npm:** [Download](https://t.me/KeoAirDropFreeNe/257/1462)

📥 **Git:** [Download](https://t.me/KeoAirDropFreeNe/257/60831)

---

## Installing the Bot

<details>
<summary><strong>🔧 Install via Git</strong></summary>

```bash
git clone https://github.com/MeoMunDep/kaia.git
cd kaia
npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils https-proxy-agent socks-proxy-agent ethers web3 ws
```

</details>

<details>
<summary><strong>🧰 Manual Installation</strong></summary>

1. Download and extract the bot manually.
2. Run the same `npm install` command as above.

</details>

<details>
<summary><strong>🐳 Install via Docker</strong></summary>

```bash
docker build -t kaia-image .
docker run -d --name kaia-container -v $(pwd)/logs:/app/logs kaia-image
```

> 💡 On **Windows CMD**, use `%cd%` instead of `$(pwd)`

</details>

---

## Bot Configuration

<details open>
<summary><strong>📜 1. <code>configs.json</code> - Main Configuration</strong></summary>

```json
{
  "rotateProxy": false,
  "skipInvalidProxy": true,
  "proxyRotationInterval": 2,
  "delayEachAccount": [1, 1],
  "timeToRestartAllAccounts": 300,
  "howManyAccountsRunInOneTime": 10,
  "doTasks": true,
  "upgradeBoosts": true,
  "autoSpin": true,
  "autoUpgrade": true,
  "lvlToSpin": 4
}
```

| **Parameter Name**            | **Type**           | **Default** | **Current Value** | **Description**                                  |
| ----------------------------- | ------------------ | ----------- | ----------------- | ------------------------------------------------ |
| `rotateProxy`                 | `boolean`          | `false`     | `false`           | Enable proxy rotation between accounts           |
| `skipInvalidProxy`            | `boolean`          | `false`     | `true`            | Skip account if its proxy is invalid             |
| `proxyRotationInterval`       | `number`           | `2`         | `2`               | Minutes between proxy rotations                  |
| `delayEachAccount`            | `[number, number]` | `[5, 8]`    | `[1, 1]`          | Random delay range (in seconds) between accounts |
| `timeToRestartAllAccounts`    | `number`           | `300`       | `300`             | Time (in seconds) before restarting all accounts |
| `howManyAccountsRunInOneTime` | `number`           | `100`       | `10`              | Number of accounts to run in parallel            |
| `doTasks`                     | `boolean`          | `true`      | `true`            | Whether to perform main tasks                    |
| `playGames`                   | `boolean`          | `true`      | —                 | Whether to play games automatically              |
| `referralCodes`               | `string[]`         | `[""]`      | —                 | Optional referral code                           |
| `upgradeBoosts`               | `boolean`          | —           | `true`            | _(Not documented — custom)_                      |
| `autoSpin`                    | `boolean`          | —           | `true`            | _(Not documented — custom)_                      |
| `autoUpgrade`                 | `boolean`          | —           | `true`            | _(Not documented — custom)_                      |
| `lvlToSpin`                   | `number`           | —           | `4`               | _(Not documented — custom)_                      |

</details>

<details>
<summary><strong>🗂️ 2. <code>datas.txt</code> - User Data</strong></summary>

📥 [Get file from Telegram](https://t.me/KeoAirDropFreeNee/1586)

```txt
query_id.../user...
query_id.../user...
query_id.../user...
```

</details>

<details>
<summary><strong>🌐 3. <code>proxies.txt</code> - Proxy List</strong></summary>

📥 [Free proxy from Webshare](https://www.webshare.io/?referral_code=4l5kb3glsce7)

```txt
host:port
http://host:port
socks5://user:pass@host:port
...
```

</details>

<details>
<summary><strong>💼 4. <code>wallets.txt</code> - Wallet List</strong></summary>

📥 [Generate wallets here](https://github.com/MeoMunDep/Automatic-Ultimate-Create-Wallets-for-Airdrop)

```txt
0xabc123...
0xdef456...
...
```

</details>

---

## Running the Bot

<details open>
<summary><strong>🪟 Run on Windows (.bat)</strong></summary>

1. Double-click `run.bat`
2. It auto-updates, installs dependencies, and runs the bot.

> If it fails, right-click → **Run as Administrator**
> Or run from CMD:

```cmd
run.bat
```

</details>

<details>
<summary><strong>🐧 Run on Linux/macOS (.sh)</strong></summary>

```bash
chmod +x run.sh
./run.sh
```

</details>

<details>
<summary><strong>🐳 Run with Docker</strong></summary>

```bash
docker stop kaia-container 2>/dev/null && docker rm kaia-container 2>/dev/null
docker build -t kaia-image .
docker run -d --name kaia-container -v $(pwd)/logs:/app/logs kaia-image
```

> Later restart:

```bash
docker start kaia-container
```

</details>

---

## Updating the Bot

<details>
<summary><strong>🔄 If installed via Git</strong></summary>

```bash
cd kaia
git pull origin main
npm install
```

</details>

<details>
<summary><strong>🐳 If using Docker</strong></summary>

```bash
docker stop kaia-container
docker rm kaia-container
docker build -t kaia-image .
docker run -d --name kaia-container kaia-image
```

</details>

---

## Contact & Support

- **Support me via** [Referral Link](https://t.me/kaiaplaybot/app?startapp=ref-mu11540993v1dlk)
- **Donate:** [Donate Here](https://t.me/KeoAirDropFreeNe/312/27801)
- **Contact (Work):** [@MeoMunDep](https://t.me/MeoMunDep)
- **Support Group:** [Join here](https://t.me/KeoAirDropFreeNe)
- **Updates Channel:** [View channel](https://t.me/KeoAirDropFreeNee)
- **YouTube:** [Watch here](https://www.youtube.com/@keoairdropfreene)
- **Instagram:** [Follow](https://www.instagram.com/meomundep)
- **Tiktok:** [Follow](https://www.tiktok.com/@meomundep)

---

⚠️ **Disclaimer**: This code is provided "as is" without any warranties. Use it at your own risk. You are solely responsible for any consequences arising from its use. Redistribution or sale of this code in any form is strictly prohibited.

✨ Thank you for using the bot, hope you earn from my scripts! Good luck! 🚀
