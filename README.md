# 🛠️ Static IP Configuration Script

This is a Bash script to **automate the configuration of a static IP address** on Linux systems using `nmcli` (NetworkManager CLI).

---

## 📋 Features

- Automatically creates or modifies an Ethernet connection
- Sets a static IP address, subnet mask, gateway, and DNS
- Restarts the network connection
- Displays the final network configuration

---

## 📦 Requirements

- Linux distribution with **NetworkManager**
- `nmcli` tool installed (default with NetworkManager)
- `sudo` privileges

---

## 🧪 Tested On

- Kali Linux
- Ubuntu
- Debian (with NetworkManager installed)

---

## 🚀 Usage

### 1. Clone the repository:
```bash
git clone https://github.com/Abdel-3aziz/static-ip-script.git
cd static-ip-script
