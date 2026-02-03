# دليل رفع المشروع إلى GitHub

## المشكلة
Git يحتاج إلى مصادقة للوصول إلى GitHub.

## الحلول

### ✅ الحل الأسهل: استخدام Personal Access Token

1. **أنشئ Personal Access Token:**
   - اذهب إلى: https://github.com/settings/tokens
   - اضغط "Generate new token" → "Generate new token (classic)"
   - اختر الصلاحيات: `repo` (كامل)
   - انسخ الـ Token

2. **استخدم الـ Token في الرفع:**
   ```bash
   cd ~/Development/website
   git push https://YOUR_TOKEN@github.com/izukuX2/AnimeHatWepsite.git main
   ```
   (استبدل `YOUR_TOKEN` بالـ Token الذي نسخته)

### ✅ الحل البديل 1: إدخال بيانات الاعتماد عند الطلب

```bash
cd ~/Development/website
git push origin main
```

عند الطلب:
- **Username:** `izukuX2`
- **Password:** استخدم Personal Access Token (ليس كلمة المرور العادية)

### ✅ الحل البديل 2: استخدام SSH

إذا كان لديك SSH key مُعد على GitHub:

```bash
cd ~/Development/website
git remote set-url origin git@github.com:izukuX2/AnimeHatWepsite.git
git push origin main
```

### ✅ الحل البديل 3: حفظ بيانات الاعتماد

```bash
cd ~/Development/website
git config --global credential.helper store
git push origin main
```

أدخل بيانات الاعتماد مرة واحدة، وسيتم حفظها.

---

## رفع تدريجي (إذا انقطع الإنترنت)

إذا انقطع الإنترنت أثناء الرفع، يمكنك إعادة المحاولة:

```bash
cd ~/Development/website
git push origin main
```

Git سيكمل من حيث توقف تلقائياً.

---

## ملاحظات

- إذا كان لديك **Two-Factor Authentication (2FA)** مفعّل، يجب استخدام **Personal Access Token** وليس كلمة المرور
- الـ Token يُستخدم مرة واحدة فقط عند الطلب، ثم يتم حفظه
- يمكنك حذف الـ Token من إعدادات GitHub بعد الانتهاء إذا أردت
