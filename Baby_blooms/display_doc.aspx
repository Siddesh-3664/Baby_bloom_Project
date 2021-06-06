<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="display_doc.aspx.cs" Inherits="display_doc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="mainassests/css/doccard.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder22" Runat="Server">
         <section>

        <div class="section-title pad">
          <h2>Doctors</h2>
          
        </div>
            <div class="container ">
         
        <asp:Repeater id="Repeater1" runat="server">
            <ItemTemplate>
      <div class="content font">
        <div class="card">
            <div class="firstinfo"><img src='<%#DataBinder.Eval(Container.DataItem,"imagepath")%>' />
                <div class="profileinfo">
                    <h1>Doctor Name : <%# DataBinder.Eval(Container.DataItem, "doc_name" )%>
                     </h1>
                    <h4>Doctor Id : <%# DataBinder.Eval(Container.DataItem, "doc_id" )%>
                    </h4>
                   
                    <h4>Hospital : <%# DataBinder.Eval(Container.DataItem, "hospital" )%>
                    </h4>
                    <h4>City : <%# DataBinder.Eval(Container.DataItem, "city" )%>
                    </h4>
                    <h4>Qualification : <%# DataBinder.Eval(Container.DataItem, "qualification" )%>
                    </h4>
                    
                   
                </div>
            </div>
        </div>
          <br />
          <br />

        </ItemTemplate>
        </asp:Repeater>
</div>
        </section>
</asp:Content>
    

