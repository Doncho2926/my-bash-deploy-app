#!/bin/bash

# Проверка дали сме в Git репо
if [ ! -d .git ]; then
  echo "❌ Не се намираш в Git репо. Излез."
  exit 1
fi

echo "==➡️ Свалям последните промени от Git..."
git pull origin main || echo "⚠️ Продължаваме с локалния код"

echo "==🐳 Спирам текущите контейнери..."
docker-compose down

echo "==🔧 Създавам нови..."
docker-compose up -d --build

echo "✅ Приложението работи на http://localhost:8080"

