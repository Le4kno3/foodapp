<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Responsive FoodBox website</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet" href="/foodapp/staticfiles/css/style.css">
  
</head>
<body>
    

    <header class="header">
    
    <img src="/foodapp/staticfiles/image/kpezignf_2jpg.jpg" alt=" " width="80" height="60" class="logo"> <i class="fas"></i> 

    <nav class="navbar">
        <a href="#home">Home</a>
        <a href="#features">Features</a>
        <a href="#products">Products</a>
        <a href="#categories">Categories</a>
        <a href="#review">Review</a>
        <a href="#blogs">Blogs</a>
        <a href="#register">Register</a>
    </nav>

    <div class="icons">
        <div class="fas fa-bars" id="menu-btn"></div>
        <div class="fas fa-search" id="search-btn"></div>
        <div class="fas fa-shopping-cart" id="cart-btn"></div>
        <div class="fas fa-user" id="login-btn"></div>
        <!-- <div class="fas fa-" id="register-btn"></div> -->
    </div>

    <form action="" class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form>

    <div class="shopping-cart">
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="/foodapp/staticfiles/image/Mar.jpg" alt="" width=130px height=100px>
            <div class="content">
                <h3>Margherita Pizza</h3>
                <span class="price">250/- &#x20b9;</span>
                <span class="quantity">qty : 2</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="/foodapp/staticfiles/image/Bir.jpg" alt="" width=130px height=100px>
            <div class="content">
                <h3>Biryani</h3>
                <span class="price">540/- &#x20b9;</span>
                <span class="quantity">qty : 1</span>
            </div>
        </div>
        <div class="box">
            <i class="fas fa-trash"></i>
            <img src="/foodapp/staticfiles/image/g-1.jpg" alt="" width=130px height=100px>
            <div class="content">
                <h3>Burger</h3>
                <span class="price">120/- &#x20b9;</span>
                <span class="quantity">qty : 1</span>
            </div>
        </div>

        <form action="" class="search-form">
        <input type="search" id="search-box" placeholder="search here...">
        <label for="search-box" class="fas fa-search"></label>
    </form>
        <div class="total"> total : 910/- &#x20b9; </div>
        <a href="#" class="btn">checkout</a>
    </div>


    <form action="login" class="login-form" method="post">
        
        <h3>login now</h3>
        <div class="input-box">
            <label>email_id</label>
            <input type="text" placeholder="Enter your Email" name="email_id">
        </div> 

        <div class="input-box">
            <label>Pass</label>
            <input type="text" placeholder="Enter your Password" name="pass">
        </div> 


        <p>don't have an account <a href="#register">create now</a></p>  
        <input type="submit" value="login now" class="btn">
    </form> 

    


    <div class="admin">
        <form action="/foodapp/admin_page" method="post"> 

            <input type="submit" value="admin-portal"  class ="btn">
        </form> 
    </div>



</header>



<section class="home" id="home">

    <div class="content">
        <h3>fresh and <span>organic</span> Foods for your</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam libero nostrum veniam facere tempore nisi.</p>
        <a href="#" class="btn">shop now</a>
    </div>

</section>



<section class="features" id="features">

    <h1 class="heading"> our <span>features</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="/foodapp/staticfiles/image/feature-img-1.png" alt="">
            <h3>fresh and organic</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt, earum!</p>
            <a href="#" class="btn">read more</a>
        </div>

        <div class="box">
            <img src="/foodapp/staticfiles/image/feature-img-2.png" alt="">
            <h3>free delivery</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt, earum!</p>
            <a href="#" class="btn">read more</a>
        </div>

        <div class="box">
            <img src="/foodapp/staticfiles/image/feature-img-3.png" alt="">
            <h3>easy payments</h3>
            <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Deserunt, earum!</p>
            <a href="#" class="btn">read more</a>
        </div>

    </div>

</section>


<section class="products" id="products">

    <h1 class="heading"> our <span>products</span> </h1>

    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/Biryani1.jpg" alt="">
                <h3>Biryani</h3>
                <div class="price">120/- &#x20b9;</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/food-table.jpg" alt="">
                <h3>Salet</h3>
                <div class="price"> 60/- &#x20b9;</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/p-5.jpg" alt="">
                <h3>Drink</h3>
                <div class="price">20/- &#x20b9;</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/p-2.jpg" alt="">
                <h3>Sweet</h3>
                <div class="price">80/- &#x20b9; </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/snack.jpg" alt="">
                <h3>Snaks</h3>
                <div class="price">200/- &#x20b9;</div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

        </div>

    </div>

    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/g-4.jpg" alt="">
                <h3>Pancakeswap</h3>
                <div class="price">40/- &#x20b9; </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/g-3.jpg" alt="">
                <h3>Veg-Roll</h3>
                <div class="price">20/- &#x20b9; </div> 
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/Crispy_Chicken.jpg" alt="" width="300px" height="100px">
                <h3>Crispy-Chikan</h3>
                <div class="price"> 140/- &#x20b9; </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/Fru.jpg" alt="">
                <h3> Pineapple Juice </h3>
                <div class="price"> 80/- &#x20b9; </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="#" class="btn">add to cart</a>
            </div>

        </div>

    </div>


</section>



<section class="categories" id="categories">

    <h1 class="heading"> product <span>categories</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="/foodapp/staticfiles/image/Vej.png" alt="">
            <h3>Veg</h3>
            <p>upto 45% off</p>
            <a href="#" class="btn">shop now</a>
        </div>

        <div class="box">
            <img src="/foodapp/staticfiles/image/Biryani1.jpg" alt="">
            <h3>Non-Veg</h3>
            <p>upto 45% off</p>
            <a href="#" class="btn">shop now</a>
        </div>

        <div class="box">
            <img src="/foodapp/staticfiles/image/Sweets.png" alt="">
            <h3>Sweets</h3>
            <p>upto 45% off</p>
            <a href="#" class="btn">shop now</a>
        </div>

        <div class="box">
            <img src="/foodapp/staticfiles/image/Snacks.jpg" alt="">
            <h3>Snacks</h3>
            <p>upto 45% off</p>
            <a href="#" class="btn">shop now</a>
        </div>
        

    </div>

</section>



<section class="review" id="review">

    <h1 class="heading"> customer's <span>review</span> </h1>

    <div class="swiper review-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/pic-1.png" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                <h3>Kumar Indurkar</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/pic-2.png" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                <h3>Trisha </h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/pic-3.png" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                <h3>Takshil Patil</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="/foodapp/staticfiles/image/pic-4.png" alt="">
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Unde sunt fugiat dolore ipsum id est maxime ad tempore quasi tenetur.</p>
                <h3>Aachal Jambhulkar</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

        </div>

    </div>

</section>


<section class="blogs" id="blogs">

    <h1 class="heading"> our <span>blogs</span> </h1>

    <div class="box-container">

        <div class="box">
            <img src="/foodapp/staticfiles/image/Cofee.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 01 Jan, 2022 </a>
                </div>
                <h3>Fast delivery, Amazing people amazing cofee</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, expedita.</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

        <div class="box">
            <img src="/foodapp/staticfiles/image/Sandwich.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 14th Feb, 2022 </a>
                </div>
                <h3>Great food with amazing packing.</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, expedita.</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

        <div class="box">
            <img src="/foodapp/staticfiles/image/Manturian.jpg" alt="">
            <div class="content">
                <div class="icons">
                    <a href="#"> <i class="fas fa-user"></i> by user </a>
                    <a href="#"> <i class="fas fa-calendar"></i> 23rd Feb, 2022 </a>
                </div>
                <h3>Fresh, Organic and Yummy Food.</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, expedita.</p>
                <a href="#" class="btn">read more</a>
            </div>
        </div>

    </div>

</section>

<section class="register" id="register">

    <h1 class="heading"> Do <span>Registration now</span> </h1>
    <div class="registration-container"> 
        <%-- Change this form as user object way --%>
        
        <form:form action="register-new-user" modelAttribute="user" method="POST">
            <div class="input-box">
                <label>First Name</label>
                <form:input type="text" placeholder="Enter your first name" path="firstName"/>
            </div>  
            <div class="input-box">
                <label>Last Name</label>
                <form:input type="text" placeholder="Enter your last name" path="lastName"/>
            </div>
            <div class="input-box">
                <label>Username</label>
                <form:input type="text" placeholder="Enter your user name" path="userName"/>
            </div>
            <div class="input-box">
                <label>Phone Number</label>
                <form:input type="text" placeholder="Enter phone number" path="phone"/>
            </div>
            <div class="input-box">
                <label>Email-Id</label>              
                <form:input type="text" placeholder="Enter your email id" path="email"/>
            </div>
            
            <div class="input-box">
                <label>Password</label>
                <form:input type="text" placeholder="Generate your Password" path="password"/>
            </div>
            <div class="input-box">
                <label>Confirm Password</label>
                <form:input type="text" placeholder="Confirm your password" path="conpassword"/>
            </div>  
            <div class="input-box">
                <label>Address</label>
                <form:input type="text" placeholder="Enter your address" path="address"/>
            </div>
            <center>
            	<input type="submit" class="btn" name="Submit" value="Register"/>
            </center>

        </form:form>        
    </div>
   


</section>



<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3> FoodBox<i class="f"></i> </h3>
            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Aliquam, saepe.</p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +91 9284640895 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> shamlindurkar123@gmail.com </a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> Nagpur, india - 440026 </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Home </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Features </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Products </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Categories </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Review </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Blogs </a>
        </div>

        <div class="box">
            <h3>newsletter</h3>
            <p>subscribe for latest updates</p>
            <input type="email" placeholder="your email" class="email">
            <input type="submit" value="subscribe" class="btn">
            <img src="/foodapp/staticfiles/image/payment.png" class="payment-img" alt="">
        </div>

    </div>

    <div class="credit"> created by <span> ms. web designer </span> | Shamal Indurkar </div>

</section>




<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>


<script src="/foodapp/staticfiles/js/script.js"></script>

</body>




</html>


