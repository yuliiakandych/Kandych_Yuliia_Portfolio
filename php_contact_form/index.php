<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>contact form</title>
</head>
<body>
    <form action="data/contact.php" method="post">
<h1>Contact Us</h1>
<label for="name-field">Name</label>
<input id="name-field" name="name" type="text" placeholder="Name">
<br>
<br>

<label for="email-field">Email</label>
<input id="email-field" name="email" type="text" placeholder="Email">
<br>
<br>
<label for="subject-field">Subject</label>
<input id="subject-field" name="subject" type="text" placeholder="Subject">
<br>
<br>
<label for="message-field">Message</label>
<textarea id="message-field" name="message"> </textarea>
<br>
<br>


<button type="submit">Submit</button>


    </form>
</body>
</html>