<%@ Page Title="" Language="C#" MasterPageFile="~/doc_master.master" AutoEventWireup="true" CodeFile="doc_vac.aspx.cs" Inherits="doc_vac" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <link href="mainassests/css/vac.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>

             <div class="section-title pad">
          <h2>Vaccines</h2>
          
        </div>

        
         
         
        
    <div class="container1">
    
        <div class="table">
            <div class="table-header">
                <div class="header__item1"><a id="name" href="#">Vaccine_ID</a></div>
                <div class="header__item1"><a id="wins"  href="#">Age</a></div>
                <div class="header__item1"><a id="draws"  href="#">Vaccine</a></div>
                
            </div>
            <asp:Repeater id="Repeater1" runat="server">
                <ItemTemplate>
            <div class="table-content">
                <div class="table-row">
                    <div class="table-data"><%# DataBinder.Eval(Container.DataItem, "vaccine_id" )%></div>
                    <div class="table-data"><%# DataBinder.Eval(Container.DataItem, "age" )%></div>
                    <div class="table-data"><%# DataBinder.Eval(Container.DataItem, "vaccine" )%></div>
                   
                </div>
               
            
            </div>
                     </ItemTemplate>
                </asp:Repeater>
        </div>
        
                </div>
        </div>
       
         </section>

</asp:Content>

