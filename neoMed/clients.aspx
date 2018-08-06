<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clients.aspx.cs" Inherits="neoMed.clients" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>neoMed Clients</title>
    <link rel="stylesheet" href="Style/style.css" />
</head>
<body>
    <form runat="server">
        <div id="header">
            <div id="title">
                <h1>neoMed CRM</h1>
            </div>
        </div>
        <div id="navbar">
            <label for="show-menu" class="show-menu">
                <div class="navbar-line-wrapper">
                    <div class="navbar-line"></div>
                    <div class="navbar-line"></div>
                    <div class="navbar-line"></div>
                </div>
            </label>
            <input type="checkbox" id="show-menu" role="button" />
            <ul id="menu">
                <li>
                    <asp:Button CssClass="button" ID="btnHome" runat="server" Text="HOME" OnClick="btnHome_Click" /></li>
                <li>
                    <asp:Button CssClass="button" ID="btnClients" runat="server" Text="Clients" OnClick="btnClients_Click" /></li>
                <li>
                    <asp:Button CssClass="button" ID="btnAppointments" runat="server" Text="Appointments" OnClick="btnAppointments_Click" /></li>
                <li>
                    <asp:Button CssClass="button" ID="btnProcedures" runat="server" Text="Procedures" OnClick="btnProcedures_Click" /></li>
                <li>
                    <asp:Button CssClass="button" ID="btnContact" runat="server" Text="Contact" OnClick="btnContact_Click" /></li>
            </ul>
        </div>
        <div id="content">
            <div>
                <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" Style="min-width: 300px; min-height: 300px;" CellPadding="0" GridLines="None" ForeColor="#333333" ShowFooter="True" Width="912px" OnRowCommand="GridView1_RowCommand" Height="340px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField HeaderText="Id" SortExpression="Id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton ValidationGroup="INSERT" ID="lbInsert" CommandName="InsertRow" runat="server" ForeColor="#8C4510" Font-Bold="True">Insert</asp:LinkButton>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" SortExpression="name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertName" runat="server"
                                    ErrorMessage="Name is a required field"
                                    ControlToValidate="txtName" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Age" SortExpression="age">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertAge" runat="server"
                                    ErrorMessage="Age is a required field"
                                    ControlToValidate="txtAge" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Ssn" SortExpression="ssn">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ssn") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("ssn") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtSsn" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertSsn" runat="server"
                                    ErrorMessage="Ssn is a required field"
                                    ControlToValidate="txtSsn" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="email">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertEmail" runat="server"
                                    ErrorMessage="Email is a required field"
                                    ControlToValidate="txtEmail" Text="*" ForeColor="Red">
                                </asp:RequiredFieldValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbEdit" CommandArgument='<%# Eval("Id") %>' CommandName="EditRow" ForeColor="#8C4510" runat="server">Edit</asp:LinkButton>
                                <asp:LinkButton ID="lbDelete" CommandArgument='<%# Eval("Id") %>' CommandName="DeleteRow" ForeColor="#8C4510" runat="server" CausesValidation="false">Delete</asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton ID="lbUpdate" CommandArgument='<%# Eval("Id") %>' CommandName="UpdateRow" ForeColor="#8C4510" runat="server">Update</asp:LinkButton>
                                <asp:LinkButton ID="lbCancel" CommandArgument='<%# Eval("Id") %>' CommandName="CancelUpdate" ForeColor="#8C4510" runat="server" CausesValidation="false">Cancel</asp:LinkButton>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:ValidationSummary ValidationGroup="INSERT" ID="ValidationSummary1" ForeColor="red" runat="server" />
                <asp:ValidationSummary ID="ValidationSummary2" ForeColor="red" runat="server" />
                <div class="row color-table">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                </div>
            </div>
        </div>
        <div id="footer">
            <p>&copy; Footer</p>
        </div>
    </form>
</body>
</html>
