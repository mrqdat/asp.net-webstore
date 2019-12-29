﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {

            string tenTK = txb_user.Text;
            string mk = txb_pass.Text;


            if (TaiKhoanBUS.KTDangNhap(tenTK, mk))
            {

                //Session.Add("username", tenTK);

                HttpCookie cookie = new HttpCookie("tenTK");
                cookie.Value = tenTK;
                cookie.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookie);

                if (tenTK == "admin")
                {

                    Response.Write("<script>alert('Đăng nhập thành công')</script>");
                    Response.Redirect("Admin_Dashboard.aspx");

                }
                else
                {
                    //Response.Redirect(Request.RawUrl);
                    Response.Redirect("user/index.aspx");

                }
            }
            else
            {

                Response.Write("<script>alert('Đăng nhập thất bại')</script>");
            }
        }
    }
}