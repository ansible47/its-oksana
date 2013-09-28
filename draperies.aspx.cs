using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class draperies : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        Dictionary<string, string> dictionary = new Dictionary<string, string>();
        dictionary.Add("1.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("2.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("3.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. ML Design Studio. Designer Matt Lorenz. Draperies by It’s Oksana.");
        dictionary.Add("4.jpg", "ML Design Studio. Designer Matt Lorenz. Draperies by It’s Oksana.");
        dictionary.Add("5.jpg", "Designer Mary Chiaro. Draperies by It’s Oksana.");
        dictionary.Add("6.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("7.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("8.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("9.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("10.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("11.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("12.jpg", "Designer Sharon McNerney. Draperies by It’s Oksana.");
        dictionary.Add("13.jpg", "Designer Sharon McNerney. Draperies by It’s Oksana.");
        dictionary.Add("14.jpg", "LB Design. Draperies by It’s Oksana.");
        dictionary.Add("15.jpg", "LB Design. Draperies by It’s Oksana.");
        dictionary.Add("16.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");
        dictionary.Add("17.jpg", "Verde Design Studio. Designer Michele Fitzpatrick. Draperies by It’s Oksana.");


        if (!IsPostBack)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/images/draperies/"));
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

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "showImagesLightbox('" + output + "', 'gallery')", true);
        }
    }
}