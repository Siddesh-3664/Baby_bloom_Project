<%@ Page Title="" Language="C#" MasterPageFile="~/user_master.master" AutoEventWireup="true" CodeFile="Child_details.aspx.cs" Inherits="Child_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="mainassests/css/card.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


       <section>
            <div class="pad" style="margin-top:60px"> </div>
              <div class="section-title">
          <h2>Child_details</h2>
                  </div>
    <div class="courses-container">

        <asp:Repeater id="Repeater1" runat="server">
            <ItemTemplate>
        <div class="course">
            <div class="course-preview">
                <h2>Chlid id: <%# DataBinder.Eval(Container.DataItem, "child_id" )%></h2>
                <h3>Parent id:  <%# DataBinder.Eval(Container.DataItem, "parent_id" )%></h3>
                <h3>Doctor id:  <%# DataBinder.Eval(Container.DataItem, "doc_id" )%></h3>
                
            </div>
            <div class="course-info">
    
                 
          
                <h6>Child details</h6>
                <h2>Child Name: <%# DataBinder.Eval(Container.DataItem, "child_name" )%></h2>
                <h3>Birth Place: <%# DataBinder.Eval(Container.DataItem, "birth_place" )%></h3>
                <h3>Birth Weight: <%# DataBinder.Eval(Container.DataItem, "birth_weight" )%></h3>
                <h3>Birth Date: <%# DataBinder.Eval(Container.DataItem, "dob" )%></h3>
                <h3>Gender: <%# DataBinder.Eval(Container.DataItem, "sex" )%></h3>
               
            </div>
        </div>
                <br />
                <br />
                </ItemTemplate>
        </asp:Repeater>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" ForeColor="White" NavigateUrl="deletechild.aspx" Width="129px">Delete Child</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-danger" ForeColor="White" NavigateUrl="AddChild.aspx" Width="129px">Add Child</asp:HyperLink>
    </div>

           
    </section>
</asp:Content>

