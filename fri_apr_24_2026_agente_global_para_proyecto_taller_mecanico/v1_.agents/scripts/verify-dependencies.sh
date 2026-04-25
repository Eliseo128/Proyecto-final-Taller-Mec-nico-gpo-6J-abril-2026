#!/bin/bash

echo "🔍 Verificando dependencias..."

# Flutter
echo -n "Flutter: "
if command -v flutter &> /dev/null; then
  flutter --version
else
  echo "❌ NO INSTALADO"
  exit 1
fi

# Dart
echo -n "Dart: "
if command -v dart &> /dev/null; then
  dart --version
else
  echo "❌ NO INSTALADO"
  exit 1
fi

# Firebase CLI
echo -n "Firebase CLI: "
if command -v firebase &> /dev/null; then
  firebase --version
else
  echo "❌ NO INSTALADO"
  exit 1
fi

# Doctor Flutter
echo ""
echo "📊 Flutter Doctor:"
flutter doctor

echo ""
echo "✅ Todas las herramientas están instaladas"