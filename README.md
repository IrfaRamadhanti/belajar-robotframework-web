BELAJAR ROBOTFRAMEWORK WEB


Hi Perkenalkan Namaku Irfa Ramadhanti, panggil aja iir.

Kali ini saya akan memberikan tutorial Belajar Robotframework Web 

Linkedin : https://www.linkedin.com/in/irfa-ramadhanti/

Tools :

Python 3
Visual Studio Code
Plugin "Robotframework" dan "Pylance"
Web demo https://www.saucedemo.com/
Chromedriver untuk OS masing2


Berikut adalah langkah2 nya :

1. Buat Project pada IDE, disini saya menggunakan Visual Studio Code dan buatlah folder dengan judul belajar-framework-web 
![image](https://user-images.githubusercontent.com/73830257/146033460-f571f37b-e849-4a2e-884d-2718f1ad0cb5.png)

2. Install Plugin ini "Robotframework" dan "Pylance"
![image](https://user-images.githubusercontent.com/73830257/146034041-45ce0a85-4b0c-452c-b14e-57003da18582.png)

3. Buat file TestLogin.robot lalu maskan teks seperti berikut
![image](https://user-images.githubusercontent.com/73830257/146034595-8a5621fd-0688-429e-8860-469f6b0f6ec2.png)

<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>org.example</groupId>
    <artifactId>automation-bdd-google</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>15</maven.compiler.source>
        <maven.compiler.target>15</maven.compiler.target>
    </properties>
    <dependencies>

        <!-- https://mvnrepository.com/artifact/io.cucumber/cucumber-java -->
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-java</artifactId>
            <version>6.9.0</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/junit/junit -->
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.13.1</version>
            <scope>test</scope>
        </dependency>

        <!-- https://mvnrepository.com/artifact/io.cucumber/cucumber-junit -->
        <dependency>
            <groupId>io.cucumber</groupId>
            <artifactId>cucumber-junit</artifactId>
            <version>6.9.0</version>
            <scope>test</scope>
        </dependency>

        <!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
        <dependency>
            <groupId>org.seleniumhq.selenium</groupId>
            <artifactId>selenium-java</artifactId>
            <version>3.141.59</version>
        </dependency>

        <!-- https://mvnrepository.com/artifact/net.masterthought/cucumber-reporting -->
        <dependency>
            <groupId>net.masterthought</groupId>
            <artifactId>cucumber-reporting</artifactId>
            <version>5.4.0</version>
        </dependency>


    </dependencies>

    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>2.22.0</version>
                <configuration>
                    <testFailureIgnore>true</testFailureIgnore>
                </configuration>
            </plugin>
            <plugin>
                <groupId>net.masterthought</groupId>
                <artifactId>maven-cucumber-reporting</artifactId>
                <version>2.8.0</version>
                <executions>
                    <execution>
                        <id>execution</id>
                        <phase>verify</phase>
                        <goals>
                            <goal>generate</goal>
                        </goals>
                        <configuration>
                            <projectName>automation-bdd-google</projectName>
                            <outputDirectory>${project.build.directory}/cucumber-report-html</outputDirectory>
                            <cucumberOutput>${project.build.directory}/cucumber.json</cucumberOutput>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
        </plugins>
    </build>
</project>
