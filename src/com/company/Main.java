package com.company;

import java.util.Date;

import static com.company.TimeCompare.CompareNowTime;

public class Main {

    public static void main(String[] args) {
        if (CompareNowTime("07:00:00")) {
            System.out.println("19>18");
        } else {
            System.out.println("现在时间是"+new Date());
        }
    }
}
