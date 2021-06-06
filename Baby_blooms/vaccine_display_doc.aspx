<%@ Page Title="" Language="C#" MasterPageFile="~/doc_master.master" AutoEventWireup="true" CodeFile="vaccine_display_doc.aspx.cs" Inherits="vaccine_display_doc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="mainassests/css/vac.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>

             <div class="section-title pad">
          <h2>Your Child Vaccine records</h2>
          
        </div>
        
         
         
        
    <div class="container1">
    
        <div class="table">
            <div class="table-header">
                <div class="header__item1"><a id="name" href="#">Vaccine_ID</a></div>
                <div class="header__item1"><a id="wins"  href="#">Child_id</a></div>
                <div class="header__item1"><a id="draws"  href="#">Given_date</a></div>
                  <div class="header__item1"><a id="draws1"  href="#">Due_date</a></div>
                
            </div>
            <asp:Repeater id="Repeater1" runat="server">
                <ItemTemplate>
            <div class="table-content">
                <div class="table-row">
                     <div class="table-data"><%# DataBinder.Eval(Container.DataItem, "vaccinerecord_id" )%></div>
                    <div class="table-data"><%# DataBinder.Eval(Container.DataItem, "vaccine_id" )%></div>
                    <div class="table-data"><%# DataBinder.Eval(Container.DataItem, "child_id" )%></div>
                    <div class="table-data"><%# DataBinder.Eval(Container.DataItem, "given_date" )%></div>
                    <div class="table-data"><%# DataBinder.Eval(Container.DataItem, "due_date" )%></div>
                   
                </div>
               
            
            </div>
                     </ItemTemplate>
                </asp:Repeater>
        </div>
        
        </div>
             
                </div>
       <asp:HyperLink ID="HyperLink2" runat="server" style="margin-left:44%"       CssClass="btn btn-success" NavigateUrl="vaacine_record.aspx">Add Vaccine records</asp:HyperLink>
        <br />
        <br />
         
    <asp:HyperLink ID="HyperLink1" runat="server" style="margin-left:44%"       CssClass="btn btn-success" NavigateUrl="delete_vac_record.aspx">Delete Vaccine records</asp:HyperLink>
    </section>
       
</asp:Content>

