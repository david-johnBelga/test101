﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Admin_Products_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProducts();
        }
    }

    void GetProducts()
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"SELECT p.ProductID, p.Name, c.Category, p.Description, 
            p.Image, p.Price, p.IsFeatured, p.DateAdded, p.DateModified FROM Products p
            INNER JOIN Categories c ON p.CatID = c.CatID";
            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Products");

                    lvProducts.DataSource = ds;
                    lvProducts.DataBind();
                }
            }
        }
    }

    void GetProducts(string keyword)
    {
        using (SqlConnection con = new SqlConnection(Util.GetConnection()))
        {
            con.Open();
            string SQL = @"SELECT ProductID, Name, CatID,
                Description, Image, Price, IsFeatured, DateAdded, DateModified
                FROM Products WHERE 
                ProductID LIKE @keyword OR
                Name LIKE @keyword OR
                CatID LIKE @keyword OR
                Description LIKE @keyword OR
                Image LIKE @keyword OR
                Price LIKE @keyword";
            using (SqlCommand cmd = new SqlCommand(SQL, con))
            {
                cmd.Parameters.AddWithValue("@keyword", "%" + keyword + "%");
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Products");

                    lvProducts.DataSource = ds;
                    lvProducts.DataBind();
                }
            }
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtKeyword.Text == "")
        {
            GetProducts();
        }
        else
        {
            GetProducts(txtKeyword.Text);
        }
    }
    protected void lvProducts_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        dpProducts.SetPageProperties(e.StartRowIndex,
            e.MaximumRows, false);
        if (txtKeyword.Text == "")
        {
            GetProducts();
        }
        else
        {
            GetProducts(txtKeyword.Text);
        }
    }
}