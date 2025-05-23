<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
  font-family: "Comic Sans MS", cursive;
  margin: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  background: #fafafa; /* Warna latar belakang abu-abu muda */
  color: #333;
}

.container {
  width: 100%;
  max-width: 400px;
}

.card {
  width: 100%;
  background-color: #f8f8f8; /* Warna card */
  padding: 20px;
  border-radius: 12px; /* Border radius card */
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

h2 {
  text-align: center;
  color: #333;
}

form {
  display: flex;
  flex-direction: column;
}

input {
  padding: 10px;
  margin-bottom: 12px;
  border: 2px solid #ddd; /* Border color input */
  border-radius: 8px; /* Border radius input */
  transition: border-color 0.3s ease-in-out;
  outline: none;
  color: #333;
  background-color: #f4f4f4; /* Warna input */
}

input:focus {
  border-color: #ff9900; /* Warna input saat focus */
}

button {
  background-color: #ff9900; /* Warna button */
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 8px; /* Border radius button */
  cursor: pointer;
  transition: background-color 0.3s ease-in-out;
}

button:hover {
  background-color: #ff6600; /* Warna button saat hover */
}

</style>


</head>
<body>

<div class="container">
  <div class="card">
    <h2>Login</h2>
    <form action="D_users_signup" method="post">
      <input type="email" id="username" name="email" placeholder="E-mail" required>
      <input type="password" id="password" name="password" placeholder="Password" required>
      <button type="submit">Login</button>
    </form>
  </div>
</div>

</body>
</html>