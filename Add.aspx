<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Admin_Products_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add a Product</title>
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/font-awesome.min.css" rel="stylesheet" />


</head>
<body>
    <div class="container">
        <h1 class="text-left"><i class=" fa-plus-square-o"></i>Add a Product</h1>
        <div class="col-lg-12">
            <div class="well clearfix">
                <form runat="server" class="form-horizontal">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="control-label col-lg-4">Name</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtName" runat="server"
                                    class="form-control"
                                    MaxLength="50" autocomplete="off" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Category</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="ddlCategory" runat="server"
                                    CssClass="form-control" autocomplete="off" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Code</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtCode" runat="server"
                                    CssClass="form-control" autocomplete="off"
                                    MaxLength="20" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Description</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"
                                    MaxLength="300" TextMode="MultiLine" Rows="5" autocomplete="off" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Image </label>
                            <div class="col-lg-8">
                                <asp:FileUpload ID="fullImage" runat="server" class="form-control" autocomplete="off" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Price</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtPrice" runat="server"
                                    class="form-control" type="number" min="0.01" max="500000.00"
                                    step="0.01" autocomplete="off" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Is Featured?</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="ddlFeatured" runat="server" CssClass="form-control" autocomplete="off">
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label class="control-label col-lg-4">Available</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtAvailable" runat="server" CssClass="form-control"
                                    MaxLength="12" type="number" required></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Critical Level</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtCritical" runat="server"
                                    class="form-control" autocomplete="off"
                                    MaxLength="12" type="number" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-lg-4">Maximun</label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="txtMaximum" runat="server"
                                    class="form-control" autocomplete="off"
                                    MaxLength="12" type="number" required />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <span class="pull-right">
                            <asp:Button ID="btnAdd" runat="server"
                                class="btn btn-success pull-right" Text="Add"
                                OnClick="btnAdd_Click"/>
                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-default" Text="Cancel"
                            PostBackUrl="Default.aspx" formnovalidate />
                        </span>
                    </div>
                </form>
                <div class="col-lg-6">Made by <span style="color:aqua;">David-John A. Belga</span></div>
            </div>
        </div>
    </div>


</body>
</html>
