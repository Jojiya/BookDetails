<%@ Page Language="C#"   MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BookDetails.Search" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
     <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
        <link href="Scripts/bootstrap.min.css" rel="stylesheet" type="text/css" />
   
        
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <style>
        .grd  
{  
    margin-top:50px;  
    margin-left:50px;
    width:500px;
    height:auto;  
     
}  
    </style>
</head>
<body>

  
  
        <div class="card shadow-2-strong " style="border-radius: 15px;float:right;margin-top:30px;margin-right:35px">
          <div class="card-body p-4 p-md-5">
            <h3 >Search</h3>
               
    
    <div class="form-outline mb-4">
  <input type="search" class="form-control" id="Sbname" runat="server"/>
  <label class="form-label" for="datatable-search-input">By Book </label>
</div>
          <div class="form-outline mb-4">
  <input type="search" class="form-control" id="Sauthor" runat="server"/>
  <label class="form-label" for="datatable-search-input">By Author</label>
</div>
  <div class="form-outline mb-4">
  <input type="number" class="form-control" id="Srack" runat="server" >
  <label class="form-label" for="datatable-search-input">By Rack</label>
  <div class="form-outline mb-4">
  <input type="number" class="form-control" id="Sshelf" runat="server"/>
  <label class="form-label" for="datatable-search-input">By Shelf</label>
</div>
</div>
                   <div class="mt-4 pt-2">
                  <asp:Button runat="server"  OnClick="btn_Search"  Text="Search" />
                
              </div>

    
          
        </div>
      </div>
    
 


    <div id="datatable" style="float:left" >

    <asp:GridView runat="server" ID="grdsearch" CssClass="grd" AllowPaging="true" CellPadding="2" EnableModelValidation="True"  
                                        ForeColor="red" GridLines="Both" ItemStyle-HorizontalAlign="center" EmptyDataText="There Is No Records In Database!" AutoGenerateColumns="false"  
                                HeaderStyle-ForeColor="blue"    AlternatingRowStyle-BackColor="Wheat" OnRowDeleting="grvBook_RowDeleting" >  
                                <HeaderStyle CssClass="DataGridFixedHeader" />  
                                <RowStyle CssClass="grid_item" />  
                                <AlternatingRowStyle CssClass="grid_alternate" />  
                                <FooterStyle CssClass="DataGridFixedHeader" />  
                                <Columns>
                                    <asp:TemplateField HeaderText="Code">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblCode" Text='<%#Eval("Code") %>'></asp:Label>  
                                        </ItemTemplate>  
                                    </asp:TemplateField>   
                                    <asp:TemplateField HeaderText="Book Name">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblBookName" Text='<%#Eval("Book_Name") %>' Width="200px"></asp:Label>  
                                        </ItemTemplate>  
                                    </asp:TemplateField>  
                                    <asp:TemplateField HeaderText="Author">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblAuthor" Text='<%#Eval("Author") %>' Width="200px"></asp:Label>  
                                        </ItemTemplate>  
                                          
                                    </asp:TemplateField>  
                                    <asp:TemplateField HeaderText="Price">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblPrice" Text='<%#Eval("Price") %>'></asp:Label>  
                                        </ItemTemplate>  
                                          
                                    </asp:TemplateField>  
                                    <asp:TemplateField HeaderText="Shelf">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblShelf" Text='<%#Eval("SheldId") %>'></asp:Label>  
                                        </ItemTemplate>  
                                          
                                    </asp:TemplateField>  
                                    <asp:TemplateField HeaderText="Rack">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblRacks" Text='<%#Eval("RackId") %>'></asp:Label>  
                                        </ItemTemplate>  
                                          
                                    </asp:TemplateField>  
  
                                      <asp:TemplateField HeaderText="Available">  
                                         <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>  
                                            <asp:Label runat="server" ID="lblavail" Text='<%#Eval("Available") %>'></asp:Label>  
                                        </ItemTemplate>  
                                          
                                    </asp:TemplateField> 
                                    
                                    <asp:TemplateField >  
                                        <HeaderStyle HorizontalAlign="Left" />  
                                        <ItemStyle HorizontalAlign="Left" />  
                                        <ItemTemplate>                                                                          
                                                <asp:LinkButton runat="server" ID="btnDelete" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are You Sure You want to Delete the Record?');" ToolTip="Click here to Delete the record" />  
                                            </span>  
                                        </ItemTemplate>                                         
                                    </asp:TemplateField>  
                                </Columns>  
  
                            </asp:GridView>  
    </div>
    










   
</body>
</html>
    </asp:Content>
