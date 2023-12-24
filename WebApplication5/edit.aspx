<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="WebApplication5.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <asp:Repeater ID="RepeatInformation" runat="server" OnItemCommand="RepeatInformation_ItemCommand">  
           
            <ItemTemplate>  
               <div class="col-lg-12">
                   <h2>Edit Page</h2>
                   <div class="col-lg-12">
                            <div class="card">
                                <label>Title</label>
                                <input type="text" name="title" value="<%#DataBinder.Eval(Container,"DataItem.title")%>">
                                 <label>Image</label>
                                <input type="text" name="image" value="<%#DataBinder.Eval(Container,"DataItem.image")%>">
                                <div class="card-body">
                                  <label>Short Desc</label>
                                <input type="text" name="short_desc" value="<%#DataBinder.Eval(Container,"DataItem.short_desc")%>">
                                     <label>Long Desc</label>
                                <input type="text" name="long_desc" value="<%#DataBinder.Eval(Container,"DataItem.long_desc")%>">
                                    
                
                                </div>
                            </div>
                        </div>
                   
            </ItemTemplate>  
         </asp:Repeater>

    <asp:Button runat="server" Text="Update" OnClick="Unnamed1_Click1" />
</asp:Content>
