﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Net;
using System.Threading;
using System.ComponentModel;
using KailleraNET.Util;
using log4net;
using KailleraNET.Views;

namespace KailleraNET
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        IPAddress ip;
        int port;
        bool selectedServerFromList;

        ServerListView serverList;

        KailleraWindowMananger k = new KailleraWindowMananger();
        SettingsManager settings = SettingsManager.getMgr();

        public MainWindow()
        {
            InitializeComponent();
            addServersToComboBox();
            addUsernamesToComboBox();
        }

        /// <summary>
        /// Populates the username combobox with usernames
        /// </summary>
        private void addUsernamesToComboBox()
        {
            foreach (String name in settings.getUsernames())
            {
                usernameBox.Items.Add(name);
            }
            usernameBox.Text = usernameBox.Items[0].ToString();
        }

        /// <summary>
        /// Populates the server combobox with server names
        /// </summary>
        private void addServersToComboBox()
        {
            foreach (KeyValuePair<string, string> entry in settings.getServers())
            {
                serverBox.Items.Add(entry.Key + "," + entry.Value);
            }
            serverBox.Text = serverBox.Items[0].ToString();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            string username = usernameBox.Text;
            if (username.Equals(""))
            {
                MessageBox.Show("Error - You must enter a username.", "Please enter a username.");
                return;
            }

            try
            {
                parseIPString(ref ip, ref port, serverBox.Text);
                if (ip == null)
                {
                    throw new ArgumentException();
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Error - cannot read ip address.  Format is <name>,<ip>:<port>.", "IP Error");
                return;
            }

            settings.addUsername(username);
            /*
                        ChatWindow wind = new ChatWindow();
                        wind.Closed += connectionClosed;
                        wind.Show();
                        wind.Start(ip, port, username);
             */
            this.Visibility = Visibility.Hidden;

            k.BeginNewConnection(ip, port, username);
            this.Close();

        }

        /// <summary>
        /// Sets the correct ip and port - iterates first through saved servers and then tries
        /// to parse text directly
        /// </summary>
        /// <param name="ip">ip to set</param>
        /// <param name="port">port to set</param>
        /// <param name="text">text to parse</param>
        private void parseIPString(ref IPAddress ip, ref int port, string text)
        {
            bool shouldSplit = false;
            string searchText = text;
            if (text.Contains(','))
            {
                searchText = text.Split(',')[0];
                shouldSplit = true;
            }

            foreach (var entry in settings.getServers())
            {
                if (searchText.Equals(entry.Key))
                {
                    string[] ipPort = entry.Value.Split(':');
                    IPAddress.TryParse(ipPort[0], out ip);
                    int.TryParse(ipPort[1], out port);
                    return;
                }
            }

            if (shouldSplit) searchText = text.Split(',')[1];

            //Directly entered ip:port
            string[] args = searchText.Split(':');
            IPAddress.TryParse(args[0], out ip);
            int.TryParse(args[1], out port);
            if(!selectedServerFromList)
                settings.addServer("Server", searchText);
            selectedServerFromList = false;
        }


        private void connectionClosed(object sender, EventArgs e)
        {
            this.Visibility = Visibility.Visible;
        }

        private void serverListButton_Click(object sender, RoutedEventArgs e)
        {
            serverList = new ServerListView();
            serverList.chooseServer += addAndSelectServer;
            serverList.begin();
        }

        public void addAndSelectServer(Server curr)
        {
            selectedServerFromList = true;
            settings.addServer(curr.name, curr.ip.ToString() + ":" + curr.port.ToString());
            serverBox.Text = curr.name + "," + curr.ip.ToString() + ":" + curr.port.ToString();
            serverList = null;
        }
    }


}
