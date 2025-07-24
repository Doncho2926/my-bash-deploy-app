#!/bin/bash

set -e  # Спира при грешка

echo "🔁 CI/CD PIPELINE СТАРТИРАН"

echo "📦 Инсталиране на зависимости (симулация)"
sleep 1
mkdir -p build/
echo "Hello World" > build/app.txt

echo "🧪 Тест: Проверка дали файлът съществува"
if [ -f build/app.txt ]; then
    echo "✅ Тест премина: build/app.txt съществува"
else
    echo "❌ Тест неуспешен!"
    exit 1
fi

echo "🏗️ Build процес: Архивиране"
tar -czf build/app.tar.gz build/app.txt

echo "🚀 Deploy (симулация)"
cp build/app.tar.gz deploy_artifact.tar.gz

echo "✅ CI/CD процесът завърши успешно!"
