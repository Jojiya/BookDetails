<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="BookDetails.Insert" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
        <link href="Scripts/bootstrap.min.css" rel="stylesheet" type="text/css" />
   
        
        <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
</head>
    

<body>
    <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
          <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Add Record</h3>
              

              <div class="row">
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="Bname" class="form-control form-control-lg"  runat="server"/>
                    <label class="form-label" for="Bname">Book Name</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4">

                  <div class="form-outline">
                    <input type="text" id="AutName" class="form-control form-control-lg" runat="server"/>
                    <label class="form-label" for="AutName">Author</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline ">
                    <input type="text" class="form-control form-control-lg" id="Price" runat="server"/>
                    <label for="Price" class="form-label">Price</label>
                  </div>

                </div>
                
                   <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline ">
                    <input type="text" class="form-control form-control-lg" id="Shelf" runat="server"/>
                    <label for="Shelf" class="form-label">Shelf</label>
                  </div>

                </div>

                
              </div>

              <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="text" id="Rack" class="form-control form-control-lg" runat="server" />
                    <label class="form-label" for="Rack">Rack</label>
                  </div>

                </div>
                <div class="col-md-6 mb-4 pb-2">

                  <div class="form-outline">
                    <input type="text" id="Desc" class="form-control form-control-lg" runat="server"/>
                    <label class="form-label" for="Desc">Description</label>
                  </div>

                </div>
              </div>

              <div class="row">
                <div class="col-12">
                   <label class="form-label select-label">Is Available</label>
                  <select class="auto-style1" runat="server" id="Avail" style="font-size:xx-small">
                    <option value="Yes" style="font-size:xx-small">Yes</option>
                    <option value="No" style="font-size:xx-small">No</option>
                    
                  </select>
                 

                </div>
              </div>

              <div class="mt-4 pt-2">
                  <asp:Button runat="server"  OnClick="Book_Save"  Text="Save"  Font-Size="Small" Width="148px"/>
               
              </div>

              
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
</body>

</html>
    
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 55px;
            
        }
    </style>
</asp:Content>
