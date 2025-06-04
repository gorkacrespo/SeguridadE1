cat <<EOF > base_datos.sql
CREATE DATABASE sistemaweb;
USE sistemaweb;
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  dni VARCHAR(9),
  telefono VARCHAR(9),
  fecha_nacimiento DATE,
  email VARCHAR(100),
  usuario VARCHAR(50),
  contraseña VARCHAR(255)
);
EOF
