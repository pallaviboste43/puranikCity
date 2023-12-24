<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="WebApplication5.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <div class="row g-3">
            <div class="col-md-6">
                <label for="title" class="form-label">Title</label>
                <!--<input type="text" class="form-control" id="title" name="title">--->
                <asp:TextBox ID="title" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label for="inputPassword4" class="form-label">Short desc</label>
                <!-- <input type="text" class="form-control" id="short_desc" name="short_desc">-->
                <asp:TextBox ID="short_desc" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-12">
                <label for="inputAddress" class="form-label">Long desc</label>
                <!-- <text area="text" class="form-control" id="long_desc" name="long_desc" placeholder="1234 Main St">-->
                <asp:TextBox ID="long_desc" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <label for="inputCity" class="form-label">image</label>
                <!-- <input type="text" class="form-control" id="image" name="image">-->
                <asp:TextBox ID="image" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-4">
               
                <label for="inputState" class="form-label">category</label>
                <select id="inputState" name="cate" class="form-select">
                    <option selected>Choose...</option>
                    <option>real estate</option>
                    <option>News</option>
                    <option>News</option>

                </select>
                   
            </div>

            <div class="col-12">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                        Check me out
                    </label>
                </div>
            </div>
            <div class="col-12">

                <asp:Button runat="server" Text="Button" OnClick="Unnamed1_Click1" />
            </div>

            <div>
                <asp:Repeater ID="RepeatInformation" runat="server">
                    <headertemplate>
                        <div class="container">
                            <div class="row">
                    </headertemplate>
                    <itemtemplate>
                        <div class="col-lg-4">
                            <div class="card">
                                <img src="<%#DataBinder.Eval(Container,"DataItem.image")%>" class="card-img-top" alt="">
                                <div class="card-body">
                                    <h6><%#DataBinder.Eval(Container,"DataItem.cate")%> </h6>
                                    <h6><a href ="/edit?id=<%#DataBinder.Eval(Container,"DataItem.id")%>">Edit</a>
                                    <input type="button" runat="server" data-id='<%#DataBinder.Eval(Container,"DataItem.id")%>' name="your_id" CssClass="btn btn-danger" value="Delete" onserverClick="deleteBtn" />
                                    </h6>

                                       <h2> <a href="/blog_desc?id=<%#DataBinder.Eval(Container,"DataItem.id")%>">
                                           <%#DataBinder.Eval(Container,"DataItem.title")%>
                                            </a></h2>
                                    <p class="card-text"><%#DataBinder.Eval(Container,"DataItem.short_desc")%> </p>
                                    <p class="card-text"><%#DataBinder.Eval(Container,"DataItem.long_desc")%>  </p>
                                </div>
                            </div>
                        </div>
                    </itemtemplate>

                    <footertemplate>
            </div>
        </div>
        </footertemplate>
                </asp:Repeater>
    </div>


    </div>

    </div>
</asp:Content>
