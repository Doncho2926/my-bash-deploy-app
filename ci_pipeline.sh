#!/bin/bash

set -e  # Спира скрипта при първа грешка

echo "🔁 == CI/CD PIPELINE СТАРТИРАН =="

echo "📦 == Инсталация на зависимости =="
sleep 1
# Симулация: инсталация (напр. npm install, pip install и т.н.)
echo "npm install (симулация)"

echo "🧪 == Стартиране на тестове =="
sleep 1
# Симулиране на тестовете
echo "npm test (симулация)"
# exit 1   # ← Можеш да махнеш коментара, за да симулираш провал
#echo "Грешка при тестване!"

echo "🏗️ == Build процес =="
sleep 1
echo "npm run build (симулация)"

echo "🚀 == Deploy =="
sleep 1
echo "rsync / scp / docker push (симулация)"

echo "✅ CI/CD процесът мина успешно!"

