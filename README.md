# Practica 2 - Lenguajes de programación
## Distribucion de herencia por nivel de consanguinidad

REALIZADO POR:
- Laura Restrepo Berrio
- Johan Samuel Rico Nivia

_<sub>Código realizado para prolog, </sub>_
_<sub>este código se encuentra en el archivo `herencia.pl`</sub>_

**Video**

_[Video Práctica 2 - Prolog](https://eafit-my.sharepoint.com/:v:/g/personal/jsricon_eafit_edu_co/EWhEAAjPXX9CnWu0wg0QXEkBugRD5_yFfhmsjOrqFTp89Q?nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=BVqnUq)_

**Introducción** 

Esta practica implementa un sistema en Prolog para distribuir una herencia de acuerdo con el grado de consanguinidad entre las personas.

**CONTENIDO**

- Definición de relaciones familiares como padres, hermanos, abuelos, tíos y primos.
- Cálculo del nivel de consanguinidad entre dos personas.
- Distribución de la herencia de acuerdo con el nivel de consanguinidad:
  - Nivel 1: Padres e hijos (30% cada uno).
  - Nivel 2: Hermanos y abuelos (20% cada uno).
  - Nivel 3: Tíos, tías y primos (10% cada uno).

**CASOS DE PRUEBA**

Si desea usar el codigo cargue el archivo y use un predicado como el siguiente 

_<sub>distributeInheritance(loo, 10000, Distribucion)._<sub>

CASO 1: Marta – 100.000 – 90%

Two children, one sibling, and one cousin.

![image](https://github.com/user-attachments/assets/c3ef8a3a-d0d1-4402-80b4-cb4e83e78e3a)

CASO 2: Jorge – 250.000 – 100%

One child, two grandparents, two uncles and one aunt.

![image](https://github.com/user-attachments/assets/8f9aab76-c6b9-4bed-a83a-3edaa033459c)

CASO 3: Sofia – 150.000 – 90%

One daughter, two brothers, two cousins.

![image](https://github.com/user-attachments/assets/1ccd4cc9-d0c7-4d19-b51c-4b5b115100f2)

CASO 4: Loo – 200.000 – 120%

Two parents and two children

![image](https://github.com/user-attachments/assets/c806c58a-b102-406a-ad16-e581e7b899dd)

CASOS EXTERNOS: estos son casos al azar que podrias usar con las relaciones definidas en el codigo

_NOTA: El codigo funciona para cualquier otro caso que se encuentre entre las relaciones, ademas se podrian definir nuevos casos y seguira funcionando_

![image](https://github.com/user-attachments/assets/4b92a08f-92d7-45fc-ba73-a0d2c3780242)

![image](https://github.com/user-attachments/assets/f8eb3695-473e-4e60-b68f-b241e42ae316)



