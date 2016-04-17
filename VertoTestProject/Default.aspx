<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="VertoTestProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      
<div class="main">
 <img class="logo1" src="./images/logo1.png">
  <div class="row0">
   <form class="form1">
    <span class="sp1">Clinet Login</span>     
     <input class="a" type="text" name="firstname" placeholder="Email address" size="15">
     <input class="b" type="text" name="lastname" placeholder="Password" size="15">
    <img src="./images/log_form.png">
   </form>
  </div>

  <div class="row1">
    <div class="title_con1">
       <asp:FormView runat="server" ID="FormView1"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.TitleName %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
    </div>
      <div class="content_con1">
       <asp:FormView runat="server" ID="FormView2"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.ContentCon %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
      </div>
   <div class="box-click">

     <img class="cl_info" src="./images/click_info.png">
     <span class="sp2">Click for more information</span>
   </div>
          <div class="title_con2">
       <asp:FormView runat="server" ID="FormView3"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample1_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.TitleName %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
    </div>
      <div class="content_con2">
       <asp:FormView runat="server" ID="FormView4"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample1_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.ContentCon %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
      </div>
   <div class="box-clickg">
     <img class="cl_infog" src="./images/cl_infog.png">
     <span class="sp2g">Click for more information</span>
   </div>
  </div>

  <div class="row2"></div>
  
  <div class="row3">
   <div class="box box-1">

       <div class="title_con3">
       <asp:FormView runat="server" ID="FormView5"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample2_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.TitleName %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
    </div>
      <div class="content_con3">
       <asp:FormView runat="server" ID="FormView6"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample2_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.ContentCon %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
      </div>

   </div>
    <div class="box box-2">

       <div class="title_con4">
       <asp:FormView runat="server" ID="FormView7"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample3_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.TitleName %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
    </div>
      <div class="content_con4">
       <asp:FormView runat="server" ID="FormView8"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample3_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.ContentCon %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
      </div>

     <div class="box-click1">
       <img class="cl_info1" src="./images/click_info.png">
       <span class="spn1">Click for more information</span>
     </div>
    </div>
    <div class="box box-3">

     <div class="title_con5">
       <asp:FormView runat="server" ID="FormView9"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample4_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.TitleName %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
    </div>
      <div class="content_con5">
       <asp:FormView runat="server" ID="FormView10"
        ItemType="VertoTestProject.Models.Content" DataKeyNames="ContentID" 
        SelectMethod="contentsSample4_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.ContentCon %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
      </div>

     <div class="box-click2">
       <img class="cl_info2" src="./images/click_info.png">
       <span class="spn2">Click for more information</span>
     </div>
    </div>
    <div class="box box-4">

     <div class="title_new">
       <asp:FormView runat="server" ID="FormView11"
        ItemType="VertoTestProject.Models.New" DataKeyNames="NewID" 
        SelectMethod="newsSample1_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.NewName %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
    </div>
      <div class="new_con">
       <asp:FormView runat="server" ID="FormView12"
        ItemType="VertoTestProject.Models.New" DataKeyNames="NewID" 
        SelectMethod="newsSample1_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.NewCon %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
      </div>
             <div class="new_con1">
       <asp:FormView runat="server" ID="FormView13"
        ItemType="VertoTestProject.Models.New" DataKeyNames="NewID" 
        SelectMethod="newsSample2_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.NewCon %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
    </div>
             <div class="new_con2">
       <asp:FormView runat="server" ID="FormView14"
        ItemType="VertoTestProject.Models.New" DataKeyNames="NewID" 
        SelectMethod="newsSample3_GetData" AutoGenerateColumns="false">
        <ItemTemplate>
         <asp:Label Text="<%# Item.NewCon %>" runat="server" />
         </ItemTemplate>
        </asp:FormView>
    </div>

    </div>
  </div>
  
  <div class="row4">
      <p class="footer">&copy; Copyright Jaroslaw <%: DateTime.Now.Year %></p>
  </div>
      <hr />
</div>
</asp:Content>