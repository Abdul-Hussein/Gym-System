<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CITADEL London</title>
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	color: #fff;
	line-height: 1.6;
	background-color: black !important;
	overflow-x: hidden; /* Prevent horizontal overflow */
}



.video-section {
    position: relative;
    width: 100%; 
    height: 87vh;
    overflow: hidden;
    margin: 0;
    padding: 0;
    background-size: cover;
    background-position: center;
}


.back-video {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    z-index: -1;
}

.video-overlay {
    position: relative;
    z-index: 1;
    text-align: center;
    color: white;
    max-width: 100%;
    height: 100%; /* Ensure the overlay covers the entire section */
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.video-content {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 15px;
    margin-bottom: 60px; /* Adjust as needed to create space above buttons */
}


.video-icon {
	font-family: 'Playfair Display', serif;
	font-size: 3.5em;
	margin: 0;
	color: #B08F44;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

.video-subtitle {
	font-size: 1.5em;
	margin: 0;
	color: white;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

.video-button {
	margin-top: 20px;
	padding: 10px 20px;
	font-size: 1.2em;
	color: white;
	background-color:black;
	border: none;
	
	cursor: pointer;
	text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
	text-decoration: none;
	transition: text-decoration 0.3s ease;
}


.video-titles {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%; /* Full width */
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgba(0, 0, 0, 0.5); /* Transparent black background */
    padding: 10px 0; /* Adjust padding to your preference */
}

.video-titles button {
    background: none;
    border: none;
    color: #B08F44;
    font-size: 1.2em;
    cursor: pointer;
    padding: 10px 20px;
    transition: color 0.3s ease;
}

.video-titles button:hover {
    color: white;
}

.vertical-divider {
    width: 0.1rem;
    height: 7rem;
    background-color: white;
}

/* Responsive Design */
@media ( max-width : 768px) {
	.video-icon {
		font-size: 2em;
	}
	.video-subtitle {
		font-size: 1em;
	}
	.video-button {
		font-size: 1em;
	}
	.video-titles {
		flex-direction: column;
	}
	.vertical-divider {
		width: 100%;
		height: 1px;
	}
}

p {
	font-size: 1.2rem;
	font-family: 'Style Script', cursive;
	margin-bottom: 2rem;
	margin: auto;
	text-align: center;
	max-width: 900px;
	color: #ccc;
}

.description{
wdith:900px;
margin-bottom:4rem;
margin-top:3rem;
text-align: center;
}
h1 {
	text-align: center;
	font-size: 3rem;
	font-weight: 700;
	margin-top: 20px;
	color: #B08F44 !important; /* Luxurious gold color */
}

h4 {
	text-align: center;
	font-size: 1.8rem;
	font-weight: 400;
	color: #B08F44;
}

button {
	display: block;
	margin: 30px auto;
	padding: 15px 30px;
	font-size: 1.2rem;
	background-color: black;
	color: white;
	border: none;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

button:hover {
	background: transparent;
}

.navbar {
	background-color: #1a1a1a;
	padding: 15px 0;
	position: fixed;
	width: 100%;
	top: 0;
	z-index: 1000;
}

.navbar a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 20px;
	text-decoration: none;
	font-size: 1rem;
	transition: color 0.3s ease;
}

.navbar a:hover {
	color: #B08F44;
}

.navbar a.active {
	color: #B08F44;
	border-bottom: 2px solid #B08F44;
}

.section {
	padding: 60px 20px;
	text-align: center;
	color: #fff;
	background-size: cover;
	background-position: center;
	margin-top: 0.5rem;
	box-sizing: border-box;
}

.section-title {
	font-size: 2.5rem;
	margin-bottom: 20px;
	color: #B08F44;
}

.section p {
	font-size: 1.2rem;
}

.cards-container {
	display: flex;
	justify-content: center;
	gap: 10px;
	margin-top: 30px;
	padding: 0 20px; /* Ensure content stays within viewport */
	box-sizing: border-box;
}

.card {
	position: relative;
	width: 30%;
	height: 300px;
	background-size: cover;
	background-position: center;
	border-radius: 8px;
}

.card:nth-child(3) {
	width: 40%;
}

.card-content {
	position: absolute;
	bottom: 20px;
	right: 20px;
	background: rgba(0, 0, 0, 0.5);
	padding: 10px;
	border-radius: 5px;
}

.card-content a {
	color: #e0a80d;
	text-decoration: none;
	font-weight: bold;
}

.card-content a:hover {
	color: #fff;
}

.footer {
	background-color: #1a1a1a;
	color: #999;
	text-align: center;
	padding: 3rem;
	margin-top: 2rem;
	align-items: center;
}

.footer a {
	color: #B08F44;
	text-decoration: none;
	transition: color 0.3s ease;
}

.footer a:hover {
	color: #fff;
}
</style>
<%@ include file="frontTechnology.jsp"%>
</head>

<body>

	<!-- Navigation -->
	<%@ include file="navigate.jsp"%>


	<!-- Video Section -->
<!-- Video Section -->
	<section class="video-section">
		<video autoplay loop muted plays-inline class="back-video">
			<source src="/gym-mgmt/resources/videos/home.mp4" type="video/mp4">
			Your browser does not support the video tag.
		</video>
		<div class="video-overlay">
			<div class="video-content">
				<h1 class="video-icon">CITADEL</h1>
				<h2 class="video-subtitle">London</h2>
				<button class="video-button">FIND OUT MORE</button>
			</div>
			<div class="video-titles">
				<button id="citadelLabButton">THE CLUB</button>
				<hr class="vertical-divider">
				<button id="sweatByCitadelButton">CITADEL RETREATS</button>
			</div>
		</div>
	</section>



	<h1>TRAIN LIKE A CHAMPION</h1>

	<p class="description">Founded in 2020, CITADEL is the trailblazer in fitness and
		wellbeing, pushing boundaries in what a boxing gym should and could
		be. Progressive training modalities, elite-standard equipment, and
		expert-level trainers come together in an award-winning luxury space.</p>

	

	<!-- Additional Sections -->
	<div class="section"
		style="background-image: url('/gym-mgmt/resources/images/locations-bg.jpg');">
		<h2 class="section-title">Our Locations</h2>
		<p style="color: white;">Marylebone | City | Doha | Daios Cove</p>
	</div>

	<div class="section"
		style="background-image: url('/gym-mgmt/resources/images/community-bg.jpeg');">
		<h2 class="section-title">CITADEL RETREATS</h2>
		<button >FIND OUT MORE</button>
	</div>

	<div class="section" 
		style="background-image: url('images/more-than-a-gym-bg.jpg');">
		<h2 class="section-title">More Than A Gym</h2>
		<div class="cards-container">
			<div class="card"
				style="background-image: url('/gym-mgmt/resources/images/lab-bg.avif');">
				<div class="card-content">
					<a href="labs" id="labs">CITADEL LAB</a>
				</div>
			</div>
			<div class="card"
				style="background-image: url('/gym-mgmt/resources/images/theclub-bg.avif');">
				<div class="card-content">
					<a href="${pageContext.request.contextPath}/club">THE CLUB</a>
				</div>
			</div>
			<div class="card"
				style="background-image: url('/gym-mgmt/resources/images/personaltraining-bg.avif');">
				<div class="card-content">
					<a href="${pageContext.request.contextPath}/trainers/view">PERSONAL TRAINING</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<div class="footer">
		<p>
			General FAQS | <a href="#">Privacy Policy</a> | <a href="#">Terms
				of Membership</a> | <a href="#">Terms & Conditions</a> | <a href="#">Citadel
				Careers</a>
		</p>
		<p>
			Membership Enquiries: <a href="mailto:membership@citadel.com">membership@citadellondon.com</a>
			| Sweat Enquiries: <a href="mailto:sweat@bxrlondon.com">sweat@citadellondon.com</a>
		</p>
		<p>© CITADEL London 2024. All Rights Reserved. Registered in
			England: 0989024</p>
		<p>Website by People Like Us</p>
	</div>
</body>
</html>
<script>	
let isLabSelected = false;
let isRetreatSelected = false;

document.getElementById("citadelLabButton").addEventListener("click", function() {
    if (!isLabSelected) {
        document.querySelector(".video-section").style.backgroundImage = "url('/gym-mgmt/resources/images/lab.jpg')";
        document.querySelector(".back-video").style.display = "none";
        document.querySelector(".video-button").innerHTML = 'VIEW';
        document.querySelector(".video-button").addEventListener("click", function(){
            window.location.href = "${pageContext.request.contextPath}/club";
        });

        isLabSelected = true;
        isRetreatSelected = false;
    } else {
        document.querySelector(".video-section").style.backgroundImage = "none";
        document.querySelector(".back-video").style.display = "block";
        this.innerHTML = 'CITADEL LAB';
        document.querySelector(".video-button").innerHTML = 'FIND OUT MORE';
        isLabSelected = false;
    }
});

document.getElementById("sweatByCitadelButton").addEventListener("click", function() {
    if (!isRetreatSelected) {
        document.querySelector(".video-section").style.backgroundImage = "url('/gym-mgmt/resources/images/citadel_retreats.jpg')";
        document.querySelector(".back-video").style.display = "none";

        document.querySelector(".video-button").innerHTML = 'BOOK';
        
    
        isRetreatSelected = true;
        isLabSelected = false;
    } else {
        document.querySelector(".video-section").style.backgroundImage = "none";
        document.querySelector(".back-video").style.display = "block";
        this.innerHTML = 'CITADEL RETREATS';
        document.querySelector(".video-button").innerHTML = 'FIND OUT MORE';
        isRetreatSelected = false;
    }
});

</script>

