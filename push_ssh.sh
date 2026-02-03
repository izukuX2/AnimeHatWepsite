#!/bin/bash

# سكريبت لرفع المشروع باستخدام SSH مع تجاوز مشاكل الإعدادات
# استخدم: bash push_ssh.sh

cd "$(dirname "$0")"

echo "=========================================="
echo "رفع المشروع باستخدام SSH"
echo "=========================================="
echo ""

# التأكد من استخدام SSH
git remote set-url origin git@github.com:izukuX2/AnimeHatWepsite.git

echo "التحقق من إعدادات الـ remote..."
git remote -v
echo ""

# محاولة الرفع مع تجاوز مشاكل SSH config
echo "📤 محاولة رفع المشروع..."
echo ""

# استخدام GIT_SSH_COMMAND لتجاوز مشاكل الإعدادات
export GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

if git push origin main --verbose; then
    echo ""
    echo "✅ تم رفع المشروع بنجاح!"
    echo "=========================================="
    exit 0
else
    echo ""
    echo "⚠️  فشل الرفع. جرب الحلول التالية:"
    echo ""
    echo "الحل 1: إصلاح ملف SSH config"
    echo "----------------------------------------"
    echo "sudo chmod 644 /etc/ssh/ssh_config.d/20-systemd-ssh-proxy.conf"
    echo "أو"
    echo "sudo chown root:root /etc/ssh/ssh_config.d/20-systemd-ssh-proxy.conf"
    echo ""
    echo "الحل 2: استخدام HTTPS مع Token"
    echo "----------------------------------------"
    echo "git remote set-url origin https://github.com/izukuX2/AnimeHatWepsite.git"
    echo "git push origin main"
    echo "(سيطلب Personal Access Token)"
    echo ""
    exit 1
fi
