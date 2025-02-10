package org.example;

public class Example {
    public static void main(String[] args) {
////        Flyable airplane = new Flyable() {
////            @Override
////            public void fly() {
////                System.out.println("I'm flying airplane");
////            }
////        };
//        Flyable airplane = ()-> System.out.println("The playne is flying...");
//        airplane.fly();
//
//        Calculator calculator = (a,b)->a + b;
//        int result = calculator.add(1, 2);
//        System.out.println(result);
//    }

        Flyable airplane = ()-> {
            System.out.println("The plane is move up");
            System.out.println("The plane is flying");
            System.out.println("The plane is move down");
        };

        airplane.fly();

        Calculator calculator = (a,b)-> {
            System.out.println("The result: " + (a+ b));
            return a+b;
        };

        calculator.add(2,5);
    }
}
