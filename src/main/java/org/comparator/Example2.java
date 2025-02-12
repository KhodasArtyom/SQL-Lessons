package org.comparator;

import java.util.Arrays;
import java.util.Comparator;

public class Example2 {
    public static void main(String[] args) {
        Student ivan = new Student(190);
        Student peter = new Student(180);

        Student[] students=new Student[]{ivan,peter};
        System.out.println(Arrays.toString(students));

        System.out.println(ivan.getHeight()- peter.getHeight());
        System.out.println(compare(ivan,peter));

        Comparator<Student> studentComparator =(st1,st2)->st1.getHeight()- st2.getHeight();

//        System.out.println(studentComparator.compare(ivan,peter));
        sortStudents(students,studentComparator);
        System.out.println(Arrays.toString(students));
    }

    public static int compare(Student st1,Student st2){
        return st1.getHeight()-st2.getHeight();
    }

    public static void sortStudents(Student[] students,Comparator<Student> comparator){
        //[190,180]
        int result = comparator.compare(students[0],students[1]);
        if (result>0) {
            Student temp = students[0];
            students[0] =students[1];
            students[1] = temp;

        }
    }

}
