﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class lasercutting : System.Web.UI.Page
{


    private class ImageFileInfo
    {
        public string FileName { get; set; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {



        Dictionary<string, string> dictionary = new Dictionary<string, string>();
        dictionary.Add("1.jpg", "It’s Oksana Design Studio. Designed by Oksana Ambroz.");
        dictionary.Add("2.jpg", "It’s Oksana Design Studio. Designed by Oksana Ambroz.");
        dictionary.Add("3.jpg", "It’s Oksana Design Studio. Designed by Oksana Ambroz. Installation at Intelligentsia Coffee, Chicago Loop Location.");
        dictionary.Add("4.jpg", "It’s Oksana Design Studio. Designed by Oksana Ambroz.");
        dictionary.Add("5.jpg", "It’s Oksana Design Studio. Designed by Oksana Ambroz.");
        dictionary.Add("6.jpg", "It’s Oksana Design Studio. Designed by Oksana Ambroz.");
        dictionary.Add("7.jpg", "It’s Oksana Design Studio. Designed by Oksana Ambroz.");
        dictionary.Add("8.jpg", "It’s Oksana Design Studio. Designed by Oksana Ambroz.");
        dictionary.Add("9.jpg", "It’s Oksana Design Studio. Designed by Bridget Crowe.");
        dictionary.Add("10.jpg", "It’s Oksana Design Studio. Designed by Bridget Crowe.");
        dictionary.Add("11.jpg", "It’s Oksana Design Studio. Designed by Bridget Crowe.");
        dictionary.Add("12.jpg", "It’s Oksana Design Studio. Designed by Bridget Crowe.");


        if (!IsPostBack)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/images/lasercuttings/"));
            List<ListItem> files = new List<ListItem>();
            string output = "";
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                if (dictionary.ContainsKey(Path.GetFileName(filePath).ToLower()))
                {
                    string caption = dictionary[Path.GetFileName(filePath).ToLower()];
                    output += Path.GetFileName(filePath) + ",";
                    output += caption + ";";
                }
                else
                {


                }

            }

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "showImagesLightbox('" + output + "', 'gallery','lasercuttings')", true);
        }
    }
}