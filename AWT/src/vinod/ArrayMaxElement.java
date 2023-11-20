package vinod;

import java.awt.*;
import java.awt.event.*;

public class ArrayMaxElement extends Frame implements ActionListener 
{
    private TextField tf1;
    private TextField[] tf;
    private Button btn;
    private Label resultLabel;

    public ArrayMaxElement() {
        setTitle("Array Maximum Element Finder");
        setBounds(100, 100, 400, 300);
        setLayout(null); 

        Label LabelArray = new Label("Enter number of elements:");
        LabelArray.setBounds(20, 30, 150, 20);
        add(LabelArray);

        tf1 = new TextField();
        tf1.setBounds(180, 30, 50, 20);
        add(tf1);

        btn = new Button("Find Max Element");
        btn.setBounds(250, 30, 120, 20);
        btn.addActionListener(this);
        add(btn);

        resultLabel = new Label("Maximum element will be displayed here");
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
        if (e.getSource() == btn) {
            try {
                int n = Integer.parseInt(tf1.getText());
                tf = new TextField[n];
                int[] elements = new int[n];
                
                for (int i = 0; i < n; i++) {
                    Label elementLabel = new Label("Enter element " + (i + 1) + ":");
                    elementLabel.setBounds(20, 90 + i * 30, 120, 20);
                    add(elementLabel);
                    
                    tf[i] = new TextField();
                    tf[i].setBounds(150, 90 + i * 30, 50, 20);
                    add(tf[i]);
                }

                Button MaxButton = new Button("Find Max Element");
                MaxButton.setBounds(220, 90 + n * 30, 120, 20);
                MaxButton.addActionListener(new ActionListener() {
                    @Override
                    public void actionPerformed(ActionEvent e) {
                        int max = Integer.MIN_VALUE;
                        for (int i = 0; i < n; i++) {
                            try {
                                elements[i] = Integer.parseInt(tf[i].getText());
                                if (elements[i] > max) {
                                    max = elements[i];
                                }
                            } catch (NumberFormatException ex) {
                                resultLabel.setText("Please enter valid numbers");
                                return;
                            }
                        }
                        resultLabel.setText("Maximum element: " + max);
                    }
                });
                add(MaxButton);

                // Refresh the frame to display the new components
                validate();
            } catch (NumberFormatException ex) {
                resultLabel.setText("Please enter a valid number");
            }
        }
    }

    public static void main(String[] args) {
        ArrayMaxElement finder = new ArrayMaxElement();
        finder.setVisible(true);
    }
}
