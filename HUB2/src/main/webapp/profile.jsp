<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="/javascripts/fontawesome.js"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.0.0-alpha.1/axios.min.js"
      integrity="sha512-xIPqqrfvUAc/Cspuj7Bq0UtHNo/5qkdyngx6Vwt+tmbvTLDszzXM0G6c91LXmGrRx8KEPulT+AfOOez+TeVylg=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>

    <link rel="stylesheet" href=".//stylesheet//userprofile.css" />
    
    <link rel="stylesheet" href=".//stylesheet//profile.css" />

    <title>YourChoice</title>
  </head>
  <body>
    <i class="on-off fa-solid fa-toggle-off"></i>
    
    <div class="container">
   
      <div class="Landing-Screen">
        <div class="Backside-card-body">
          <div class="Backside-card">
            <div class="Backside-card-Left cursor">
              <h5 id="pagelocation">YOUR CHOICE</h5>
            </div>
            <div class="Backside-card-Mid cursor">
              <h1>PROFILE</h1>
            </div>
            <div class="Backside-card-Right">
              <div class="nextproduct"></div>
            </div>
          </div>
        </div>
        <div class="main-body">
          <div class="card-body">
            <div class="card">
              <div class="setting-cont">
                <h3>MUHAFIZ</h3>
                <div class="setting">
                  <div class="acc-setting">
                    <i class="fa-solid fa-user"></i>
                    <h2>Account setting</h2>
                  </div>
                  <div class="menu-item">
                    <div class="item" onclick="showprofile()">
                      <i class="fa-solid fa-user-gear"></i>
                      <h4>profile information</h4>
                    </div>
                    <div class="item" onclick="showaddress()">
                      <i class="fa-solid fa-location-pin"></i>
                      <h4>Manage Address</h4>
                    </div>
                  </div>
                </div>
              </div>
              <div class="persnal-info-cont">
                <h2>PERSONAL INFORMATION</h2>
                <form
                  class="persnal-info-box"
                  action="/user/update"
                  method="post"
                >
                  <input
                    type="text"
                    placeholder="NAME"
                    name="name"
                    
                  />
                  <input
                    type="text"
                    placeholder="EMAIL"
                    name="username"
                    
                  />
                  <input
                    type="number"
                    placeholder="PHONE NO."
                    name="number"
                    
                  />
                  <a href="/passwords/change"><h4>Change password?</h4> </a>
                  <button type="submit">Update</button>
                </form>
              </div>

              <div class="address-info-cont">
                <h2>MANAGE ADDRESS</h2>
                <form id="address" action="/user/update/address" method="post">
                  <div class="input-container">
                    <input
                      type="text"
                      name="address"
                      id="address"
                      placeholder="ADDRESS"
                   
                    />
                  </div>
                  <div class="input-container">
                    <input
                      type="text"
                      name="city"
                      id="city"
                      placeholder="CITY"
                     
                    />
                  </div>
                  <div class="input-container">
                    <input
                      type="text"
                      name="country"
                      id="country"
                      placeholder="COUNTRY"
                      
                    />
                  </div>
                  <div class="input-container">
                    <input
                      type="text"
                      name="pincode"
                      id="pincode"
                      placeholder="PINCODE"
                      
                    />
                  </div>
                  <div class="address-type">
                    <h4>ADDRESS TYPE</h4>
                    <div class="radio-box-cont">
                      <div class="radio-box">
                        <input type="radio" name="addressType" id="address-type"
                        value="Home"
                      
                        />
                        <small>Home (All Day Delivery)</small>
                      </div>
                      <div class="radio-box">
                        <input type="radio" name="addressType" id="address-type"
                        value="Office"
                        />
                        <small>Office (9AM-5PM Delivery)</small>
                      </div>
                    </div>
                  </div>
                  <button type="submit">Save And Deliver Here</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="newslatter">
        <h1>NEWSLATTER</h1>
        <h4>Get update from your favorite products</h4>
        <form action="/newsemail" method="post">
          <input type="text" placeholder="enter your email" />
          <button type="submit">Send</button>
        </form>
      </div>
      <footer class="Footer" id="footer">
        <div class="footer-info">
          <h2>MUHAFIZ.</h2>
          <p>
            There are many variations of passages of Lorem Ipsum available, but
            the majority have suffered alteration in some form, by injected
            humour, or randomised words which don’t look even slightly
            believable.
          </p>
          <div class="social-icon">
            <a href="">
              <i
                style="color: #3b5999"
                class="fa-brands fa-facebook-square"
              ></i>
            </a>
            <a href="">
              <i
                style="color: #e4405f"
                class="fa-brands fa-instagram-square"
              ></i>
            </a>
            <a href="">
              <i style="color: #55acee" class="fa-brands fa-twitter-square"></i>
            </a>
            <a href="">
              <i
                style="color: #e60023"
                class="fa-brands fa-pinterest-square"
              ></i>
            </a>
          </div>
        </div>
        <div class="Usefull-Links">
          <h2>Usefull Links</h2>
          <ul>
            <li>
              <a href="/"> Home </a>
            </li>
            <li>
              <a href="/cart/usercart"> Cart </a>
            </li>
            <li>
              <a href="/product?category=Men"> Man Fashion </a>
            </li>
            <li>
              <a href="/product?category=Women"> Woman Fashion </a>
            </li>
            <li>
              <a href="/product?category=Accessories"> Accessories </a>
            </li>
            <li>
              <a href="/product?category=Accessories"> My Account </a>
            </li>
            <li>
              <a href="/product?category=Accessories"> Order Tracking </a>
            </li>
            <li>
              <a href="/product?category=Accessories"> Wishlist </a>
            </li>
            <li>
              <a href="/product?category=Accessories"> Wishlist </a>
            </li>
            <li>
              <a href="/product?category=Accessories"> Terms </a>
            </li>
          </ul>
        </div>
        <div class="Contact">
          <h2>Contact</h2>
          <div>
            <i class="fa-solid fa-location-pin"></i>
            622 Dixie Path , South Tobinchester 98336
          </div>
          <div><i class="fa-solid fa-phone"></i>+91 7869073804</div>
          <div><i class="fa-solid fa-at"></i>Muhafiz.ahmed.sa@gmail.com</div>
          <img src="https://i.ibb.co/Qfvn4z6/payment.png" />
        </div>
      </footer>
    </div>
    <script>
      let profile = document.querySelector(".profile-cont");

      profile.addEventListener("click", function () {
        profile.classList.toggle("profile-active");
      });
      document
        .querySelector("#profile-cont-off")
        .addEventListener("click", function () {
          profile.classList.toggle("profile-active");
        });
      let profileCont = document.querySelector(".persnal-info-cont");
      let addressCont = document.querySelector(".address-info-cont");
      const showprofile = () => {
        addressCont.style.display = "none";
        profileCont.style.display = "flex";
      };
      const showaddress = () => {
        profileCont.style.display = "none";
        addressCont.style.display = "flex";
      };
    </script>
  </body>
</html>
    