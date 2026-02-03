#!/bin/bash

# سكريبت محسّن لرفع المشروع مع دعم المصادقة
# استخدم: bash push_with_auth.sh

cd "$(dirname "$0")"

echo "=========================================="
echo "رفع المشروع بشكل تدريجي مع المصادقة"
echo "=========================================="
echo ""

# التحقق من الـ remote
echo "التحقق من إعدادات الـ remote..."
git remote -v
echo ""

# إعداد credential helper إذا لم يكن موجوداً
if ! git config --global credential.helper > /dev/null 2>&1; then
    echo "⚙️  إعداد Git credential helper..."
    git config --global credential.helper store
    echo "✅ تم إعداد credential helper"
    echo ""
fi

# طريقة 1: محاولة الرفع مباشرة (سيطلب بيانات الاعتماد)
echo "📤 محاولة رفع جميع الـ commits..."
echo "💡 سيُطلب منك إدخال اسم المستخدم وكلمة المرور (أو Personal Access Token)"
echo ""

# رفع كل الـ commits دفعة واحدة
if git push origin main --verbose; then
    echo ""
    echo "✅ تم رفع جميع الـ commits بنجاح!"
    echo "=========================================="
    echo "🎉 تم رفع المشروع بنجاح!"
    echo "=========================================="
    exit 0
else
    echo ""
    echo "❌ فشل الرفع. جرب الطرق البديلة أدناه:"
    echo ""
    echo "الطريقة البديلة 1: استخدام Personal Access Token"
    echo "---------------------------------------------------"
    echo "1. اذهب إلى: https://github.com/settings/tokens"
    echo "2. أنشئ Personal Access Token جديد (Classic)"
    echo "3. استخدم الأمر التالي مع وضع TOKEN الخاص بك:"
    echo "   git push https://YOUR_TOKEN@github.com/izukuX2/AnimeHatWepsite.git main"
    echo ""
    echo "الطريقة البديلة 2: استخدام SSH"
    echo "---------------------------------------------------"
    echo "1. تأكد من إعداد SSH key على GitHub"
    echo "2. استخدم الأمر:"
    echo "   git remote set-url origin git@github.com:izukuX2/AnimeHatWepsite.git"
    echo "   git push origin main"
    echo ""
    exit 1
fi
