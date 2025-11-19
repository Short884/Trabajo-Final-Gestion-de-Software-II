# Trabajo-Final-Gestion-de-Software-II
Trabajo final de la materia, basado en el enunciado de "Estudio MyC" emitido por los profesores de las materias Gestión de Software II y Desarrollo de Sistemas.
Docente — Walter Lauxmann
---

# 🏛️ Sistema Web de Gestión Jurídica — Estudio MyC

### *Proyecto Final — Desarrollo de Sistemas (ISCA 4014)*

![Status](https://img.shields.io/badge/Estado-Completado-brightgreen)
![PHP](https://img.shields.io/badge/PHP-7.4%2B-blue?logo=php)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange?logo=mysql)
![HTML](https://img.shields.io/badge/Frontend-HTML%2FCSS%2FJS-blue)
![License](https://img.shields.io/badge/Licencia-Proyecto%20Acad%C3%A9mico-lightgrey)

---

## 📘 Sobre el proyecto

Este repositorio contiene el desarrollo completo del **Sistema Web de Gestión Jurídica del Estudio MyC**, realizado como **Trabajo Práctico Final** para la materia **Desarrollo de Sistemas (ISCA 4014)**.

El sistema permite gestionar de manera totalmente digital:

* Clientes (persona física o jurídica)
* Expedientes judiciales y extrajudiciales
* Juzgados y autoridades
* Roles procesales
* Usuarios y permisos
* Consultas y reportes

El proyecto fue construido aplicando análisis de requerimientos, metodologías ágiles (Scrum), diseño UML, modelado E/R y desarrollo web con arquitectura modular.

Incluye su base de datos lista para importar:
**`estudio-myc.sql`**

---

# ⚖️ Objetivo principal

Digitalizar y centralizar la gestión administrativa y jurídica del Estudio MyC, brindando una herramienta que permita:

* Mejorar la organización interna
* Reducir errores de registro
* Acelerar la carga y consulta de expedientes
* Facilitar la trazabilidad y el seguimiento de casos

---

# 🚀 Funcionalidades

### ✔️ Gestión de Clientes

* Alta, modificación, baja lógica y consulta
* Diferenciación entre Persona Física / Jurídica
* Validaciones de duplicados y campos obligatorios

### ✔️ Gestión de Expedientes

* Carga de expedientes judiciales o extrajudiciales
* Juzgado, carátula, fechas, estado procesal
* Asignación de abogado responsable

### ✔️ Vinculación Cliente–Expediente

* Relación n:m con rol (demandante, demandado, u otro)

### ✔️ Gestión de Juzgados

* Número, nombre oficial, juez de trámite, secretario, contacto

### ✔️ Gestión de Usuarios y Roles

* Creación, modificación y baja de usuarios
* Control de accesos y permisos

### ✔️ Facil lectura de datos

* Muestra a través de una interfaz fácil de usar y entender los datos de clientes, expediente, juzgados o estado de los mismos
* Resultados en tiempo real

---

# 📁 Estructura del Proyecto

```
estudio-myc/
│── api/                → Endpoints PHP que interactúan con la base de datos
│── controladores/      → Lógica que coordina vistas, modelos y la API (JavaScript)
│── imagenes/           → Recursos gráficos del sistema (clientes)
│── modelos/            → Archivos (JavaScript) que representan las entidades y su lógica base
│── vistas/             → Interfaces HTML del sistema (pantallas del módulo)
│── estilos/            → Archivos CSS utilizados por las vistas
│── estudio-myc.sql     → Base de datos completa del proyecto (para importar)
│── index.html          → Página principal del sistema (menú principal)
│── login.html          → Pantalla de inicio de sesión del sistema

```

---

# 📦 Instalación y configuración

## 1️⃣ Requisitos previos

* XAMPP / WAMP / Laragon (recomendado WAMP)
* PHP 7.4 o superior
* MySQL / MariaDB
* Navegador web (Chrome/Firefox)
* Git (opcional)

---

## 2️⃣ Descargar o clonar el repositorio

Clonar:

```bash
git clone https://github.com/Short884/Trabajo-Final-Gestion-de-Software-II.git
```

O descargar el ZIP desde GitHub → Code → Download ZIP

---

## 3️⃣ Ubicar el proyecto en el servidor local

Mover la carpeta del proyecto a:

```
C:\wamp64\www\
```
O:

```
C:\xampp\htdocs\
```

Ejemplo:

```
C:\wamp64\www\estudio-myc\
```

---

## 4️⃣ Crear la base de datos

1. Abrir **phpMyAdmin**
   [http://localhost/phpmyadmin](http://localhost/phpmyadmin)

2. Crear una base de datos llamada:

```
estudio-myc
```

3. Importar el archivo:

```
estudio-myc.sql
```

⚠️ Esto creará todas las tablas necesarias: clientes, expedientes, juzgados, usuarios, relaciones, etc.

---

## 5️⃣ Configurar la conexión a la base de datos

Editar:

```
/api/config.php
```

El archivo ya está configurado de la siguiente manera

```php

    define('DB_HOST', 'localhost');   // Servidor MySQL 
    define('DB_USER', 'root');        // Usuario de la BD 
    define('DB_PASS', '');            // Contraseña del usuario de la BD 

    // Base de datos del proyecto
    define('DB_NAME', 'estudio-myc'); // Nombre de la BD
    
    define('DB_CHARSET', 'utf8');     // Codificación

```

Según tu entorno local.

---

## 6️⃣ Ejecutar el sistema

Acceder desde el navegador:

```
http://localhost/ProyectoMyC/login.html
```

---

# 🧩 Arquitectura del sistema

* **Frontend:** HTML5, CSS3, JavaScript
* **Backend/API:** PHP y JavaScript (endpoints y logica)
* **Base de datos:** MySQL (E/R basado en los diagramas del proyecto)
* **Metodología:** Scrum (Product Owner, Scrum Master, Scrum Team)
* **Documentación:** Casos de uso, escenarios, E/R, clases, prototipos

---

# 📊 Modelado y documentación (del coloquio)

El sistema está basado en el documento:

**“COLOQUIO: ANÁLISIS Y EJECUCIÓN DE RECURSOS INFORMÁTICOS PARA UN SISTEMA WEB DE GESTIÓN JUDICIAL — Estudio MyC”**

Incluye:

* ✔️ Requerimientos funcionales y no funcionales
* ✔️ Diagramas de Casos de Uso
* ✔️ Escenarios de uso
* ✔️ Diagramas de Clases
* ✔️ Diagrama E/R
* ✔️ Guion de interfaces
* ✔️ Planificación (Gantt)
* ✔️ Justificación del proyecto

---

# 👨‍💻 Autor

**Stefano Caccia**
Estudiante — Instituto Superior de Computación Administrativa (ISCA 4014)
2° TSAFSI — 2025
---

# 📜 Licencia

Este proyecto fue creado con fines **académicos** y no está destinado a uso comercial.
Podés modificarlo libremente para estudio o práctica.

---
