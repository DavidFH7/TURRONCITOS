# Sistema de Ventas con Python Flask

Este es un sistema completo de gestión de ventas desarrollado con Python Flask que incluye autenticación y todas las funcionalidades necesarias para administrar un negocio.

## Características

### 🔐 Autenticación
- ✅ Sistema de registro de usuarios
- ✅ Sistema de login/logout
- ✅ Dashboard protegido
- ✅ Seguridad con hash de contraseñas

### 🏪 Gestión de Negocio
- ✅ **Productos**: Gestión completa con categorías y stock
- ✅ **Categorías**: Organización de productos
- ✅ **Clientes**: Base de datos de clientes
- ✅ **Lugares de Entrega**: Gestión de direcciones
- ✅ **Ventas**: Sistema completo de ventas
- ✅ **Stock**: Control automático de inventario
- ✅ **Ganancias**: Análisis detallado de rentabilidad
- ✅ **Respaldos**: Sistema de backup automático

### 🎨 Interfaz
- ✅ Interfaz moderna con Bootstrap
- ✅ Dashboard con estadísticas
- ✅ Formularios intuitivos
- ✅ Mensajes flash informativos

## Instalación Local

1. Clona el repositorio:
```bash
git clone https://github.com/Whitelegeds13/TurronProyectDavid.git
cd TurronProyectDavid
```

2. Crea un entorno virtual:
```bash
python -m venv .venv
```

3. Activa el entorno virtual:
```bash
# Windows
.venv\Scripts\activate

# Linux/Mac
source .venv/bin/activate
```

4. Instala las dependencias:
```bash
pip install -r requirements.txt
```

5. Ejecuta la aplicación:
```bash
python app.py
```

6. Abre tu navegador en: http://127.0.0.1:5000

## Despliegue en Netlify

1. Conecta tu repositorio de GitHub a Netlify
2. Configura las siguientes variables de entorno en Netlify:
   - `PYTHON_VERSION`: 3.11
3. El archivo `netlify.toml` ya está configurado para el despliegue automático

## Uso

1. Ve a la página de registro para crear una cuenta
2. Inicia sesión con tus credenciales
3. Accede al dashboard una vez autenticado
4. Gestiona productos, clientes, ventas y más

## Usuarios por Defecto

El sistema crea automáticamente estos usuarios:
- **Usuario**: Alonso | **Contraseña**: 123456
- **Usuario**: Andrea | **Contraseña**: 123456

## Estructura del Proyecto

```
TurronProyectDavid/
├── app.py                 # Aplicación principal Flask
├── requirements.txt       # Dependencias del proyecto
├── runtime.txt           # Versión de Python para Netlify
├── Procfile              # Configuración para Heroku/Netlify
├── netlify.toml          # Configuración específica de Netlify
├── .gitignore            # Archivos a ignorar en Git
├── README.md             # Este archivo
└── templates/            # Plantillas HTML
    ├── base.html         # Plantilla base
    ├── login.html        # Página de login
    ├── register.html     # Página de registro
    ├── dashboard.html    # Dashboard principal
    ├── productos.html    # Lista de productos
    ├── nueva_venta.html  # Formulario nueva venta
    ├── ventas.html       # Lista de ventas
    ├── ganancias.html    # Análisis de ganancias
    ├── respaldos.html    # Gestión de respaldos
    └── ...               # Más plantillas
```

## Base de Datos

La aplicación crea automáticamente una base de datos SQLite (`sistema_ventas.db`) con las siguientes tablas:

- **usuarios**: Información de usuarios del sistema
- **categorias**: Categorías de productos
- **productos**: Productos con relación a categorías
- **stock**: Control de inventario por producto
- **clientes**: Base de datos de clientes
- **lugares_entrega**: Información de direcciones
- **ventas**: Registro de ventas (entidad central)
- **venta_producto**: Relación muchos a muchos entre ventas y productos
- **ganancias**: Tracking histórico de ganancias

## Flujo de Trabajo

1. **Configuración inicial**: Crear categorías y lugares de entrega
2. **Productos**: Agregar productos con stock inicial
3. **Clientes**: Registrar clientes
4. **Ventas**: Procesar ventas que actualizan automáticamente el stock
5. **Análisis**: Revisar ganancias y estadísticas

## Seguridad

- Las contraseñas se almacenan con hash usando Werkzeug
- Las sesiones están protegidas con Flask-Login
- Validación de formularios en el servidor
- Control de stock automático en las ventas

## Contribuir

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.