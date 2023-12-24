<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="blog_desc.aspx.cs" Inherits="WebApplication5.blog_desc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Repeater ID="RepeatInformation" runat="server">
                    
                    <itemtemplate>
                        <div class="col-lg-4">
                            <div class="card">
                                <img src="<%#DataBinder.Eval(Container,"DataItem.image")%>" class="card-img-top" alt="">
                                <div class="card-body">
                                     <h6><%#DataBinder.Eval(Container,"DataItem.cate")%> </h6>
                                      <h6><%#DataBinder.Eval(Container,"DataItem.created_at")%> </h6>
                                    <h5>
                                        <a href="/blog_desc?id=<%#DataBinder.Eval(Container,"DataItem.id")%>">
                                           <%#DataBinder.Eval(Container,"DataItem.title")%>
                                            </a>
                                            </h5>
                                   
                                    <p class="card-text"><%#DataBinder.Eval(Container,"DataItem.short_desc")%> </p>
                                    <p class="card-text"><%#DataBinder.Eval(Container,"DataItem.long_desc")%>  </p>
                                </div>
                            </div>
                        </div>
                    </itemtemplate>
        </asp:Repeater>
</asp:Content>
