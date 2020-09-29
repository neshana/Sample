<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>    
<style>
table, th, td {
  border: 0.5px solid black;
}

td {
  height: 33px;
}
body{
background-image: url("https://i.pinimg.com/originals/79/2d/80/792d80c7c31a1f0b4a5bfefcb26260c3.jpg");
background-repeat:no-repeat;
background-size:1390px;
background-width:850px;
}


tr:nth-child(even) { 
            background-color: #F4A460
        } 
</style>
<title>
    Passport Registration 
</title>
    <script language="javascript">
    
    function validateForm()
    {
    	
    var a=document.forms["RForm"]["Lname"].value;
    if (a==null || a=="")
      {
      alert("Please Enter Name ");
      return false;
      }
    
    
      var b=document.forms["RForm"]["Pass"].value;
    if (b==null || b=="")
      {
      alert("Please Enter password");
      return false;
      }
    
    
       var c=document.forms["RForm"]["RPass"].value;
    if (c==null || c=="")
      {
      alert("Please Enter Confirm password");
      return false;
      }
      if(b!=c){
        alert("PassWord Doesn't match..");
        return false;
      }

      
      
      var d=document.forms["RForm"]["Email"].value;
    if (d==null || d=="")
      {
      alert("Please Enter Email");
      return false;
      }else
      {
        var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        if(d.match(mailformat))
        {
        document.RForm.Email.focus();
        //return true;
        }
        else
        {
        alert("You have entered an invalid email address!");
        document.RForm.Email.focus();
        return false;
        }
      }


      var e=document.forms["RForm"]["Gender"].value;
    if (e==null || e=="")
      {
      alert("Please Enter Gender");
      return false;
      }
    
    
      var f=document.forms["RForm"]["Country"].value;
    if (f==null || f=="")
      {
      alert("Please Enter Country");
      return false;
      }
    
    
    var g=document.forms["RForm"]["DOB"].value;
    if (g==null || g=="")
      {
      alert("Please Enter Date Of Birth");
      return false;
      }
    
    
      var h=document.forms["RForm"]["Address"].value;
    if (h==null || h=="")
      {
      alert("Please Enter Address");
      return false;
      }
    
    
      var i=document.forms["RForm"]["Phone"].value;
    if (i==null || i=="")
      {
      alert("Please Enter Phone No");
      return false;

      }

       if(isNaN(i)|| i.indexOf(" ")!=-1) 
        {
               alert("Enter numeric value");
                return false;
                    }
                     if (i.length >10)
                {
                                alert("enter 10 characters"); 
                    return false;
                         }
    
    
    var j=document.forms["RForm"]["VoterId"].value;
    if (j==null || j=="")
      {
      alert("Please Enter Voter ID");
      return false;

      }

       if(isNaN(j)|| j.indexOf(" ")!=-1)
        {
                            alert("Enter numeric value");
                return false;
                    }
                     if (j.length >10)
                {
                                alert("enter 10 characters"); 
                    return false;
                         }
     
     
     
     var k=document.forms["RForm"]["Aadhaar"].value;
     if (k==null || k=="")
       {
       alert("Please Enter Aadhaar Number");
       return false;

       }

        if(isNaN(k)|| k.indexOf(" ")!=-1)
         {
                             alert("Enter numeric value");
                 return false;
                     }
                      if (k.length >12)
                 {
                                 alert("enter 12 characters"); 
                     return false;
                          }
      
    
      
      var l=document.forms["RForm"]["Pan"].value;
      if (l==null || l=="")
        {
        alert("Please Enter Pan Card Number");
        return false;
        }
          if (l.length >10)
                  {
                     alert("enter 10 characters"); 
                      return false;
                           }
          
          
          var m=document.forms["RForm"]["Father"].value;
          if (m==null || m=="")
            {
            alert("Please Enter Father Name");
            return false;
            }
          
          
          var n=document.forms["RForm"]["Mother"].value;
          if (n==null || n=="")
            {
            alert("Please Enter Mother Name");
            return false;
            }
          
          
       }//end of validateForm()
    
       
       
    
    function ValidateDOB() 
       {
        var lblError = document.getElementById("lblError");
 
        //Get the date from the TextBox.
        var dateString = document.getElementById("txtDate").value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
 
        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString)) 
        {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            lblError.innerHTML = "Eligibility 18 years ONLY."
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) 
            {
                return false;
            }
 
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) 
           {          
                if (dtCurrent.getMonth() < dtDOB.getMonth()) 
                {
                    return false;
                }
                
                if (dtCurrent.getMonth() == dtDOB.getMonth())
                {
                    if (dtCurrent.getDate() < dtDOB.getDate()) 
                    {
                        return false;
                    }
                }
            }
            lblError.innerHTML = "";
            return true;
        } 
        else {
            lblError.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
            return false;
        }
    }
       
       
       

  
</script>
    
   </head>

    <body>
    <center>
    <h2><p style="color:red;"><p style="background-color: #FFA500;">Applying For A Passport??.....Here's The Form</p></p></h2>
    </center>
<form method="post" name="RForm" onSubmit="return validateForm();" >
    <table width="50%"  bgcolor="#EEE8AA" align="center">

        <tr>        
            <td colspan=5 ><font size=4><center><b>PASSPORT REGISTRATION  FORM</b></center></font>     
        </tr>

        <tr>
            <td width="30%">Name:<br/></td>
            <td><input name="Lname" type="text" size=25 maxlength=20></td>
        </tr>
        <tr>
            <td width="30%">Password:<br/></td>
            <td><input name="Pass" type="password" size=25 maxlength=20></td>
        </tr>
        <tr>
            <td width="30%">Confirm Password :<br/></td>
            <td><input name="RPass" type="password" size=25 maxlength=20></td>
        </tr>
        <tr>
            <td width="30%">Email :<br/></td>
            <td><input name="Email" type="text" size=25 maxlength=30></td>
        </tr>
        <tr>
            <td width="30" valign="middle" >Gender:</td>
              <td><INPUT  TYPE="Radio" Name="Gender" Value="Male">Male
                  <INPUT  TYPE="Radio" Name="Gender" Value="Female">Female
                  <INPUT  TYPE="Radio" Name="Gender" Value="Female">Others
              </td>
            </tr>
            <td width="30" valign="middle">Select Native Country :</td>
              <td><select name="Country" onChange="";>
                  <option selected="selected" value="">---Select---</option>
                  <option value="AU_61">India</option>
                  <option value="AU_61">Pakistan</option>
                  <option value="AU_61">Sri Lanka</option>
                  <option value="AU_61">Nepal</option>
                  <option value="AU_61">Bangladesh</option>
                  <option value="AU_61">China</option>          
                </select>
              </td>
            </tr>
            
        <tr>
            <td width="30%">Date Of Birth:</td>
            <td><input name="DOB" type="text" id="txtDate" onblur = "ValidateDOB()" />
                 <span class="error" id="lblError"></span>
                 <br/>
                  <input type="button" id="btnValidate" value="Validate" onclick="return ValidateDOB()" />
           </td>
        </tr>    
        <tr>
            <td width="30%">Address:<br/></td>
            <td><textarea name="Address" rows=3 colos=30></textarea></td>
        </tr>
        <tr>
            <td width="30%">Phone no:<br/></td>
            <td><input name="Phone" type="text" size=25 maxlength=10></td>
        </tr>
        
        <tr>
            <td width="30%">Voter ID no:<br/></td>
            <td><input name="VoterId" type="text" size=25 maxlength=10  required></td>
        </tr>
        
        <tr>
            <td width="30%">Aadhaar Card no:<br/></td>
            <td><input name="Aadhaar" type="text" size=25 maxlength=12  required></td>
        </tr>
        <tr>
            <td width="30%">Pan Card no:<br/></td>
            <td><input name="Pan" type="text" size=25 maxlength=10  required></td>
        </tr>
        
        <tr>
            <td width="30%">Mode Of Transportaion Used Till Date:<br/></td>
            <td>
                  <input type="checkbox" id="vehicle1" name="vehicle" value="Two Wheeler">Two Wheeler<br>                  
                  <input type="checkbox" id="vehicle2" name="vehicle" value="Four Wheeler">Four Wheeler<br>   
                  <input type="checkbox" id="vehicle3" name="vehicle" value="Public Transport">Public Transport<br> 
            </td>
        </tr> 
        
        
        <tr>
            <td width="30%">Father Name<br/></td>
            <td><input name="Father" type="text" size=25 maxlength=20  required></td>
        </tr>
        <tr>
            <td width="30%">Mother Name<br/></td>
            <td><input name="Mother" type="text" size=25 maxlength=20  required></td>
        </tr>
        <tr>
            <td ><input type="Reset">
            <td ><input type="submit" value="Submit">
        </tr>

        </table>
      </form>
    </body>
    </html>