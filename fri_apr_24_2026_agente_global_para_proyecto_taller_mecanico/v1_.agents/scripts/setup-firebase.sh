#!/bin/bash

echo "🔥 Configurando Firebase..."

# Login
echo "1️⃣  Iniciando sesión en Firebase..."
firebase login

# Crear proyecto
echo ""
echo "2️⃣  Crear proyecto en Firebase Console:"
echo "   https://console.firebase.google.com"
echo ""
read -p "Ingresa el ID del proyecto Firebase: " PROJECT_ID

# Inicializar Firebase
firebase use $PROJECT_ID

# Crear app Android
echo ""
echo "3️⃣  Agregar app Android en Firebase Console"
echo "   Paquete: com.example.tallermec"
echo "   Descargar google-services.json"
echo "   Guardar en: android/app/"
read -p "Presiona Enter cuando hayas descargado google-services.json..."

# Crear Firestore
echo ""
echo "4️⃣  Crear Firestore Database"
echo "   - Mode: Modo prueba (test)"
echo "   - Ubicación: us-central1"
firebase firestore:indexes --project=$PROJECT_ID

echo ""
echo "✅ Firebase configurado"
echo "📝 Siguiente: flutter pub get"