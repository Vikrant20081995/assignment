function validate()
{
  var user = document.myform.username.value
  var pass = document.myform.password.value
  var confpass = document.myform.confirm.value
  var email = document.myform.mail.value
  var number = document.myform.contact.value
  var add = document.myform.address.value
  var message = "";

  if(user == "")
  {
    message += "Enter username\n";
  }

  if(!(/^[a-z]+([0-9])|[0-9]+([a-z]+)$/.test(pass)))
  {
    message += "Please enter alphanumeric password\n";
  }

  if(pass != confpass)
  {
    message += "Password does not match\n";
  }

  if(!(/^[0-9]{10}$/.test(number)))
  {
    message += "Enter valid phone number\n";
  }

  if(!(/^([a-zA-Z0-9\.]+)@([a-zA-Z]+)\.([a-z]+)/.test(email)))
  {
    message += "Enter valid e-mail address\n";
  }

  if(add == "")
  {
    message += "Please enter your address\n";
  }

  if(!document.myform.check.checked)
  {
    message += "Agree to our terms and conditions \n";
    
  }
  if (message == "")
    return true;
  else
  {
    alert(message)
    return false;
  }

  
}