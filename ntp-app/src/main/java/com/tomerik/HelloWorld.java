package com.tomerik;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;

public class HelloWorld {
PersonService p;
    public static void main(String[] args) throws IOException {

        File myfile = new File("src/main/resources/myfile.txt");
        FileUtils.touch(myfile);

        if (myfile.exists()) {
            System.out.println("The file exists");
        } else {
            System.out.println("The file does not exist");
        }

        FileUtils.deleteQuietly(myfile);
        if (myfile.exists()) {
            System.out.println("The file exists");
        } else {
            System.out.println("The file does not exist");
        }
    }

    double calculateRaise(int yearinfirm, int salary){
        PersonService p = new PersonServiceImpl();
        int extras = p.findExtras();
        return (yearinfirm + 100)/100 *salary +extras ;
    }


}
