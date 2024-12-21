-- Drop Cliente table if it exists
DROP TABLE IF EXISTS Cliente;

-- Drop Administrador table if it exists
DROP TABLE IF EXISTS Administrador;

-- Drop Gestor table if it exists
DROP TABLE IF EXISTS Gestor;

CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255),
    fecha_de_nacimiento DATE,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    numero_tarjeta_de_credito VARCHAR(20) NOT NULL,
    ccv VARCHAR(5) NOT NULL
);

CREATE TABLE administrador (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    fecha_de_nacimiento DATE,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE gestor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellidos VARCHAR(255) NOT NULL,
    fecha_de_nacimiento DATE,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- INSERTS
INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Juan', 'Pérez', '1985-07-12', 'juan.perez@email.com', '$2b$12$h.YRDrGm38NJeCkzEE.rM.jifhLo.Hbytph6GciswXolW8QPuit12', '1234567812345678', '123');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('María', 'López', '1990-01-25', 'maria.lopez@email.com', '$2b$12$rI5zqwO7umQEErlDP4SQ0.EIorh1b4Jh.47XIaqxFX9hKUSFRHBk.', '8765432187654321', '456');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Carlos', 'Ramírez', '1975-03-15', 'carlos.ramirez@email.com', '$2b$12$ipmqb28SkX65qVR0.s/SD.uRsD7bxO/poeh6c781mPJCjPO2Ot7na', '1234876523458765', '789');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Ana', 'Gómez', '1988-11-30', 'ana.gomez@email.com', '$2b$12$7iclzizmZAzg1Hcqqu3/A.uPuCQh0kuX6YJvyye4Eq8T67apxejx.', '6789543212348765', '321');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Luis', 'Torres', '2000-06-12', 'luis.torres@email.com', '$2b$12$e5quXRVsve3D581kzfIdxO46Cs8ir2r6.ASUJ4CUWKcRM/B9SsqwS', '3456781234567812', '654');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Juan', 'García', '1992-02-20', 'juan.garcia@email.com', '$2b$12$GmKoxNmJAGsuS1IC1GmuQ.7iGbnb/Y2OX.eaSpaMBc.2taDuhhFvu', '2345678912345678', '987');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Juan', 'García', '1995-12-05', 'juan.garcia2@email.com', '$2b$12$EoaSrw.cQuTMPUxQFuTNROAW1QuQs/OZktDVBrInOn5gMHibhMnWy', '5678901234567890', '321');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Rosa', 'Fernández', '1970-01-01', 'rosa.fernandez@email.com', '$2b$12$h6KMl.X32zzTk3TVvTiV.eaK5cyZ48vpddHjrGWPZdgOYLjKfPtIS', '4321567890123456', '222');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Miguel', 'Sánchez', '2002-12-31', 'miguel.sanchez@email.com', '$2b$12$fFc04hDA8JpueZPF.23c5eF84Qz2V159.yN.608X4AUcTVcZzyLve', '9876543212345678', '111');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Sofía', 'Rojas', '1994-09-15', 'sofia.rojas@hotmail.com', '$2b$12$4EiMYYx/sGwgj19cgEtrj.tVyIxdo94MdHlx4T1uoNKx.tqotHQzq', '8765123456789012', '432');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Elena', 'Vega', '1989-03-23', 'elena_vega@email.com', '$2b$12$DyuowKMGBr.Dc3dtAsthE./cb0zjj.4KyX5odv3qJ7gJiptzk8tay', '1234987612349876', '876');

INSERT INTO cliente (nombre, apellidos, fecha_de_nacimiento, email, password, numero_tarjeta_de_credito, ccv) VALUES ('Raúl', 'López', '1987-11-11', 'raul.lopez@gmail.com', '$2b$12$Zf1cz8DNS/05A1YVcskKh.J2m0J3nCbEQIbmNvKpxpnbf6fDLWuti', '3214567890123456', '543');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Alberto', 'Martínez', '1980-05-15', 'alberto.martinez@email.com', '$2b$12$3Wl3yLreayekJwg1tBPEUO8nqFQBHNfj3Jh3dkzUhTNKdgh0/C8iG');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Beatriz', 'García', '1992-11-02', 'beatriz.garcia@email.com', '$2b$12$uU4.gARFxDCSykwY0Lx22e0HQr8Dt1VJAu4TkubW1g/vFee7GvRSu');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Carlos', 'López', '1978-06-20', 'carlos.lopez@email.com', '$2b$12$ScWJmIUq6vtrORu4zZc9X.IKA4aBCd5vMZXiOt2iw2ifHRtNGMxC2');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Daniela', 'Rodríguez', '1985-12-10', 'daniela.rodriguez@email.com', '$2b$12$6u2KX35C8dEsj/q1DyHl8eFWj4bRJ00WYn54NvfC/l5GaJis.0BG2');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Eduardo', 'Gómez', '1990-09-05', 'eduardo.gomez@email.com', '$2b$12$CZslcrD7wPXKuI47u1ulVORGZbUnPRVKBEOnTmr4NRamq/9lLgyPy');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Elena', 'García', '1983-04-08', 'elena.garcia@email.com', '$2b$12$PSfIW.97dz9zMv9Eh80S7.fLTPP8zKYWH5Vc9Fgg59itfsxlS9.EW');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Fernando', 'García', '1994-03-25', 'fernando.garcia@email.com', '$2b$12$X2ptt/6f.fsoABPcyPb8jOEhpqCImuVpjnfmrI/k.N1CjEegzdcCW');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Gabriela', 'Santos', '1970-01-01', 'gabriela.santos@email.com', '$2b$12$q9sIgfDv2HmRwq3GhCCA/.ZzlBzMnbPBcz6x2zyXoWs9Ufc0x6yHW');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Héctor', 'Vargas', '2002-12-31', 'hector.vargas@email.com', '$2b$12$nY.hShQ5sXIYE13c8a5A5uyZUJCwwAEjOYJ3eI8SKn1KmTIp/TJy.');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Isabel', 'Flores', '1986-08-18', 'isabel.flores@email.com', '$2b$12$yvOo0YDrcW59EOwvgm0rOOS1NRIO4.1gXI/mmPNjT8h.aLNmODms.');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Jorge', 'Pérez', '1991-01-30', 'jorge.perez@email.com', '$2b$12$thbRdlUspMj/7KBPx77GR.E/2eoXpDkJEOR2uEX7PTwUONQxTh6fq');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Karen', 'Navarro', '1989-05-22', 'karen.navarro@email.com', '$2b$12$M4ceHR8ki1WyeIdt99AD4eritFiVpwihdNE5CQIWpbxsRVmXX5rzW');

INSERT INTO administrador (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Luis', 'Silva', '1995-10-15', 'luis.silva@email.com', '$2b$12$nesKtkOoDRT9S.uPIGcRg./AlyAmI/Zjrv1VK0SAz1imGUZ8Z8tZu');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('María', 'Fernández', '1982-02-14', 'maria.fernandez@email.com', '$2b$12$LLhoXybTdb9ENoH3ciDOWuxPpzFe2/i28dwRcxgoomW63yTx9NZ3e');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Pedro', 'Morales', '1979-07-08', 'pedro.morales@email.com', '$2b$12$4RB9H7u4c.WPVup..FnTeOUGgZaY.Fd13JF1fIvRewv96LzV7ouS2');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Ana', 'Ramírez', '1993-03-21', 'ana.ramirez@email.com', '$2b$12$FJZkUIyAmtN3l/bQRIpX0O6jo2njgm4LvSuLlMEuJYwW8CuVoTTxO');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Tomás', 'Herrera', '1988-10-30', 'tomas.herrera@email.com', '$2b$12$QedRn5KzmFEBDLujyXtyjuVnKTAz9a0XJEz20C8IegzCWgY19LADK');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Lucía', 'Cruz', '1995-01-15', 'lucia.cruz@email.com', '$2b$12$pkNJ5qqWyQbSi7DFjzIZ7eetRkJzw1SGF98BKqkddq5E79nyr8bBq');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Diego', 'Martínez', '1975-01-01', 'diego.martinez@email.com', '$2b$12$hMaoX6pmQcaKR6n9EKDA7.bzaLLkXtDxeWli7QEZ8ZDjpkxuYc9WG');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Eva', 'Castillo', '2001-12-31', 'eva.castillo@email.com', '$2b$12$WJfIKpO3rm1BluJihSE2eeW.uD/z.URt68P/waoOD7HHZIIPt3v7i');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Gabriel', 'Ortega', '1997-06-05', 'gabriel.ortega@email.com', '$2b$12$gIy7VDLu6FGTNHKWBeLwyeySNqxQ8zqNbXn1G/MPt5M1rHh00NeDO');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Claudia', 'López', '1984-09-12', 'claudia.lopez@email.com', '$2b$12$PTABFibMqHRCVVuWdG8dF.aurMvHwyQaKfsEUysaNwv5IvvUN0MwC');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Javier', 'Santos', '1992-04-22', 'javier.santos@email.com', '$2b$12$BqpDohqxFvIvMDfEvY2m8uAtR32gXqsx.aV6ePg5zAHRiYBp1v4qm');

INSERT INTO gestor (nombre, apellidos, fecha_de_nacimiento, email, password) VALUES ('Nuria', 'Vargas', '1989-08-29', 'nuria.vargas@email.com', '$2b$12$i79nScknNOmoT3wNDRAOLuRhIBflpKve65CCU4zN1dCGzwkZEaguW');