﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;

namespace GUI
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKi_Click(object sender, EventArgs e)
        {
            TaiKhoanDTO tk = new TaiKhoanDTO();
            tk.TenTaiKhoan = username.Text;
            tk.MatKhau = pass.Text;
            tk.Email = txb_Email.Text;
            tk.SDT = txb_SDT.Text;
            tk.DiaChi = txb_DiaChi.Text;
            tk.HoTen = txb_HoTen.Text;

            if (TaiKhoanBUS.ThemTK(tk))
            {
                Response.Write("<script>alert('Đăng kí thành công')</script>");
            }
            else
            {
                Response.Write("<script>alert('Tên tài khoản đã có người sử dụng. Đăng kí thất bại')</script>");
            }
        }
    }
}