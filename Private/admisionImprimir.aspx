<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admisionImprimir.aspx.cs"
    Inherits="admisionImprimir" StylesheetTheme="SkinFile" Theme="SkinFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>EXPEDIENTE ACADÉMICO</title>
    <link href="../../../Styles/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 99%;
            width: 5%;
        }
        .auto-style2 {
            width: 100%;
            height: 99%;
        }
        .auto-style3 {
            height: 99%;
        }
    </style>
</head>
<body oncontextmenu="return false;" style="background: none transparent;">
    <form id="form1" runat="server" autocomplete="off">
    <div id="cont">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table style="width: 100%; height: 5%">
            <tr>
                <td style="vertical-align: top;" class="auto-style1">
                                            
                </td>
                <td style="vertical-align: top;" class="auto-style3">
                                            
                                            &nbsp;</td>
            </tr>
            <tr>
                <td style="vertical-align: top;" class="auto-style1">

                </td>
                <td style="width: 100%; height: 99%; vertical-align: top;">

                                            <asp:Button ID="Imprimir" runat="server" Text="Imprimir" OnClientClick="Imprimir_Contrato()" SkinID="ButtonSK1" /></td>
            </tr>
            <tr>
                <td style="vertical-align: top;" class="auto-style1">

                </td>
                <td style="vertical-align: top;" class="auto-style2">

                    <asp:Label ID="cod" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;" class="auto-style1">

                    &nbsp;</td>
                <td style="vertical-align: top;" class="auto-style2">

                    <asp:Label ID="lbl_contrato1" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
    <script language="javascript" type="text/javascript">
        function Imprimir_Contrato() {

            var theButton = document.getElementById('Imprimir');
            var theRadiob = document.getElementById('RadioButtonList1');

            theButton.style.display = 'none';
            if (theRadiob != null)
                theRadiob.style.display = 'none';
            window.print();
            theButton.style.display = 'inline';
            if (theRadiob != null)
                theRadiob.style.display = 'inline';
        }
</script>
</html>