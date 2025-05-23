<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>

<html>

<head>

<title>
payment done
</title>

<style>

body {
  background: #999;
}

.container {
  max-width: 380px;
  margin: 30px auto;
  overflow: hidden;
}

.printer-top {
  z-index: 1;
  border: 6px solid #666666;
  height: 6px;
  border-bottom: 0;
  border-radius: 6px 6px 0 0;
  background: #333333;
}

.printer-bottom {
  z-index: 0;
  border: 6px solid #666666;
  height: 6px;
  border-top: 0;
  border-radius: 0 0 6px 6px;
  background: #333333;
}

.paper-container {
  position: relative;
  overflow: hidden;
  height: 467px;
}

.paper {
  background: #ffffff;
  height: 447px;
  position: absolute;
  z-index: 2;
  margin: 0 12px;
  margin-top: -12px;
  animation: print 1800ms cubic-bezier(0.68, -0.55, 0.265, 0.9) infinite;
  -moz-animation: print 1800ms cubic-bezier(0.68, -0.55, 0.265, 0.9) infinite;
}

.main-contents {
  margin: 0 12px;
  padding: 24px;
}

// Paper Jagged Edge
.jagged-edge {
  position: relative;
  height: 20px;
  width: 100%;
  margin-top: -1px;
}

.jagged-edge:after {
  content: "";
  display: block;
  position: absolute;
  //bottom: 20px;
  left: 0;
  right: 0;
  height: 20px;
  background: linear-gradient( 45deg, transparent 33.333%, #ffffff 33.333%, #ffffff 66.667%, transparent 66.667%), linear-gradient( -45deg, transparent 33.333%, #ffffff 33.333%, #ffffff 66.667%, transparent 66.667%);
  background-size: 16px 40px;
  background-position: 0 -20px;
}

.success-icon {
  text-align: center;
  font-size: 48px;
  height: 72px;
  background: #359d00;
  border-radius: 50%;
  width: 72px;
  height: 72px;
  margin: 16px auto;
  color: #fff;
}

.success-title {
  font-size: 22px;
  text-align: center;
  color: #666;
  font-weight: bold;
  margin-bottom: 16px;
}

.success-description {
  font-size: 15px;
  line-height: 21px;
  color: #999;
  text-align: center;
  margin-bottom: 24px;
}

.order-details {
  text-align: center;
  color: #333;
  font-weight: bold;
  .order-number-label {
    font-size: 18px;
    margin-bottom: 8px;
  }
  .order-number {
    border-top: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    line-height: 48px;
    font-size: 48px;
    padding: 8px 0;
    margin-bottom: 24px;
  }
}

.order-footer {
  text-align: center;
  line-height: 18px;
  font-size: 18px;
  margin-bottom: 8px;
  font-weight: bold;
  color: #999;
}
@keyframes print {
  0% {
    transform: translateY(-90%);
  }
  100% {
    transform: translateY(0%);
  }
}
@-webkit-keyframes print {
  0% {
    -webkit-transform: translateY(-90%);
  }
  100% {
    -webkit-transform: translateY(0%);
  }
}

@-moz-keyframes print {
  0% {
    -moz-transform: translateY(-90%);
  }
  100% {
    -moz-transform: translateY(0%);
  }
}

@-ms-keyframes print {
  0% {
    -ms-transform: translateY(-90%);
  }
  100% {
    -ms-transform: translateY(0%);
  }
}

</style>

</head>

<body>





<div class="container">
  <div class="printer-top"></div>
    
  <div class="paper-container">
    <div class="printer-bottom"></div>

    <div class="paper">
      <div class="main-contents">
        <div class="success-icon">&#10004;</div>
        <div class="success-title">
          Payment Complete
        </div>
        <div class="success-description">
          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.
        </div>
        <div class="order-details">
          <div class="order-number-label">Order Number</div>
          <div class="order-number">ae12fsa43%a#g</div>
        </div>
        <div class="order-footer">Thank you!</div>
      </div>
      <div class="jagged-edge"></div>
    </div>
  </div>
</div> 
</body>
</html>