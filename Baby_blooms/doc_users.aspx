<%@ Page Title="" Language="C#" MasterPageFile="~/doc_master.master" AutoEventWireup="true" CodeFile="doc_users.aspx.cs" Inherits="doc_users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="mainassests/css/card.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
       <section>
            <div class="pad" style="margin-top:60px"> </div>
              <div class="section-title">
          <h2>User_details</h2>
                   <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl="add_user.aspx">Add User</asp:HyperLink>
        </div>
                  </div>
    <div class="courses-container">

        <asp:Repeater id="Repeater1" runat="server">
            <ItemTemplate>
        <div class="course">
            <div class="course-preview">
                <h2>   </h2>
        
                
            </div>
            <div class="course-info">
    
                 
          
                <h6>Your User details</h6>
                <h2>User Name: <%# DataBinder.Eval(Container.DataItem, "user_name" )%></h2>
                <h3>City: <%# DataBinder.Eval(Container.DataItem, "city_name" )%></h3>
                <h3>District: <%# DataBinder.Eval(Container.DataItem, "dist" )%></h3>
                <h3>Email: <%# DataBinder.Eval(Container.DataItem, "email_id" )%></h3>
         
               
            </div>
        </div>
                </ItemTemplate>
        </asp:Repeater>
    </div>
    </section>
</asp:Content>

