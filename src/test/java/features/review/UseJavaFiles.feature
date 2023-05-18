Feature: Using java class in feture file


  Scenario: java files import
    * def Spartan = Java.type('utilities.SpartanDataGenerator')
    * def spartan1 = Spartan.createSpartan()
    * print spartan1
    * print spartan1.name
