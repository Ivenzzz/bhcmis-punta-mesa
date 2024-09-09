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

                <!-- Statistics Link -->
                <a href="/bhcmis/admin" class="nav_link <?= strpos($current_page, '/admin') !== false && strpos($current_page, '/admin-residents') === false && strpos($current_page, '/admin/personnels') === false && strpos($current_page, '/admin-midwife') === false && strpos($current_page, '/admin-bhws') === false ? 'active' : '' ?>"> 
                    <i class='bx bx-line-chart nav_icon'></i> 
                    <span class="nav_name">Statistics</span> 
                </a>

                <!-- Residents Link -->
                <a href="/bhcmis/admin-residents" class="nav_link <?= strpos($current_page, '/admin-residents') !== false ? 'active' : '' ?>"> 
                    <i class='bx bx-user nav_icon'></i> 
                    <span class="nav_name">Residents</span> 
                </a> 

                <!-- Collapsible Links for Personnels -->
                <div class="nav-item">
                    <!-- Updated Condition for Parent Link -->
                    <a class="nav_link collapsible-link <?= (strpos($current_page, '/admin/personnels') !== false || strpos($current_page, '/admin-midwife') !== false || strpos($current_page, '/admin-bhws') !== false) ? 'active' : '' ?>" 
                       href="#collapseSubLinks" 
                       data-bs-toggle="collapse" 
                       aria-expanded="<?= (strpos($current_page, '/admin/personnels') !== false || strpos($current_page, '/admin-midwife') !== false || strpos($current_page, '/admin-bhws') !== false) ? 'true' : 'false' ?>" 
                       aria-controls="collapseSubLinks" 
                       style="display: flex; align-items: center;">
                        <i class='bx bx-group nav_icon'></i> 
                        <span class="nav_name">Personnels</span>
                        <i class='bx bx-chevron-down nav_icon ms-auto'></i> <!-- Down arrow icon -->
                    </a>

                    <!-- Updated Condition for Collapsible Content -->
                    <div class="collapse <?= (strpos($current_page, '/admin/personnels') !== false || strpos($current_page, '/admin-midwife') !== false || strpos($current_page, '/admin-bhws') !== false) ? 'show' : '' ?>" 
                         id="collapseSubLinks">
                        <div class="nav_list ms-3"> <!-- Indent the sub-links -->
                            <a href="/bhcmis/admin-midwife" class="nav_link <?= strpos($current_page, '/admin-midwife') !== false ? 'active' : '' ?>"> 
                                <i class="fa-solid fa-user-doctor"></i>
                                <span class="nav_name">Midwife</span> 
                            </a>
                            <a href="/bhcmis/admin-bhws" class="nav_link <?= strpos($current_page, 'admin-bhws') !== false ? 'active' : '' ?>"> 
                                <i class="fa-solid fa-user-nurse"></i>
                                <span class="nav_name">BHWs</span> 
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</div>
