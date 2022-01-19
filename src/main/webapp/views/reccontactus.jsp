<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Contact Us</title>
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
.navbar a:hover, .dropdown:hover .dropbtn 
{

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

input[type=text], select, textarea {
  width: 100%;
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
  margin:auto;
  width: 50%;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
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
			      <a href="/reccontactus">Contact Admin</a>
			      <a href="/recruiterlogout">Logout</a>
			    </div>
			  </div> 
		</div>
</div>
<br>


<!-- <img src="${pageContext.request.contextPath}/images/contact1.gif" object-fit="cover"></img>
<h1 style="text-align:center;font-size:1.5em;font-weight: normal">Contact us</h1> -->
    
<div class="container" align:center;>
  <form method="POST" action="/submitreccontactus" modelAttribute="contact">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" value="${name}">

    <label for="email">Email</label>
    <input type="text" id="email" name="email" value="${email }">

    <label for="state">State</label>
   <select name="state" id="state" class="form-control">
	<option value="Andhra Pradesh">Andhra Pradesh</option>
	<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
	<option value="Arunachal Pradesh">Arunachal Pradesh</option>
	<option value="Assam">Assam</option>
	<option value="Bihar">Bihar</option>
	<option value="Chandigarh">Chandigarh</option>
	<option value="Chhattisgarh">Chhattisgarh</option>
	<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
	<option value="Daman and Diu">Daman and Diu</option>
	<option value="Delhi">Delhi</option>
	<option value="Lakshadweep">Lakshadweep</option>
	<option value="Puducherry">Puducherry</option>
	<option value="Goa">Goa</option>
	<option value="Gujarat">Gujarat</option>
	<option value="Haryana">Haryana</option>
	<option value="Himachal Pradesh">Himachal Pradesh</option>
	<option value="Jammu and Kashmir">Jammu and Kashmir</option>
	<option value="Jharkhand">Jharkhand</option>
	<option value="Karnataka">Karnataka</option>
	<option value="Kerala">Kerala</option>
	<option value="Madhya Pradesh">Madhya Pradesh</option>
	<option value="Maharashtra">Maharashtra</option>
	<option value="Manipur">Manipur</option>
	<option value="Meghalaya">Meghalaya</option>
	<option value="Mizoram">Mizoram</option>
	<option value="Nagaland">Nagaland</option>
	<option value="Odisha">Odisha</option>
	<option value="Punjab">Punjab</option>
	<option value="Rajasthan">Rajasthan</option>
	<option value="Sikkim">Sikkim</option>
	<option value="Tamil Nadu">Tamil Nadu</option>
	<option value="Telangana">Telangana</option>
	<option value="Tripura">Tripura</option>
	<option value="Uttar Pradesh">Uttar Pradesh</option>
	<option value="Uttarakhand">Uttarakhand</option>
	<option value="West Bengal">West Bengal</option>
	</select>

    <label for="message">Message</label>
    <textarea id="message" name="message" placeholder="Enter your message here" style="height:200px"></textarea>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="Submit" align="center">
  </form>
</div>
</body>
</html>
