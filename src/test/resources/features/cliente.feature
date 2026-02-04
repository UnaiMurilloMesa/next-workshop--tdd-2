Feature: Manejar datos de coches de F1
    Como un API user quiero crear, consultar y eliminar coches de F1

    Scenario: Crear un coche
        Given un coche con nombre de escuderia (único), peso, potencia en caballo y número de mejoras a las que ha sido sometido
        When el coche está guardado
        Then el coche estará guardado persistentemente

    Scenario: Eliminar un coche
        Given un coche con nombre de escudería
        When el coche está eliminado
        Then el coche no existe en la base de datos

    Scenario: Consultar un coche no existente
        When consulto el coche con un nombre de escudería que no exista
        Then el código de respuesta deberá ser de 404 (Not found)

    Scenario: Obtener el peso de un coche por su nombre de escudería
        Given el nombre de una escudería
        When pido el peso del coche de esa escudería
        Then devolverá el peso del coche como un número entero

    Scenario: Obtener el coche que más caballos tiene
        When pido el coche con más caballos de potencia
        Then devuelve el nombre del coche con más caballos de potencia

    Scenario: Obtener el número de modificaciones que se han realizado a un coche
        Given el nombre de una escudería/coche
        When pido el número de modificaciones de un coche
        Then devuelve el número entero de las modificaciones realizadas

    Scenario: Añadir una nueva modificación
        Given el nombre de la escudería/coche
        When ha habido una nueva modificación
        Then se sumará una modificación al número de modificaciones que había anteriormente
