#!/bin/bash

# سكريبت لرفع المشروع بشكل تدريجي
# استخدم: bash push_gradually.sh

cd "$(dirname "$0")"

echo "=========================================="
echo "رفع المشروع بشكل تدريجي"
echo "=========================================="
echo ""

# التأكد من استخدام SSH
echo "⚙️  التأكد من استخدام SSH..."
git remote set-url origin git@github.com:izukuX2/AnimeHatWepsite.git 2>/dev/null || true

# التحقق من الـ remote
echo "التحقق من إعدادات الـ remote..."
git remote -v
echo ""

# رفع كل الـ commits دفعة واحدة (Git سيكمل تلقائياً إذا انقطع الاتصال)
echo "📤 رفع جميع الـ commits..."
echo "💡 إذا انقطع الإنترنت، أعد تشغيل نفس الأمر - Git سيكمل تلقائياً"
echo ""

if git push origin main --verbose; then
    echo ""
    echo "✅ تم رفع جميع الـ commits بنجاح!"
else
    echo ""
    echo "⚠️  حدث خطأ. جرب مرة أخرى:"
    echo "   git push origin main"
    echo ""
    echo "أو إذا استمرت المشكلة، استخدم HTTPS:"
    echo "   git remote set-url origin https://github.com/izukuX2/AnimeHatWepsite.git"
    echo "   git push origin main"
    exit 1
fi

echo ""
echo "=========================================="
echo "🎉 تم رفع المشروع بنجاح!"
echo "=========================================="
