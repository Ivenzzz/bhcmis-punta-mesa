<div class="l-navbar show" id="nav-bar">
    <nav class="nav">
        <div> 
            <a href="/bhcmis/resident" class="nav_logo gradient-text"> 
                <img src="./public/images/punta_mesa_logo.png" alt="Logo" class="admin-logo"> 
                <span class="nav_logo-name">Residents Dashboard</span> 
            </a>
            <div class="nav_list">
                <?php
                $current_page = $_SERVER['REQUEST_URI'];
                ?>

                <!-- Dashboard Link -->
                <a href="/bhcmis/resident/dashboard" class="nav_link <?= preg_match('/^\/bhcmis\/resident\/dashboard$/', $current_page) ? 'active' : '' ?>"> 
                    <i class='bx bx-home nav_icon'></i> 
                    <span class="nav_name">Medical History</span> 
                </a>

                <!-- Dashboard Link -->
                <a href="/bhcmis/resident/dashboard" class="nav_link <?= preg_match('/^\/bhcmis\/resident\/dashboard$/', $current_page) ? 'active' : '' ?>"> 
                    <i class='bx bx-home nav_icon'></i> 
                    <span class="nav_name">Clinical Records</span> 
                </a>

                <!-- Reports Link -->
                <a href="/bhcmis/resident/reports" class="nav_link <?= strpos($current_page, '/resident/reports') !== false ? 'active' : '' ?>"> 
                    <i class='bx bxs-report nav_icon'></i>
                    <span class="nav_name">Appointments</span> 
                </a>
            </div>
        </div>
    </nav>
</div>
