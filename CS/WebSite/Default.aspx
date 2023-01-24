<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to move an ASPxGridView row up or down a line by using external buttons   
    </title>
    <script type="text/javascript">
        var stack = new Array();

        function up_OnClick(s, e) {
            DoAction("up");
        }
        function down_OnClick(s, e) {
            DoAction("down");
        }
        function DoAction(name) {
            if (!gv.InCallback())
                gv.PerformCallback(name);
            else
                stack.push(name);
        }
        function gv_EndCallback(s, e) {
            if (stack.length > 0) {
                s.PerformCallback(stack[0]);
                stack.splice(0, 1);
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <dx:ASPxGridView ID="gv" ClientInstanceName="gv" runat="server" AutoGenerateColumns="False"
                        KeyFieldName="ID" OnCustomCallback="gv_CustomCallback">
                        <ClientSideEvents EndCallback="gv_EndCallback" />
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="ID" ReadOnly="True"
                                VisibleIndex="1" SortOrder="Ascending">
                                <EditFormSettings Visible="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="Item" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <SettingsBehavior AllowFocusedRow="True" />
                    </dx:ASPxGridView>
                </td>
                <td>
                    <dx:ASPxButton ID="up" ClientInstanceName="up" runat="server" Text="Up" Width="55"
                        AutoPostBack="false">
                        <ClientSideEvents Click="up_OnClick" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="down" ClientInstanceName="down" runat="server" Text="Down" Width="55"
                        AutoPostBack="false">
                        <ClientSideEvents Click="down_OnClick" />
                    </dx:ASPxButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
