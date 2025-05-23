
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:ital,wght@0,200;0,700;1,200&display=swap');
    body {
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        font-family: 'Plus Jakarta Sans', sans-serif;
        background-image: url(/public/photo/library-2.jpg);
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100%;
    }

    .card {
        width: 450px;
        background-color: #ffffff;
        backdrop-filter: blur(100px);
        padding: 20px;
        border-radius: 8px;
        border: 2px solid;
        overflow: hidden;
        align-items: center;
        justify-content: center;
    }

    h2 {
        text-align: center;
        font-weight: 600;
        font-size: 30px;
        margin-top: 0;
    }

    form {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .gambar-depan {
        border-radius: 6px;
    }

    input {
        padding: 20px;
        border: none;
        border-radius: 5px;
        background-color: transparent;
        color: #000000;
        transition: all 250ms;
    }

    input:focus {
        outline: none;
        border-color: #3498db;
        background-color: #eeeeee;
    }

    .card form a {
        padding: 15px 20px;
        background-color: rgba(17, 17, 17, 0.8);
        cursor: pointer;
        color: #ffffff;
        text-align: center;
        text-decoration: none;
        font-weight: 600;
    }

    .tombol-register {
        padding: 15px 20px;
        background-color: rgba(17, 17, 17, 0.8);
        cursor: pointer;
        color: #ffffff;
        text-align: center;
        text-decoration: none;
        font-weight: 600;
        border: none;
        outline: none;
    }

    .tombol-register:hover,
    a:hover {
        background-color: rgba(54, 54, 54, 0.8);
        color: #ffffff;
    }

    .switch a {
        cursor: pointer;
        color: rgb(0, 47, 255);
        text-align: center;
        text-decoration: none;
        font-weight: 600;
    }

    .switch {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 10px;
        margin-top: 10px;
    }

    @media (max-width: 575px) {
        .card {
            width: 100%;
            max-width: 300px;
            max-height: 880px;
        }

        input:focus {
            outline: none;
            border-color: #3498db;
        }
    }
</style>
</head>
<body>

<div class="container">
    <div class="card">
        <form method="post" action="Glogin">
            <h2>Login</h2>
            <input type="email" name="email" placeholder="Email" autocomplete="email" required>
           
            <input type="password" name="password"  placeholder="Password" autocomplete="new-password" required>
             
            <button class="tombol-register" type="submit">Register</button>
        </form>
       
    </div>
</div>

</body>
</html>
