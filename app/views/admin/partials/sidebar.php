<div class="l-navbar show" id="nav-bar">
    <nav class="nav">
        <div> 
            <a href="/bhcmis/admin" class="nav_logo gradient-text"> 
                <img src="./public/images/punta_mesa_logo.png" alt="Logo" class="admin-logo"> 
                <span class="nav_logo-name">Admin Dashboard</span> 
            </a>
            <div class="nav_list">
                <?php
                $current_page = $_SERVER['REQUEST_URI'];
                ?>
                <a href="/bhcmis/admin" class="nav_link <?= strpos($current_page, '/admin') !== false && strpos($current_page, '/admin-residents') === false ? 'active' : '' ?>"> 
                    <i class='bx bx-line-chart nav_icon'></i> 
                    <span class="nav_name">Statistics</span> 
                </a> 
                <a href="/bhcmis/admin-residents" class="nav_link <?= strpos($current_page, '/admin-residents') !== false ? 'active' : '' ?>"> 
                    <i class='bx bx-user nav_icon'></i> 
                    <span class="nav_name">Residents</span> 
                </a> 
            </div>
        </div>
    </nav>
</div>
