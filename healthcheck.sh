#!/bin/bash

SERVICE="nginx"

echo "== 🔍 Проверка на $SERVICE..."

if pgrep $SERVICE > /dev/null; then
    echo "✅ $SERVICE работи."
else
    echo "❌ $SERVICE НЕ работи!"
    echo "🔁 Рестартиране на $SERVICE..."
    sudo systemctl restart $SERVICE

    # Проверка след рестарт
    if pgrep $SERVICE > /dev/null; then
        echo "✅ $SERVICE стартира успешно!"
    else
        echo "⚠️ $SERVICE не можа да се стартира."
    fi
fi

