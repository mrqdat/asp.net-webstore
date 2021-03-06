﻿<%@ Page Language="C#" MasterPageFile="index.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="GUI.user.Cart" %>

<asp:Content ID="cart_content1" ContentPlaceHolderID="head" runat="server">
    <title>Divisima | Product</title>
    <meta charset="UTF-8">
    <meta name="description" content=" Divisima | eCommerce Template">
    <meta name="keywords" content="divisima, eCommerce, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="shortcut icon" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">


    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/flaticon.css" />
    <link rel="stylesheet" href="css/slicknav.min.css" />
    <link rel="stylesheet" href="css/jquery-ui.min.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/style.css" />


    <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
    <%--<script type="text/javascript">
        function cal_total(){
            var sp = document.getElementById("lb_price");
            var sp1 = document.getElementById("lb_price1");
            var sp2 = document.getElementById("lb_price2");
            var sp3 = document.getElementById("lb_price3");
            var sp4 = document.getElementById("lb_price4");
            var total = 0;

            total = sp + sp1 + sp2;
            return total;
        }
    </script>--%>
    <%-- <script>
        function capnhatsoluong() {
            var xhttp = new XMLHttpRequest();
            var soluong = document.getElementById("qty_sp");
            xhttp.onreadystatechange = function () {
                if(this.readyState == )
            }
        }

    </script>--%>
</asp:Content>

<asp:Content ID="cart_content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page info -->
    <div class="page-top-info">
        <div class="container">
            <h4>Giỏ hàng</h4>
            <div class="site-pagination">
                <a href="index.aspx">Trang chủ</a> /
				<a href="#">Giỏ hàng của bạn</a>
            </div>
        </div>
    </div>
    <!-- Page info end -->


    <!-- cart section end -->
    <section class="cart-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="cart-table" style="padding: 25px 15px 0;">
                        <h3>Giỏ hàng của bạn</h3>

                        <div class="cart-table-warp">
                            <div class="container" style="text-align: left;">
                                <asp:GridView ID="grvGioHang" runat="server" CssClass="table table-striped table-hover" GridLines="None" AutoGenerateColumns="false" OnRowCommand="grvGioHang_RowCommand">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>' Width="100" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="TenSP" HeaderText="Sản phẩm" />
                                        <asp:BoundField DataField="GiaTien" HeaderText="Giá" />
                                        <asp:TemplateField HeaderText="Số lượng">
                                            <ItemTemplate>
                                                <div class="quantity">
                                                    <div class="pro-qty">
                                                        <asp:TextBox ID="qty_sp" runat="server" type="text" value='<%# Eval("SoLuong") %>' />
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <%--<asp:BoundField DataField="SoLuong" HeaderText="Quantity" />--%>
                                        <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
                                        <%--<asp:CommandField ShowDeleteButton="true" DeleteImageUrl="~/user/img/cart/reset.png"   ButtonType="Image" ControlStyle-Width="15px"/>--%>
                                        <%--<asp:CommandField ShowDeleteButton="true" DeleteImageUrl="~/user/img/cart/Delete-icon.png"   ButtonType="Image" ControlStyle-Width="15px"  data/>--%>

                                        <asp:TemplateField>
                                            <ItemTemplate>

                                                <asp:LinkButton ID="btn_xoa" runat="server" Type="button" data-toggle="modal" data-target="#modal_thongbao"><image src="/user/img/cart/Delete-icon.png" Width="20px" ></image></asp:LinkButton>


                                                <div class="modal fade" id="modal_thongbao" role="dialog" style="top: 30%;">
                                                    <div class="modal-dialog modal-md">
                                                        <div class="modal-content">
                                                            <div class="modal-header">



                                                                <h4 class="modal-title">Thông báo</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Bạn có chắc muốn xóa sản phầm này khỏi giỏ hàng ?</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <asp:LinkButton ID="btn_xoasp" runat="server" type="button" CssClass="btn btn-warning" data-dismiss="modal" Text="Chắc" CommandName="xoasp" CommandArgument='<%# Eval("MaSP") %>'   CausesValidation="false" />
                                                                <button type="button" class="btn btn-success" data-dismiss="modal">À, nhấn nhầm thôi !</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>

                                </asp:GridView>
                            </div>

                        </div>
                        <div class="total-cost">
                            <h6>Tổng cộng:
                                <asp:Label ID="lblTongTien" runat="server" Text="0"></asp:Label></h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 card-right">
                    <div class="promo-code-form">
                        <input type="text" placeholder="Enter promo code">
                        <button>Submit</button>
                    </div>
                    <asp:LinkButton ID="btn_ttoan" runat="server" Type="button" CssClass="site-btn"  Text="Thanh Toán" OnClick="btn_ttoan_Click" />
 
                    <asp:LinkButton type="button" ID="btn_ttmuahang" runat="server" CssClass="site-btn sb-dark" OnClick="btn_ttmuahang_Click">Tiếp tục mua hàng</asp:LinkButton>
                </div>
            </div>
        </div>
    </section>
    <!-- cart section end -->

    <!-- Related product section -->
    <section class="top-letest-product-section">
        <div class="container">
            <div class="section-title">
                <h2>Sản phẩm mới nhất</h2>
            </div>
            <div class="product-slider owl-carousel">
                <asp:Repeater ID="rpt_slider" runat="server" OnItemCommand="rpt_slider_ItemCommand">
                    <ItemTemplate>
                        <div class="product-item">

                            <div class="pi-pic">
                                <asp:HyperLink ID="hpl_sp" runat="server">
                                    <asp:Image ID="imgAnhMinhHoa" runat="server" ImageUrl='<%# "img/product/" + Eval("AnhMinhHoa") %>' />
                                </asp:HyperLink>
                                <div class="pi-links">
                                    <%--                                        <%--<i class=""></i><asp:LinkButton ID="btnThemGH" runat="server" Cssclass="add-card  flaticon-bag"  Text="ADD TO CART" CommandName="ADD TO CART" CommandArgument='<%# Eval("MaSP") %>' />--%>
                                    <asp:LinkButton ID="btn_addtocart" runat="server" CssClass="add-card" CommandName="ThemGH" CommandArgument='<%# Eval("MaSP") %>'><i class="flaticon-bag"></i><span>ADD TO CART</span></asp:LinkButton>
                                    <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                                </div>
                            </div>

                            <div class="pi-text">
                                <asp:Label ID="lblGiaTien" runat="server" Text='<%# Eval("GiaTien") %>'> </asp:Label>
                                <br />
                                <asp:Label ID="lblTenSP" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </section>
    <!-- Related product section end -->

</asp:Content>
