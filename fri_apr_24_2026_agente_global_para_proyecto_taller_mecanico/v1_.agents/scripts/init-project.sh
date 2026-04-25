#!/bin/bash

echo "🚀 Inicializando proyecto TallerMecanico..."

# Crear estructura de carpetas
mkdir -p lib/{screens/automovil,screens/navigation,models,services,widgets,utils,providers}
mkdir -p assets/{images,icons}
mkdir -p test

# Crear archivos iniciales
touch lib/main.dart
touch lib/models/automovil_model.dart
touch lib/models/user_model.dart
touch lib/services/firestore_service.dart
touch lib/services/auth_service.dart
touch lib/services/firebase_init.dart
touch lib/providers/automovil_provider.dart
touch lib/providers/auth_provider.dart
touch lib/screens/home_screen.dart
touch lib/screens/automovil/{automovil_list,automovil_create,automovil_detail,automovil_edit}.dart
touch lib/screens/navigation/main_navigation.dart
touch lib/widgets/{custom_appbar,custom_buttons,custom_dialogs}.dart
touch lib/utils/{constants,validators,helpers}.dart
touch pubspec.yaml

echo "✅ Estructura creada exitosamente"
echo "📝 Siguiente: Configurar pubspec.yaml"