# Proyecto de Login con Google en Flutter

Este es un proyecto de Flutter que implementa autenticación con Google. Cuando el usuario se autentica correctamente, es redirigido a la página de inicio. Si la autenticación falla, se muestra un mensaje de error. El proyecto utiliza el patrón BLoC para la gestión del estado y está estructurado en repositorios y casos de uso.

## Características

- Autenticación con Google.
- Gestión del estado con BLoC.
- Redirección a la página de inicio después de un inicio de sesión exitoso.
- Muestra mensajes de error en caso de fallo en la autenticación.

## Estructura del Proyecto

- **Repositorio**: Encargado de la comunicación con los servicios de autenticación.
- **Caso de Uso**: Contiene la lógica de negocio para la autenticación.
- **BLoC**: Maneja los estados y eventos relacionados con la autenticación.
- **Page**: Maneja los estados de BLoC y contiene la lógica de la interfaz de usuario.
- **Widget**: Contiene un botón que inicia el evento de conexión con el SDK de Google para iniciar sesión.

## Librerías Utilizadas

- `go_router: ^14.1.4`
- `google_sign_in: ^6.2.1`
- `firebase_auth: ^4.20.0`
- `firebase_core: ^2.32.0`
- `flutter_bloc: ^8.1.5`
- `get_it: ^7.7.0`
