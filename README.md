# Proyecto de API - Comentarios y Publicaciones

## Descripción

Este proyecto implementa una API RESTful utilizando Ruby on Rails, que permite gestionar usuarios, publicaciones y comentarios. Los usuarios pueden crear publicaciones, y cada publicación puede tener múltiples comentarios. Los comentarios pueden ser creados, actualizados y eliminados a través de la API.

## Tecnologías utilizadas

- Ruby on Rails (versión 8.0)
- PostgreSQL (o el sistema de base de datos que estés utilizando)
- ActiveModel Serializers
- JSON API

## Endpoints disponibles

### Usuarios (`/api/v1/users`)

- `GET /api/v1/users` - Lista todos los usuarios.
- `POST /api/v1/users` - Crea un nuevo usuario.
- `GET /api/v1/users/:id` - Obtiene los detalles de un usuario específico.
- `PATCH /api/v1/users/:id` - Actualiza los detalles de un usuario.

### Publicaciones (`/api/v1/posts`)

- `GET /api/v1/posts` - Lista todas las publicaciones.
- `POST /api/v1/posts` - Crea una nueva publicación.
- `GET /api/v1/posts/:id` - Obtiene los detalles de una publicación específica.
- `PATCH /api/v1/posts/:id` - Actualiza una publicación.
- `DELETE /api/v1/posts/:id` - Elimina una publicación.

### Comentarios (`/api/v1/comments`)

- `POST /api/v1/comments` - Crea un nuevo comentario.
- `PATCH /api/v1/comments/:id` - Actualiza un comentario.
- `DELETE /api/v1/comments/:id` - Elimina un comentario.

## Instrucciones de instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu_usuario/tu_reposi
2. Instala las dependencias:
bundle install
3. Configura la base de datos:
rails db:create
rails db:migrate
4.Inicia el servidor:
rails server
La API estará disponible en http://localhost:3000.

Cómo probar la API
Puedes probar la API utilizando herramientas como Postman o [cURL]. Aquí tienes algunos ejemplos de cómo interactuar con los endpoints:

Crear un Usuario
POST /api/v1/users

{
  "user": {
    "name": "Ivan",
    "lastname": "Ruquet",
    "email": "ivanruquet@example.com",
    "username": "ivanruquet"
  }
}

Crear una Publicación
POST /api/v1/posts
{
  "post": {
    "title": "Mi primera publicación",
    "description": "Descripción del post",
    "user_id": 1
  }
}


Crear un Comentario
POST /api/v1/comments
{
  "comment": {
    "body": "¡Gran post!",
    "commentable_type": "Post",
    "commentable_id": 1,
    "author_id": 1
  }
}

