-- estructura_inicial.sql
-- Base de datos inicial para el proyecto OK_chat

CREATE DATABASE IF NOT EXISTS ok_chat;
USE ok_chat;

CREATE TABLE admin (
    id_admin INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    correo VARCHAR(100),
    clave VARCHAR(100)
);

CREATE TABLE pregunta (
    id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
    texto TEXT
);

CREATE TABLE respuesta (
    id_respuesta INT AUTO_INCREMENT PRIMARY KEY,
    texto TEXT,
    id_pregunta INT,
    FOREIGN KEY (id_pregunta) REFERENCES pregunta(id_pregunta)
);