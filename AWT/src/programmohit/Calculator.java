import java.awt.*;
import java.awt.Button;
import java.awt.Color;
import java.awt.Frame;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
class Calculator  extends Frame implements WindowListener,ActionListener
{   
    Label lb1,lb2,lb3,lb4;
    TextField tf1,tf2;
    Button btn1 ,btn2,btn3,btn4,btn5,btn6;
    public Calculator()
    {
        this.setVisible(true);
        this.setBackground(Color.BLACK);
        this.setLayout(null);
        setTitle("Calculator");
        this.setBounds(50,50,350,400);
        lb1 = new Label("Enter Your First Number");
        lb1.setBounds(20,50,170,30);
        lb1.setBackground(Color.WHITE);
        lb1.setForeground(Color.BLACK);
        this.add(lb1);
        tf1 = new TextField();
        tf1.setBounds(200,50,130,30);
        add(tf1);
        lb2 = new Label("Enter Your Second Number");
        lb2.setBounds(20,100,170,30);
        lb2.setBackground(Color.WHITE);
        lb2.setForeground(Color.BLACK);
        this.add(lb2);
        tf2 = new TextField();
        tf2.setBounds(200,100,130,30);
        this.add(tf2);
        btn1 = new Button("ADD");
        btn1.setBounds(20,150,100,30);
        btn1.setBackground(Color.WHITE);
        btn1.setForeground(Color.BLACK);
        add(btn1);
        btn1.addActionListener(this);
        btn2 = new Button("SUB");
        btn2.setBounds(125,150,100,30);
        btn2.setBackground(Color.WHITE);
        btn2.setForeground(Color.BLACK);
        add(btn2);
        btn2.addActionListener(this);
        btn3 = new Button("MUL");
        btn3.setBounds(230,150,100,30);
        btn3.setBackground(Color.WHITE);
        btn3.setForeground(Color.BLACK);
        btn3.addActionListener(this);
        add(btn3);
        btn4 = new Button("DIV");
        btn4.setBounds(20,200,100,30);
        btn4.setBackground(Color.WHITE);
        btn4.setForeground(Color.BLACK);
        add(btn4);
        btn4.addActionListener(this);
        btn5 = new Button("MOD");
        btn5.setBounds(125,200,100,30);
        btn5.setBackground(Color.WHITE);
        btn5.setForeground(Color.BLACK);
        add(btn5);
        btn5.addActionListener(this);
        btn6 = new Button("CLEAR");
        btn6.setBounds(230,200,100,30);
        btn6.setForeground(Color.BLACK);
        btn6.setBackground(Color.WHITE);
        add(btn6);
        btn6.addActionListener(this);
        lb3 = new Label("RESULT");
        lb3.setBounds(20,250,95,30);
        lb3.setBackground(Color.lightGray);
        lb3.setForeground(Color.BLACK);
        add(lb3);
        lb4 = new Label();
        lb4.setBounds(120,250, 210,30);
        lb4.setBackground(Color.pink);
        lb4.setForeground(Color.BLACK);
        add(lb4);
        this.addWindowListener(this);
    }
    @Override
    public void windowOpened(WindowEvent e) {
        // TODO Auto-generated method stub
       // throw new UnsupportedOperationException("Unimplemented method 'windowOpened'");
    }
    @Override
    public void windowClosing(WindowEvent e) {
        dispose();
        // TODO Auto-generated method stub
       // throw new UnsupportedOperationException("Unimplemented method 'windowClosing'");
    }
    @Override
    public void windowClosed(WindowEvent e) {
        // TODO Auto-generated method stub
       // throw new UnsupportedOperationException("Unimplemented method 'windowClosed'");
    }
    @Override
    public void windowIconified(WindowEvent e) {
        // TODO Auto-generated method stub
       // throw new UnsupportedOperationException("Unimplemented method 'windowIconified'");
    }
    @Override
    public void windowDeiconified(WindowEvent e) {
        // TODO Auto-generated method stub
       // throw new UnsupportedOperationException("Unimplemented method 'windowDeiconified'");
    }
    @Override
    public void windowActivated(WindowEvent e) {
        // TODO Auto-generated method stub
       // throw new UnsupportedOperationException("Unimplemented method 'windowActivated'");
    }
    @Override
    public void windowDeactivated(WindowEvent e) {
        // TODO Auto-generated method stub
        //throw new UnsupportedOperationException("Unimplemented method 'windowDeactivated'");
    }
    @Override
    public void actionPerformed(ActionEvent e) {
        double num1=0,num2=0;
        if(e.getSource()==btn1)
        {
            num1 = Double.parseDouble(tf1.getText());
            num2 = Double.parseDouble(tf2.getText());
            lb4.setText(String.valueOf(num1+num2));
        }
        else if(e.getSource()==btn2)
        {
            num1 = Double.parseDouble(tf1.getText());
            num2 = Double.parseDouble(tf2.getText());
            lb4.setText(String.valueOf(num1-num2));
        }
        else if(e.getSource()==btn3)
        {
            num1 = Double.parseDouble(tf1.getText());
            num2 = Double.parseDouble(tf2.getText());
            lb4.setText(String.valueOf(num1*num2));
        }
        else if(e.getSource()==btn4)
        {
            num1 = Double.parseDouble(tf1.getText());
            num2 = Double.parseDouble(tf2.getText());
            lb4.setText(String.valueOf(num1 / num2));
        }
        else if(e.getSource()==btn5)
        {
            num1 = Double.parseDouble(tf1.getText());
           num2 = Double.parseDouble(tf2.getText());
           //float  num3 = Float.parseFloat(tf2.getText());
            lb4.setText(String.valueOf(num1 % num2));
        }
        else if(e.getSource()==btn6)
        {
            tf1.setText("");
            tf2.setText("");
            lb4.setText("");
        }
    }
}
class TestMain
{
    public static void main(String[] args)
    {
        Calculator ob = new Calculator();
    }
}