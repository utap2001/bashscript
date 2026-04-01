#!/bin/bash

# 檢查是否以 root 權限執行
if [ "$EUID" -ne 0 ]; then 
  echo "請使用 sudo 執行此腳本"
  exit
fi

echo "開始設定 binder_linux 自動載入..."

# 1. 建立 modules-load.d 設定檔 (告訴系統開機要載入誰)
echo "binder_linux" > /etc/modules-load.d/binder.conf
echo "[完成] 已建立 /etc/modules-load.d/binder.conf"

# 2. 建立 modprobe.d 設定檔 (告訴系統載入時要帶什麼參數)
echo "options binder_linux devices=binder,hwbinder,vndbinder" > /etc/modprobe.d/binder.conf
echo "[完成] 已建立 /etc/modprobe.d/binder.conf"

# 3. 更新 initramfs 以確保設定生效
echo "正在更新 initramfs，請稍候..."
update-initramfs -u

echo "-------------------------------------------"
echo "全部設定完成！請重啟電腦後執行以下指令驗證："
echo "lsmod | grep binder"
echo "-------------------------------------------"
