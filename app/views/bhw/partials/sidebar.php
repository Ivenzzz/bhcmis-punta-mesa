<div class="l-navbar show" id="nav-bar">
    <nav class="nav">
        <div> 
            <a href="/bhcmis/bhw" class="nav_logo gradient-text"> 
                <img src="./public/images/punta_mesa_logo.png" alt="Logo" class="admin-logo"> 
                <span class="nav_logo-name">BHWs Dashboard</span> 
            </a>
            <div class="nav_list">
                <?php
                $current_page = $_SERVER['REQUEST_URI'];
                ?>

                <!-- Dashboard Link -->
                <a href="/bhcmis/bhw/dashboard" class="nav_link <?= preg_match('/^\/bhcmis\/bhw\/dashboard$/', $current_page) ? 'active' : '' ?>"> 
                    <i class='bx bx-home nav_icon'></i> 
                    <span class="nav_name">Dashboard</span> 
                </a>

                <!-- BHW Supervision Link with Collapsible Sub-links -->
                <div class="nav-item">
                    <a class="nav_link collapsible-link <?= (strpos($current_page, '/bhw/bhw-supervision') !== false || strpos($current_page, '/bhw/bhw-tasks') !== false) ? 'active' : '' ?>" 
                       href="#collapseBHWLinks" 
                       data-bs-toggle="collapse" 
                       aria-expanded="<?= (strpos($current_page, '/bhw/bhw-supervision') !== false || strpos($current_page, '/bhw/bhw-tasks') !== false) ? 'true' : 'false' ?>" 
                       aria-controls="collapseBHWLinks" 
                       style="display: flex; align-items: center;">
                        <i class='bx bx-group nav_icon'></i> 
                        <span class="nav_name">BHW Supervision</span>
                        <i class='bx bx-chevron-down nav_icon ms-auto'></i> <!-- Down arrow icon -->
                    </a>

                    <div class="collapse <?= (strpos($current_page, '/bhw/bhw-supervision') !== false || strpos($current_page, '/bhw/bhw-tasks') !== false) ? 'show' : '' ?>" 
                         id="collapseBHWLinks">
                        <div class="nav_list ms-3">
                            <a href="/bhcmis/bhw/bhw-tasks" class="nav_link <?= strpos($current_page, '/bhw/bhw-tasks') !== false ? 'active' : '' ?>"> 
                                <i class="fa-solid fa-tasks"></i>
                                <span class="nav_name">Task Management</span> 
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Reports Link -->
                <a href="/bhcmis/bhw/reports" class="nav_link <?= strpos($current_page, '/bhw/reports') !== false ? 'active' : '' ?>"> 
                    <i class='bx bxs-report nav_icon'></i>
                    <span class="nav_name">Reports</span> 
                </a>
            </div>
        </div>
    </nav>
</div>
