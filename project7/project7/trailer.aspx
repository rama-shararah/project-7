<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trailer.aspx.cs" Inherits="project7.trailer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style>

        
/* Modal styles */
.modal {
    display: none;
   /* position: fixed;*/
    z-index: 1;
    left: 0;
    top:-200px;
     width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0,0.4);
}

/* Modal content styles */
.modal-content {
/*    position: relative;*/
    background-color: #fefefe;
    margin: 15% auto;
    padding: 20px;
    width: 80%;
    max-width: 1200px;
    z-index:2;
}

/* Close button styles */
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
        .fullscreen {
            width: 100vw;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 9999;
        }
#model{

      width: 100vw;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  z-index: 9999;

}

.close-icon {
    position: absolute;
    top:14px;
   right:200px;
    font-size: 80px;
    font-weight: bold;
    color: #aaa;
    cursor: pointer;
    z-index:10000;
    color:white;
    font-size:100px;
    
}

.close-icon :hover,
.close-icon :focus {
      color:white;
    text-decoration: none;
    cursor: pointer;
}
.modal-open {
  display: block;
}

.editt{
   /* background-color:none;
    border:none;
    padding:0 40px 0 0;
    color:gray;
    text-align:left;*/
     border: none;
    background: none;
    cursor: pointer;
    margin: 0;
    padding: 0;
    color:gray;

}
#Button3{


   
}
.view{
     
    color:white;
    margin:20px auto;
        text-align:center;
    display:flex;
    justify-content:center;
    border-radius:5px;
    font-size:20px;
    text-transform:capitalize;
}

.view:hover{
    color:red !important;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="model">
              <div class="close-icon" onclick="closeModal()">&times;</div>
<iframe runat="server" id="iframeId"  width="100%" height="100%" src="https://www.youtube.com/embed/YHO6EDIbGlk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen ></iframe>
              </div>
    </form>

    <script>


        function closeModal() {

            window.history.back();

        }

    </script>
</body>
</html>
