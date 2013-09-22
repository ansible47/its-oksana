using System;
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
        if (!IsPostBack)
        {
            string[] filePaths = Directory.GetFiles(Server.MapPath("~/images/lasercuttings/"));
            List<ListItem> files = new List<ListItem>();
            string output = "";
            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                output += new ListItem(Path.GetFileName(filePath), filePath) + ",";
            }

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "showImagesLightbox('" + output + "', 'gallery')", true);
        }
    }
}