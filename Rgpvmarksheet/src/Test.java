
import java.awt.*;
import javax.swing.*;

class Rgpv extends JFrame
{
    
      JScrollPane jp;
      Rgpv()
      {
        this.getContentPane().setBackground(Color.WHITE);
        this.setLayout(null);
        
        jp=new JScrollPane();
        add(jp);
        
        JPanel p1=new JPanel();   
        p1.setBackground(new Color(155,200,255));
        p1.setBounds(0,0,1200,150);
        add(p1);
        
       
        
        ImageIcon i1=new ImageIcon(ClassLoader.getSystemResource("rgpvmarksheet/logo.png"));
        JLabel image=new JLabel(i1);
        image.setBounds(0,0,380, 100);
        p1.add(image);
        
        JPanel p2=new JPanel();   
        p2.setBackground(new Color(242,242,242));
        p2.setBounds(0,150,300,550);
        jp.add(p2);
        
        JPanel p3=new JPanel();   
        p3.setBackground(new Color(242,120,75));
        p3.setBounds(900,150,300,550);
        jp.add(p3);
        
        
        
       
        
        this.setSize(1200,700);
        this.setLocation(50, 50);
        this.setVisible(true);
        
      
        
        
        
        
        
        
        
      }
}
public class Test {
    public static void main(String[] args) {
        
        new Rgpv();
        
    }
}
