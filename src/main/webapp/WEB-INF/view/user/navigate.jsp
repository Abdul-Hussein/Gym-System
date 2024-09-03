<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://kit.fontawesome.com/bbbb399f9d.js" crossorigin="anonymous"></script>

<nav class="navbar">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/home">HOME</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/club">THE CLUB</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/packages/view">PACKAGES</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/api/sessions/view">SESSIONS</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/trainers/view">PERSONAL TRAINERS</a>
        </li>
        

        <!-- Dropdown Menu -->
        <li class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle"><i class="fa-solid fa-user"></i></a>
            <div class="dropdown-menu">
                <!-- Conditional logic to display based on the role -->
                <%
                if (session.getAttribute("active").equals("admin")) {
                %>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/login">Login As User</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/admin">Logout</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/api/gymMemberships/view">Add Memberships</a>
                <%
                }
                %>
                <%
                if (session.getAttribute("active").equals("member")) {
                %>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/admin">Login As Admin</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/login">Logout</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/api/gymMemberships/view">Your Membership</a>
                <%
                }
                %>
            </div>
        </li>
    </ul>
    <div class="menu-toggle" id="mobile-menu">
        <i class="fas fa-bars"></i>
    </div>
</nav>

<style>
    .navbar {
        background-color: #222;
        padding: 10px 20px; /* Increase vertical sizing */
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Playfair Display', serif;
        position: relative;
    }

    .navbar-nav {
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        width: 100%;
    }

    .nav-item {
        position: relative; /* For dropdown positioning */
    }

    .nav-link {
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    .nav-link:hover {
        background-color: #B08F44; /* Luxurious gold color */
        color: #fff;
    }

    /* Dropdown Styles */
    .dropdown-menu {
        display: none;
        position: absolute;
        top: 100%;
        left: 0;
        background-color: #333;
        min-width: 160px;
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        z-index: 1;
    }

    .dropdown-menu .dropdown-item {
        color: #f2f2f2;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    .dropdown-menu .dropdown-item:hover {
        background-color: #B08F44; /* Luxurious gold color */
        color: #fff;
    }

    .nav-item:hover .dropdown-menu {
        display: block;
    }

    .menu-toggle {
        display: none;
        cursor: pointer;
        color: #f2f2f2;
        font-size: 1.5rem;
        padding: 10px;
        transition: color 0.3s ease;
    }

    .menu-toggle:hover {
        color: #B08F44;
    }

    @media (max-width: 768px) {
        .navbar-nav {
            flex-direction: column;
            display: none;
            width: 100%;
            background-color: #222;
        }

        .nav-item {
            width: 100%;
        }

        .menu-toggle {
            display: block;
        }

        .navbar-nav.active {
            display: flex;
        }
    }
</style>

<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@100..400&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+Knujsl5/SC/7d6ixUd4J/gj2qvXen5nD1/U+KtrsnMpoX4" crossorigin="anonymous"></script>
<script>
    $(document).ready(function() {
        $("#mobile-menu").click(function() {
            $(".navbar-nav").toggleClass("active");
        });
    });
</script>
