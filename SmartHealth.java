import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class SmartHealth {

    public static void main(String...args){
        boolean y = true;
        boolean n = false;

        HashMap c1 = new HashMap();c1.put("ailment","headace");       c1.put("temp",y);c1.put("aches",y);c1.put("fatigue",y);c1.put("cough",y);c1.put("numb",n);c1.put("swell",n);
        HashMap c2 = new HashMap();c2.put("ailment","stomache");      c2.put("temp",n);c2.put("aches",y);c2.put("fatigue",y);c2.put("cough",n);c2.put("numb",n);c2.put("swell",n);
        HashMap c3 = new HashMap();c3.put("ailment","sprained ankle");c3.put("temp",n);c3.put("aches",y);c3.put("fatigue",n);c3.put("cough",n);c3.put("numb",y);c3.put("swell",y);
        HashMap c4 = new HashMap();c4.put("ailment","carpal tunnel"); c4.put("temp",n);c4.put("aches",y);c4.put("fatigue",y);c4.put("cough",n);c4.put("numb",y);c4.put("swell",n);
        HashMap c5 = new HashMap();c5.put("ailment","flu");           c5.put("temp",y);c5.put("aches",n);c5.put("fatigue",y);c5.put("cough",y);c5.put("numb",n);c5.put("swell",n);
        HashMap c6 = new HashMap();c6.put("ailment","nothing!");      c6.put("temp",n);c6.put("aches",n);c6.put("fatigue",n);c6.put("cough",n);c6.put("numb",n);c6.put("swell",n);
        ArrayList database = new ArrayList();
        database.add(c1);database.add(c2);database.add(c3);database.add(c4);database.add(c5);database.add(c6);

        Scanner sc = new Scanner(System.in);

        System.out.println("Do you have a high temperature?");
        take_input(sc.nextInt(), "aches", database);

        System.out.println("Do you have muscle aches?");
        take_input(sc.nextInt(),"aches",database);

        System.out.println("Do you feel fatigue?");
        take_input(sc.nextInt(),"fatigue",database);

        System.out.println("Do you have a cough?");
        take_input(sc.nextInt(),"cough",database);

        System.out.println("Do you feel numbness?");
        take_input(sc.nextInt(),"numb",database);

        System.out.println("Do you feel swelling?");
        take_input(sc.nextInt(),"swell",database);
        
        System.out.println("We couldn't narrow down the options enough based on your answers. If you see this, we didn't ask enough questions!");
    }

    public static void take_input(int answer, String property, ArrayList database){
        boolean ans;
        if ( answer == 1){
            ans = true;
        }
        else{
            ans = false;
        }
        ArrayList to_remove = new ArrayList();
        for (Object d: database){
            HashMap character = (HashMap) d;
            boolean prop = (boolean)character.get(property);
            if (prop != ans){
                to_remove.add(character);
            }

        }
        for (Object ch: to_remove){
            database.remove(ch);
        }
        if (database.size() == 1){

            HashMap character = (HashMap)database.get(0);
            String name = (String)character.get("ailment");
            System.out.println("your ailment is "+name);
            System.exit(0);
        }
        if (database.size() == 0){

            System.out.println("Hmmm... your symptoms don't match any ailments we currently have on file.");
            System.exit(0);
        }
    }
}