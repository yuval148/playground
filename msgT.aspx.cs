﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class msgT : System.Web.UI.Page
{
    public string json = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["ErrIsertForm"] = "";//משתנה שיציג הודעה ללקוח אם סיסמה או שם משתמש קיימים
        DateTime today = DateTime.Today;
        string datec = today.ToString("dd/MM/yyyy");
        if (Session["userNameT"] == null)
        {
            Response.Redirect("loginT.aspx");
        }
        string icon = "", title = "", msg = "", kita, exp,dd,mm,yyyy;                                                            
        string sqlkita = "SELECT DISTINCT kita FROM users;";// כיתה
        DataTable dtkita = MyAdoHelper.ExecuteDataTable("db1.mdb", sqlkita); 
        json = Json(dtkita);
        if (Request.Form["submit"] != null)
        {
            icon = Request.Form["icon"];
            title = Request.Form["title"];
            msg = Request.Form["msg"];
            kita = Request.Form["kita"];
            dd = Request.Form["dd"];
            mm = Request.Form["mm"];
            yyyy = Request.Form["yyyy"];
            exp = dd + "/" + mm + "/" + yyyy;
            if (title == "" || kita == "")
            {
                Session["ErrIsertForm"] = "נתונים לא מולאו כשורה";
                // Response.Redirect("form.aspx");
            }
            else
            { 
                string fileName = "db1.mdb";       //SQLSTUF START
                string sql = "INSERT INTO MSG (icon, title, msg, kita, datec, exp) VALUES('" + icon + "','" + title + "','" + msg + "','" + kita + "','" + datec + "','" + exp + "');";
                MyAdoHelper.DoQuery(fileName, sql);
                Session["ErrIsertForm"] = "הפעולה הושלמה בהצלחה!";
            }

        }

    }
    public string Json(DataTable table)
    {
        {
            string JSONString = string.Empty;
            JSONString = Newtonsoft.Json.JsonConvert.SerializeObject(new { Class = table });
            return JSONString;
        }
    }

}


