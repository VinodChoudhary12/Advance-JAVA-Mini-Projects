/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package myworld;

import java.util.*;
//import java.util.Map.*;
public class MyWorld {
    public static void main(String[] args) {
        Map worldData = new HashMap();

        // Add continents, countries, states, cities, and famous places to the world data
        // Sample data for demonstration purposes
        addContinent(worldData, "Asia", "India", "Karnataka", "Bangalore", "Famous Place 1");
        addContinent(worldData, "Asia", "India", "Maharashtra", "Mumbai", "Famous Place 2");
        addContinent(worldData, "Asia", "China", "Beijing", "Beijing City", "Famous Place 3");
        addContinent(worldData, "Asia", "China", "Guangdong", "Guangzhou", "Famous Place 4");
        addContinent(worldData, "Europe", "France", "Paris", "Paris City", "Famous Place 5");
        addContinent(worldData, "Europe", "Germany", "Berlin", "Berlin City", "Famous Place 6");

        // Prompt for selections
        Scanner scanner = new Scanner(System.in);

        System.out.println("Select a continent:");
        printMapKeys(worldData);
        String selectedContinent = scanner.nextLine();

        System.out.println("Select a country:");
        Map countries = (Map) worldData.get(selectedContinent);
        printMapKeys(countries);
        String selectedCountry = scanner.nextLine();

        System.out.println("Select a state:");
        Map states = (Map) countries.get(selectedCountry);
        printMapKeys(states);
        String selectedState = scanner.nextLine();

        System.out.println("Select a city:");
        Map cities = (Map) states.get(selectedState);
        printMapKeys(cities);
        String selectedCity = scanner.nextLine();

        // Display the famous place
        String famousPlace = (String) cities.get(selectedCity);
        System.out.println("Famous place in " + selectedCity + ": " + famousPlace);
    }

    private static void addContinent(Map worldData, String continent, String country, String state, String city,
            String famousPlace) {
        if (!worldData.containsKey(continent)) {
            worldData.put(continent, new HashMap());
        }

        Map countries = (Map) worldData.get(continent);
        if (!countries.containsKey(country)) {
            countries.put(country, new HashMap());
        }

        Map states = (Map) countries.get(country);
        if (!states.containsKey(state)) {
            states.put(state, new HashMap());
        }

        Map cities = (Map) states.get(state);
        cities.put(city, famousPlace);
    }

    private static void printMapKeys(Map map) {
        int index = 1;
        for (Object key : map.keySet()) {
            System.out.println(index + ". " + key);
            index++;
        }
    }
}
    

