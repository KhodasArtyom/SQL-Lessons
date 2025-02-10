package org.predicateFI;

import java.util.Random;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class Example1 {
    public static void main(String[] args) {
        //Проверка на возраст
        Predicate<Integer> isAdult = (age) -> age > 17;
        boolean result = isAdult.test(30);
        System.out.println(result);

        // Покупка в автомате напитка
        Function<Integer, String> automat = (money) -> {
            if (money == 100) {
                return "Coca-Cola";
            } else if (money == 50) {
                return "Water";

            } else {
                return "Nothing";
            }
        };
        System.out.println(automat.apply(100));

        //Костёр
        Consumer<String> fire = (item) -> {
            if (item.equals("Дрова")) {
                System.out.println("Горит долго огонь");
            } else if (item.equals("Бумага")) {
                System.out.println("Горит ярко огонь");
            } else {
                System.out.println("Ничего");
            }


        };
        fire.accept("Дрова");

        //Талоны в очереди
        Supplier<Integer> talons = ()->new Random().nextInt(100);
        System.out.println(talons.get());

    }
}
