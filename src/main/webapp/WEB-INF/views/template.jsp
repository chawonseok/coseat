<html>
<meta charset="utf-8">
<head>
<style type="text/css">
  :root{
    --header-mid: 20px;
  }

#main-title {
  position:absolute;
  top:var(--header-mid);
  font-size:30px;
  font-weight: bold;
  text-transform:uppercase;

display:inline;
color:#48B
}
#nav-bar{
  position:absolute;
  top: var(--header-mid);
  margin-left:25%;
}
#login-area{
  position:absolute;
  top:var(--header-mid);
  right:0%;
  
height: 30px;
}
  
  .login-button{
    margin-right:15px;
    display: inline;
  }
.nav {
display:inline;
}

#header {
position:relative;
width:95%;
height: 50px;
padding: 10px;
}
  #copyright{
    position:fixed;
    bottom:10px;
    left:37%
  }
</style>
<title>Coseat - Conquer your seat</title>
</head>
<body>

<div id="nav">
  	<div id="header"><jsp:include page="Logo.jsp"/></div> 
	<div id="nav-var"><jsp:include page="Nav-bar.jsp"/></div>
	<div id="login-area"><jsp:include page="Login-bar.jsp"/></div> 
</div>

<div><jsp:include page="${mainUrl}"/></div>


</body>
<footer>
<div><jsp:include page="/WEB-INF/views/foot.jsp"/></div>

</footer>
</html>