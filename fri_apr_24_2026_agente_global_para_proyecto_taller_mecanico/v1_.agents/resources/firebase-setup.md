# 🔥 Guía Firebase Setup - TallerMecanico

## Paso 1: Crear Proyecto Firebase

1. Ir a https://console.firebase.google.com
2. Click en "Crear proyecto"
3. Nombre: `tallermec-flutter`
4. Aceptar términos
5. Click "Crear proyecto"

## Paso 2: Agregar App Android

1. En Dashboard → Agregar app → Seleccionar Android
2. **Nombre del paquete**: `com.example.tallermec`
3. **Apodo** (opcional): TallerMec
4. Click "Registrar app"
5. **Descargar** `google-services.json`
6. Guardar en: `android/app/google-services.json`

## Paso 3: Crear Firestore Database

1. En el panel izquierdo → "Firestore Database"
2. Click "Crear base de datos"
3. **Ubicación**: us-central1
4. **Modo de seguridad**: Test
5. Click "Crear"

## Paso 4: Crear Colección `automoviles`

1. En Firestore → "Iniciar colección"
2. **ID**: `automoviles`
3. Agregar primer documento:
   - **ID**: documento automático
   - Campos:
     - `marca`: string → "Toyota"
     - `modelo`: string → "Corolla"
     - `placa`: string → "ABC-123"
     - `anio`: number → 2023
     - `createdAt`: timestamp → actual

## Paso 5: Crear Reglas de Seguridad

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /automoviles/{document=**} {
      allow read, write: if request.auth != null;
    }
  }
}