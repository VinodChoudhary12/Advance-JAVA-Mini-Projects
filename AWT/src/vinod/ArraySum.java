package vinod;

import java.awt.*;
import java.awt.event.*;

public class ArraySum extends Frame implements ActionListener 
{
     TextField tf1;
     TextField[] tf;
     Button brn;
    private Label resultLabel;

    public ArraySum() {
        setTitle("Array Sum Calculator");
        setBounds(100, 100, 400, 300);
        setLayout(null); 

        Label LabelArray = new Label("Enter number of elements:");
        LabelArray.setBounds(20, 30, 150, 20);
        add(LabelArray);

        tf1 = new TextField();
        tf1.setBounds(180, 30, 50, 20);
        add(tf1);

        brn = new Button("Calculate Sum");
        brn.setBounds(250, 30, 120, 20);
        brn.addActionListener(this);
        add(brn);

        resultLabel = new Label("Sum will be displayed here");
        resultLabel.setBounds(20, 60, 350, 20);
        add(resultLabel);

       addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent we) {
                System.exit(0);
            }

            @Override
            public void windowActivated(WindowEvent we) {
                // This method is called when the window gains focus.
            }

            @Override
            public void windowClosed(WindowEvent we) {
                // This method is called when the window is closed.
            }

            @Override
            public void windowDeactivated(WindowEvent we) {
                // This method is called when the window loses focus.
            }

            @Override
            public void windowDeiconified(WindowEvent we) {
                // This method is called when the window is restored from minimized state.
            }

            @Override
            public void windowIconified(WindowEvent we) {
                // This method is called when the window is minimized.
            }

            @Override
            public void windowOpened(WindowEvent we) {
                // This method is called when the window is first opened.
            }
        });
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == brn) {
            try {
                int Elements = Integer.parseInt(tf1.getText());
                tf = new TextField[Elements];
                int[] elements = new int[Elements];
                
                for (int i = 0; i < Elements; i++) {
                    Label elementLabel = new Label("Enter element " + (i + 1) + ":");
                    elementLabel.setBounds(20, 90 + i * 30, 120, 20);
                    add(elementLabel);
                    
                    tf[i] = new TextField();
                    tf[i].setBounds(150, 90 + i * 30, 50, 20);
                    add(tf[i]);
                }

                Button calculateSumButton = new Button("Calculate Sum");
                calculateSumButton.setBounds(220, 90 + Elements * 30, 120, 20);
                calculateSumButton.addActionListener(new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent e) {
                        int sum = 0;
                        for (int i = 0; i < Elements; i++) {
                            try {
                                elements[i] = Integer.parseInt(tf[i].getText());
                                sum += elements[i];
                            } catch (NumberFormatException ex) {
                                resultLabel.setText("Please enter valid numbers");
                                return;
                            }
                        }
                        resultLabel.setText("Sum of elements: " + sum);
                    }
                });
                add(calculateSumButton);

                // Refresh the frame to display the new components
                validate();
            } catch (NumberFormatException ex) {
                resultLabel.setText("Please enter a valid number");
            }
        }
    }

    public static void main(String[] args) {
        ArraySum calculator = new ArraySum();
        calculator.setVisible(true);
    }
}
