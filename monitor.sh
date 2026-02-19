touch report.txt
echo "                                                            1) User: " >> report.txt
hostname >> report.txt
echo "                                                            2) Current User: " >> report.txt
whoami >> report.txt
echo "                                                            3) Date: " >> report.txt
date >> report.txt
echo "                                                            4) Uptime: " >> report.txt
uptime >> report.txt
echo "                                                            5) Version of core: " >> report.txt
uname -r >> report.txt
echo "                                                            6) Core info: " >> report.txt
cat /proc/cpuinfo | grep "model name" | head -n 1 >> report.txt
echo "                                                            7) RAM: : " >> report.txt
free -h >> report.txt
echo "                                                            8) Average load of system: " >> report.txt
cat /proc/loadavg >> report.txt
echo "                                                            9) Top load process: " >> report.txt
ps aux --sort=-%cpu | head -n 6 >> report.txt
echo "                                                            10) Top RAM process: " >> report.txt
ps aux --sort=-%mem | head -n 6 >> report.txt
echo "                                                            11) Disk info: " >> report.txt
df -h >> report.txt
echo "                                                            12) IP info: " >> report.txt
ifconfig  >> report.txt
echo "                                                            13) Last auth: " >> report.txt
last -n 5 student >> report.txt
