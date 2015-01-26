/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import gnu.io.CommPort;
import gnu.io.CommPortIdentifier;
import gnu.io.NoSuchPortException;
import gnu.io.PortInUseException;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import gnu.io.UnsupportedCommOperationException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.TooManyListenersException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.swing.AbstractButton;
import javax.swing.ButtonGroup;
import javax.swing.JOptionPane;

/**
 *
 * @author ittus
 */
public class Terminal extends javax.swing.JFrame implements SerialPortEventListener {

    /**
     * Creates new form Terminal
     */
    BufferedReader inPutReader;
    OutputStream outPutWriter;
    ButtonGroup comPortGroup;
    SerialPort serialPort;
    boolean isConnectPIC = false;

    public Terminal() {
        initComponents();
        comPortGroup = new ButtonGroup();
        rbCom1.setEnabled(false);
        rbCom2.setEnabled(false);
        rbCom3.setEnabled(false);
        rbCom4.setEnabled(false);
        rbCom5.setEnabled(false);
        rbCom6.setEnabled(false);
        comPortGroup.add(rbCom1);
        comPortGroup.add(rbCom2);
        comPortGroup.add(rbCom3);
        comPortGroup.add(rbCom4);
        comPortGroup.add(rbCom5);
        comPortGroup.add(rbCom6);
        lbTime.setText(getCurrentTime());
        btnDisconnect.setEnabled(false);
        btnSendTime.setEnabled(false);
        scanPort();
    }

    private String getCurrentTime() {
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
        return sdf.format(cal.getTime());
    }

    public boolean connect(String portName) throws NoSuchPortException, PortInUseException, UnsupportedCommOperationException, IOException, TooManyListenersException {
        CommPortIdentifier portIdentifier = CommPortIdentifier.getPortIdentifier(portName);
        if (portIdentifier.isCurrentlyOwned()) {
            System.out.println("Error: Port is currently in use");
        } else {

            int timeout = 1000;
            CommPort commPort = portIdentifier.open(this.getClass().getName(), timeout);
            if (commPort instanceof SerialPort) {
                serialPort = (SerialPort) commPort;
                serialPort.setSerialPortParams(9600, SerialPort.DATABITS_8, SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);
                serialPort.disableReceiveTimeout();
                serialPort.enableReceiveThreshold(1);
                inPutReader = new BufferedReader(new InputStreamReader(serialPort.getInputStream()));
                outPutWriter = serialPort.getOutputStream();
                serialPort.addEventListener(this);
                serialPort.notifyOnDataAvailable(true);
                //enable button
                btnSendTime.setEnabled(true);
                btnDisconnect.setEnabled(true);
                btnConnect.setEnabled(false);
                rbCom1.setEnabled(false);
                rbCom2.setEnabled(false);
                rbCom3.setEnabled(false);
                rbCom4.setEnabled(false);
                rbCom5.setEnabled(false);
                rbCom6.setEnabled(false);
            }
        }
        return false;
    }

    @Override
    public void serialEvent(SerialPortEvent spe) {
        switch (spe.getEventType()) {
            case SerialPortEvent.BI:
            case SerialPortEvent.OE:
            case SerialPortEvent.FE:
            case SerialPortEvent.PE:
            case SerialPortEvent.CD:
            case SerialPortEvent.CTS:
            case SerialPortEvent.DSR:
            case SerialPortEvent.RI:
            case SerialPortEvent.OUTPUT_BUFFER_EMPTY:
                break;
            case SerialPortEvent.DATA_AVAILABLE:
                String inputLine = "";

                try {

                    if (inPutReader.ready()) {
                        inputLine = inPutReader.readLine().trim();
                    }
                    addLog("Receive : " + inputLine);
                    if (inputLine.equals("I am 16f887")) {
                        
                        isConnectPIC = true;
                    } else {
                        lbTime.setText(inputLine);
                    }
                } catch (IOException e) {
                    System.out.println(e);
                }
                break;
        }
    }

    public class SerialWriter implements Runnable {

        OutputStream out;
        String writeString;

        public SerialWriter(OutputStream out, String outString) {
            this.out = out;
            this.writeString = outString;
        }

        public void run() {
            try {

                this.out.write(writeString.getBytes());
                addLog("Send message: " + writeString);
            } catch (IOException e) {
                addLog(e.getMessage());
            }
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        rbCom1 = new javax.swing.JRadioButton();
        rbCom2 = new javax.swing.JRadioButton();
        rbCom3 = new javax.swing.JRadioButton();
        rbCom4 = new javax.swing.JRadioButton();
        rbCom5 = new javax.swing.JRadioButton();
        rbCom6 = new javax.swing.JRadioButton();
        btnConnect = new javax.swing.JButton();
        btnDisconnect = new javax.swing.JButton();
        btnSendTime = new javax.swing.JButton();
        btnAutoDetect = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtMessage = new javax.swing.JTextArea();
        jPanel8 = new javax.swing.JPanel();
        lbTime = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Terminal");
        setPreferredSize(new java.awt.Dimension(800, 600));
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                closeEvent(evt);
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Set up"));

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("COM port"));

        rbCom1.setText("COM1");

        rbCom2.setText("COM2");

        rbCom3.setText("COM3");
        rbCom3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                rbCom3ActionPerformed(evt);
            }
        });

        rbCom4.setText("COM4");
        rbCom4.setToolTipText("");

        rbCom5.setText("COM5");

        rbCom6.setText("COM6");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(rbCom1)
                    .addComponent(rbCom2)
                    .addComponent(rbCom3)
                    .addComponent(rbCom4)
                    .addComponent(rbCom5)
                    .addComponent(rbCom6))
                .addGap(0, 38, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(rbCom1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(rbCom2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(rbCom3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(rbCom4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(rbCom5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(rbCom6)
                .addContainerGap(14, Short.MAX_VALUE))
        );

        btnConnect.setText("Connect");
        btnConnect.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnConnectActionPerformed(evt);
            }
        });

        btnDisconnect.setText("Disconnect");
        btnDisconnect.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDisconnectActionPerformed(evt);
            }
        });

        btnSendTime.setText("Send Time");
        btnSendTime.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSendTimeActionPerformed(evt);
            }
        });

        btnAutoDetect.setText("Auto Detect");
        btnAutoDetect.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAutoDetectActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnDisconnect, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnConnect, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnSendTime, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnAutoDetect, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(23, 23, 23)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(7, 7, 7))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 12, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btnConnect)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnDisconnect)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnSendTime)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnAutoDetect)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jScrollPane1.setBorder(javax.swing.BorderFactory.createTitledBorder("Message"));

        txtMessage.setEditable(false);
        txtMessage.setColumns(20);
        txtMessage.setLineWrap(true);
        txtMessage.setRows(5);
        jScrollPane1.setViewportView(txtMessage);

        jPanel8.setBorder(javax.swing.BorderFactory.createTitledBorder("Time"));

        lbTime.setFont(new java.awt.Font("Times New Roman", 1, 48)); // NOI18N
        lbTime.setForeground(new java.awt.Color(255, 0, 51));
        lbTime.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbTime.setText("00:00:00");

        javax.swing.GroupLayout jPanel8Layout = new javax.swing.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addComponent(lbTime, javax.swing.GroupLayout.PREFERRED_SIZE, 372, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(49, Short.MAX_VALUE))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addGap(41, 41, 41)
                .addComponent(lbTime, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(84, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(24, 24, 24))
            .addComponent(jScrollPane1)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(14, 14, 14)
                        .addComponent(jPanel8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 210, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void rbCom3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_rbCom3ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_rbCom3ActionPerformed
    public String getSelectedButtonText(ButtonGroup buttonGroup) {
        for (Enumeration<AbstractButton> buttons = buttonGroup.getElements(); buttons.hasMoreElements();) {
            AbstractButton button = buttons.nextElement();

            if (button.isSelected()) {
                return button.getText();
            }
        }

        return null;
    }

    public void scanPort() {
        try {
            addLog("Scanning port...");
            Enumeration ports = CommPortIdentifier.getPortIdentifiers();

            while (ports.hasMoreElements()) {
                CommPortIdentifier port = (CommPortIdentifier) ports.nextElement();
                String compName = port.getName();
                for (Enumeration<AbstractButton> buttons = comPortGroup.getElements(); buttons.hasMoreElements();) {
                    AbstractButton button = buttons.nextElement();
                    if (button.getText().equals(compName)) {
                        button.setEnabled(true);
                    }

                }
                addLog(port.getName() + " is active ");

            }
        } catch (Exception ex) {
            addLog("Exception while scanning port " + ex.getMessage());
        }
    }

    private void showDialog(String message) {
        JOptionPane.showMessageDialog(this, message);
        addLog(message);
    }
    private void btnConnectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnConnectActionPerformed
        String portSelected = getSelectedButtonText(comPortGroup);
        addLog("Connecting to port " + portSelected);
        if (portSelected != null) {
            try {
                connect(portSelected);
                addLog("Connected to port " + portSelected + " successfully");

            } catch (NoSuchPortException ex) {
                showDialog("Port " + portSelected + " does not exists");
            } catch (PortInUseException ex) {
                showDialog("Port " + portSelected + " is using by other application");
            } catch (UnsupportedCommOperationException ex) {
                showDialog("Port " + portSelected + " is not supported");
            } catch (IOException ex) {
                showDialog("IO problems with port " + portSelected);

            } catch (TooManyListenersException ex) {
                showDialog("TooManyListenersException " + portSelected);
            }
        }
    }//GEN-LAST:event_btnConnectActionPerformed

    private void addLog(String message) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        txtMessage.setText(txtMessage.getText() + dateFormat.format(date) + " - " + message + "\n");
    }
    private void btnSendTimeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSendTimeActionPerformed
        String time = getCurrentTime() + "\0";
        new SerialWriter(outPutWriter, time).run();
    }//GEN-LAST:event_btnSendTimeActionPerformed
    private void disconnect() {
        try {
            if(inPutReader != null){
                inPutReader.close();
            }
            if(outPutWriter != null){
                outPutWriter.close();
            }
            if(serialPort != null){
                serialPort.close();
            }
            btnConnect.setEnabled(true);
            btnSendTime.setEnabled(false);
            btnDisconnect.setEnabled(false);
            btnAutoDetect.setEnabled(true);
            addLog("Disconnect successfully");
            isConnectPIC = false;
            scanPort();
        } catch (Exception ex) {
            addLog(ex.getMessage());
        }
    }
    private void btnDisconnectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDisconnectActionPerformed
        disconnect();

    }//GEN-LAST:event_btnDisconnectActionPerformed

    private void closeEvent(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_closeEvent
        disconnect();
    }//GEN-LAST:event_closeEvent

    private void btnAutoDetectActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAutoDetectActionPerformed

        addLog("Auto scanning port...");
        Enumeration ports = CommPortIdentifier.getPortIdentifiers();

        while (ports.hasMoreElements()) {
            CommPortIdentifier port = (CommPortIdentifier) ports.nextElement();
            String compName = port.getName();
            //compName = "COM2";
            addLog("Trying connect to port " + compName);
            try {
                boolean isConnect = connect(compName);
                System.out.println("Try best");
                    
                    new SerialWriter(outPutWriter, "a" + "\0").run();
                    Thread.sleep(500);
                    if (isConnectPIC) {
                        addLog("Connect successfull to port " + compName);
                        return;
                    } else {
                        disconnect();
                    }
                

            } catch (NoSuchPortException ex) {
                addLog("Port " + compName + " does not exists");
            } catch (PortInUseException ex) {
                addLog("Port " + compName + " is using by other application");
            } catch (UnsupportedCommOperationException ex) {
                addLog("Port " + compName + " is not supported");
            } catch (IOException ex) {
                addLog("IO problems with port " + compName);

            } catch (TooManyListenersException ex) {
                addLog("TooManyListenersException " + compName);
            }
             catch (InterruptedException ex) {
                addLog("InterruptedException " + compName);
            }

        }

    }//GEN-LAST:event_btnAutoDetectActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnAutoDetect;
    private javax.swing.JButton btnConnect;
    private javax.swing.JButton btnDisconnect;
    private javax.swing.JButton btnSendTime;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lbTime;
    private javax.swing.JRadioButton rbCom1;
    private javax.swing.JRadioButton rbCom2;
    private javax.swing.JRadioButton rbCom3;
    private javax.swing.JRadioButton rbCom4;
    private javax.swing.JRadioButton rbCom5;
    private javax.swing.JRadioButton rbCom6;
    private javax.swing.JTextArea txtMessage;
    // End of variables declaration//GEN-END:variables
}
