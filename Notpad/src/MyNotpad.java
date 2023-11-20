/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author dell
 */
import java.io.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.filechooser.FileNameExtensionFilter;


//https://data-flair.training/blogs/create-notepad-in-java/  
//This is the link
public class MyNotpad 
{
    public void initUI() {
        Frame f = new Frame();
  JLabel  detailsOfFile = new JLabel();

     JPanel bottomPanel = new JPanel();

    //Creating Menubar
    JMenuBar menuBar = new JMenuBar();

    //Creating Menu "File"
    JMenu file = new JMenu("File");

    //Creating MenuItem "New"
    JMenuItem newdoc = new JMenuItem("New");

    //Assigning shortcut "Ctrl + N" for "New" Menu Item
    newdoc.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_N, ActionEvent.CTRL_MASK));

    //Creating MenuItem "Open" in notepad
    JMenuItem open = new JMenuItem("Open");

    //Assigning shortcut "Ctrl + O" for "Open" Menu Item
    open.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_O, ActionEvent.CTRL_MASK));

    //Creating MenuItem "Save"
    JMenuItem save = new JMenuItem("Save");

    //Assigning shortcut "Ctrl + S" for "Save" Menu Item
    save.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, ActionEvent.CTRL_MASK));

    //Creating MenuItem "Print" in text editor
    JMenuItem print = new JMenuItem("Print");

    //Assigning shortcut "Ctrl + P" for "Print" Menu Item
    print.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_P, ActionEvent.CTRL_MASK));

    //Creating MenuItem "Exit"
    JMenuItem exit = new JMenuItem("Exit");

    //Assigning shortcut "ESC" for "Exit" Menu Item
    exit.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_ESCAPE, 0));

    //Creating Menu "Edit" in Notepad
   JMenu edit = new JMenu("Edit");

    //Creating MenuItem "Copy" in java notepad
   JMenuItem  copy = new JMenuItem("Copy");

    //Assigning shortcut "Ctrl + C" for "Copy" Menu Item
    copy.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_C, ActionEvent.CTRL_MASK));

    //Creating MenuItem "Paste" in Java Notepad
   JMenuItem  paste = new JMenuItem("Paste");

    //Assigning shortcut "Ctrl + V" for "Paste" Menu Item
    paste.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_V, ActionEvent.CTRL_MASK));

    //Creating MenuItem "Cut"
   JMenuItem cut = new JMenuItem("Cut");

    //Assigning shortcut "Ctrl + X" for "Cut" Menu Item
    cut.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_X, ActionEvent.CTRL_MASK));

    //Creating MenuItem "Select All"
   JMenuItem selectall = new JMenuItem("Select All");

    //Assigning shortcut "Ctrl + A" for "Select All" Menu Item
    selectall.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_A, ActionEvent.CTRL_MASK));

    //Creating Menu "Format"
   JMenu format = new JMenu("Format");

    //Creating MenuItem "Font Family"
   JMenuItem  fontfamily = new JMenuItem("Font Family");

    //Creating MenuItem "Font Style"
    JMenuItem fontstyle = new JMenuItem("Font Style");

    //Creating MenuItem "Font Size" in Java Text Editor
    JMenuItem fontsize = new JMenuItem("Font Size");

    //Creating List of Font Family and assigning the list values
    JList familylist = new JList(fontFamilyvalue);

    //Creating List of Font Styles and assigning the list values
  JList  stylelist = new JList(stylevalues);

    //Creating List of Font Size and assigning the list values
  JList  sizelist = new JList(sizevalue);

    //Allowing user to select only one option
    familylist.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    sizelist.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    stylelist.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

    //TextArea / Editor of Notepad
   JTextArea area = new JTextArea();

    //Default font will be sam_serif and default font style will be plain and default style will be 20. 
    area.setFont(new Font("SAN_SERIF", Font.PLAIN, 20));

    //Sets the line-wrapping policy of the text area
    area.setLineWrap(true);

    //Sets the word-wrapping policy of the text area
    area.setWrapStyleWord(true);

    //Creating Scrollbars around textarea
   JScrollPane scpane = new JScrollPane(area);

    //Creating border for scrollpane
    scpane.setBorder(BorderFactory.createEmptyBorder());

    //Adding menubar in frame
    f.setJMenuBar(menuBar);

    //Adding all menus in menubars
    menuBar.add(file);
    menuBar.add(edit);
    menuBar.add(format);

    file.add(newdoc);
    file.add(open);
    file.add(save);
    file.add(print);
    file.add(exit);

    edit.add(copy);
    edit.add(paste);
    edit.add(cut);
    edit.add(selectall);

    format.add(fontfamily);
    format.add(fontstyle);
    format.add(fontsize);

    bottomPanel.add(detailsOfFile);

    //Setting up the size of frame
    f.setSize(980, 480);

    //Setting up the layout of frame
    f.setLayout(new BorderLayout());

    //Adding panels in frame
    f.add(scpane, BorderLayout.CENTER);
    f.add(bottomPanel, BorderLayout.SOUTH);
    //Setting Frame visible to user
    f.setVisible(true);
    
    
}
//    public void addActionEvents() {
//        //registering action listener to buttons
//        newdoc.addActionListener(this);
//        save.addActionListener(this);
//        print.addActionListener(this);
//        exit.addActionListener(this);
//        copy.addActionListener(this);
//        paste.addActionListener(this);
//        cut.addActionListener(this);
//        selectall.addActionListener(this);
//        open.addActionListener(this);
//        fontfamily.addActionListener(this);
//        fontsize.addActionListener(this);
//        fontstyle.addActionListener(this);
//
//    }
}
