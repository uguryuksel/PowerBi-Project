<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PBIWebApp._Default" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Sign in -->
    <div><h1 style="border-bottom:solid; border-bottom-color: silver">Veri24 Crm Rapor Görüntüleme</h1>
        <asp:Panel ID="SignInPanel" runat="server" Visible="true">     
            <p><b class="step">Step 1</b>: Power bi hesabınızla giriş yaparak raporlarınızı bu uygulamaya bağlayabilirsiniz</p>
            <p>
                <asp:Button ID="signInButton" runat="server" OnClick="signInButton_Click" Text="Power BI 'a giriş yap" />
            </p>   

            <asp:Panel ID="signInStatus" runat="server" Visible="false">
                <table>
                    <tr>
                        <td><b>Signed in as:</b></td>
                    </tr>
                    <tr>
                        <td><asp:Label ID="userLabel" runat="server"></asp:Label></td>
                    </tr>
                  
                    
                    <tr>
                        <td><b>Access Token:</b></td>
                    </tr>
                    <tr>
                        <td><asp:TextBox ID="accessTokenTextbox" runat="server" Width="586px"></asp:TextBox></td>
                    </tr>
                    
                
                </table>
            </asp:Panel>
        </asp:Panel>   
    </div>

    <hr class="stepHr" />

    <!-- Get Dashboards -->
    <div> 
        <asp:Panel ID="PanelDashboards" runat="server" Visible="true">
            <div>
                <div><b class="step">Step 2</b>: Raporları çağır</div>
                <asp:Button ID="Button1" runat="server" OnClick="getDashboardsButton_Click" Text="Raporları al" />
            </div>
            
            <!--
                <asp:GridView ID="GridView1" runat="server" CssClass="grid" Visible="false" Width="1018px">
                </asp:GridView>
            -->
            
            <!--Drop Down list example -->
            <div class="grid">
                <asp:DropDownList ID="DropDownList" runat="server" Width="200px" >
                </asp:DropDownList>
            </div>
        </asp:Panel>
    </div>

    <hr class="stepHr" />

    <!-- Embed Dashboard-->
    <div> 
        <asp:Panel ID="PanelEmbed" runat="server" Visible="true">
            <div>
                <div><b class="step">Step 3</b>: Embed a dashboard</div>

                <div>Enter an embed url for a dashboard from Step 2 (starts with https://):</div>
                <input type="text" id="tb_EmbedURL" style="width: 1024px;"/>
                
                <br />
                <input type="button" id="bEmbedDashboardAction" value="Embed Dashboard" />
            </div>
            <div id="dashboardContainer"></div>
        </asp:Panel>
    </div>
<!--
   <div class="logViewWrap">
        Log View
        <br />
        <div ID="logView" style="width: 880px;"></div>
    </div> 
    -->
</asp:Content>