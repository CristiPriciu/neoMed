<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointments.aspx.cs" Inherits="neoMed.Appointments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>neoMed Appointments</title>
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
            <asp:GridView ID="GridView1" runat="server" CellPadding="0" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"
                ShowFooter="True" OnRowCommand="GridView1_RowCommand" Height="275px" Width="988px">
                <Columns>
                    <asp:TemplateField HeaderText="Id" SortExpression="Id" ItemStyle-HorizontalAlign="Center">
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
                    <asp:TemplateField HeaderText="Client Id" SortExpression="client_id" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("client_id") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("client_id") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtClient_id" runat="server"></asp:TextBox><asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertClientId" runat="server"
                                ErrorMessage="Client Id is a required field"
                                ControlToValidate="txtClient_id" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date" SortExpression="date" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox><asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertDate" runat="server"
                                ErrorMessage="Date is a required field"
                                ControlToValidate="txtDate" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mail Sent" SortExpression="mail_sent" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:CheckBox ID="Checkbox1" runat="server" Checked='<%# Bind("mail_sent") %>'></asp:CheckBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="Label4" runat="server" Checked='<%# Bind("mail_sent") %>' Enabled="false"></asp:CheckBox>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:CheckBox ID="txtMailSent" runat="server"></asp:CheckBox>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Visit Honored" SortExpression="honored" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:CheckBox ID="Checkbox2" runat="server" Checked='<%# Bind("honored") %>'></asp:CheckBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="Label5" runat="server" Checked='<%# Bind("honored") %>' Enabled="false"></asp:CheckBox>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:CheckBox ID="txtHonored" runat="server"></asp:CheckBox>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Paid" SortExpression="paid" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:CheckBox ID="Checkbox3" runat="server" Checked='<%# Bind("paid") %>'></asp:CheckBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="Label6" runat="server" Checked='<%# Bind("paid") %>' Enabled="false"></asp:CheckBox>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:CheckBox ID="txtPaid" runat="server"></asp:CheckBox>
                        </FooterTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Total Paid" SortExpression="total_paid" ItemStyle-HorizontalAlign="Center">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("total_paid") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("total_paid") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtTotalPaid" runat="server"></asp:TextBox><asp:RequiredFieldValidator ValidationGroup="INSERT" ID="rfvInsertTotalPaid" runat="server"
                                ErrorMessage="Total Paid is a required field"
                                ControlToValidate="txtTotalPaid" Text="*" ForeColor="Red">
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
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
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
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
        </div>
    </form>
    <div id="footer">
        <p>&copy; Footer</p>
    </div>
</body>
</html>
