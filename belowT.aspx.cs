﻿using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class belowT : System.Web.UI.Page
{
    public string json = "";
    public string userPass, userName;

    protected void Page_Load()
    {
        if (Session["userNameT"] == null)
        {
            Response.Redirect("loginT.aspx");
        }
        if (Session["nameT"] != null)
        {
            string fileName = "db1.mdb"; //שם המסד
            string sql = "SELECT * FROM users;";
            DataTable dt = MyAdoHelper.ExecuteDataTable(fileName, sql); //users
            //צריך ליצור פה את הטבלה החדשה
            DataTable result = new DataTable();
            result.Columns.Add("name", typeof(string));
            result.Columns.Add("team", typeof(string));
            result.Columns.Add("ID", typeof(string));
            result.Columns.Add("kita", typeof(string));
            result.Columns.Add("shlita", typeof(int));
            result.Columns.Add("pic", typeof(string));
            DateTime today = DateTime.Today;
            string datee = today.ToString("dd/MM/yyyy");
            //יוצר טבלה של כל המשתמשים עם שליטה כללית מתחת ל55
            //ומעדכן שליטה בגרף
            for (int t = 0; t < dt.Rows.Count; t++)//עבור כל תלמיד
            {
                if(xpstuf.memuza(dt.Rows[t]["ID"].ToString())<=55)
                {
                    DataRow to = result.NewRow();
                    to["name"] = dt.Rows[t]["name"].ToString();
                    to["team"] = dt.Rows[t]["team"].ToString();
                    to["ID"] = dt.Rows[t]["ID"].ToString();
                    to["kita"] = dt.Rows[t]["kita"].ToString();
                    to["shlita"] =xpstuf.memuza(dt.Rows[t]["ID"].ToString());
                    to["pic"] = dt.Rows[t]["pic"].ToString();
                    result.Rows.Add(to);//הכנסת השורה לריזולטס.
                }
                //update gra
                int shlitagra = xpstuf.memuza(dt.Rows[t]["ID"].ToString());
                string sql4 = "SELECT * FROM GRA" + dt.Rows[t]["ID"].ToString() + " WHERE datee='" + datee + "';";
                if (MyAdoHelper.IsExist(fileName, sql4)) //אם כבר יש בתאריך הזה
                {
                    string sqlgra2 = "UPDATE GRA" + dt.Rows[t]["ID"].ToString() + " SET shlita=" + shlitagra + " WHERE datee='" + datee + "';";
                    MyAdoHelper.DoQuery(fileName, sqlgra2);
                }
                else
                {
                    string sqlgra1 = "INSERT INTO GRA" + dt.Rows[t]["ID"].ToString() + " (shlita, datee) VALUES(" + shlitagra + " ,'" + datee + "');";
                    MyAdoHelper.DoQuery(fileName, sqlgra1);
                }
                //end update 
            }
            json = Json(result);
        }
    }
    public string Json(DataTable table)
    {
        {
            string JSONString = string.Empty;
            JSONString = Newtonsoft.Json.JsonConvert.SerializeObject(new { stu = table });
            return JSONString;
        }
    }


}


