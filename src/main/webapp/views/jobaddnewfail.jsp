<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Fail</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

.navbar {
  overflow: hidden;
  background-color: navy;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.drop-down {
  float: left;
  overflow: hidden;
}
.dropdown {
  float: left;
  overflow: hidden;
}
.drop-down .drop-btn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .drop-down:hover .drop-btn {

  background-color: #ddd;
  color:black;
}
.navbar a:hover, .dropdown:hover .dropbtn {

  background-color: #ddd;
  color:black;
}
.dropdown-content {
right: 0;
    left: auto;
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdowncontent {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}
.dropdown-content a {

  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.dropdowncontent a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.dropdown-content a:hover {
  background-color: #ddd;
}

.drop-down:hover .dropdown-content {
  display: block;
}
.dropdowncontent a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdowncontent {
  display: block;
}
.topnav-right {
  float: right;
}

input[type=text], input[type=password],input[type=number],select, textarea {
  width: 50%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: navy;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  color:yellow;
}

.container {
  position: absolute;
  right: 120px;  
  width: 45%;
  height: 750px;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 50px;
}
.bg-img {
/* The image used */
  background: url(images/job.jpg) no-repeat;
  background-size: 100%;
  min-height: 900px;
  /* Center and scale the image nicely */
  background-position: left top;
  background-repeat: no-repeat;
  background-size: 600px 500px;
  position: relative;
  margin-left: auto;
}

</style>
</head>
<body>

<div class="navbar">
  <a href="/recruiterhome"><i class="fa fa-home"></i>&nbsp;Home</a>
			  <div class="dropdown">
			    <button class="dropbtn">Job Post&nbsp;
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdowncontent">
			      <a href="/jobaddnew">New Job Post</a>
			      <a href="/recruiterviewjobs/${name}">View All Posts</a>
			    </div>
			  </div> 
			  
			  <a href="/recruiterjobstatus">Job Status</a>
			  
	<a href="/jobseekersviewall">Job Seekers</a> 
	<div class="topnav-right">
			<div class="drop-down">
			    <button class="drop-btn">${name}&nbsp;
			      <i class="fa fa-caret-down"></i>
			    </button>
			    <div class="dropdown-content">
			      <a href="/recruiterprofile">My Profile</a>
			      <a href="/recruiterlogout">Logout</a>
			    </div>
			  </div> 
		</div>
</div>

<h1 style="color: red;" align="center"><i>Oops!! Try again</i></h1>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="${pageContext.request.contextPath}/images/applyfail.gif" align="center">
</body>
</html>
