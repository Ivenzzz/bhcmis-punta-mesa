<div class="l-navbar show" id="nav-bar">
    <nav class="nav">
        <div> 
            <a href="/bhcmis/midwife" class="nav_logo gradient-text"> 
                <img src="./public/images/punta_mesa_logo.png" alt="Logo" class="admin-logo"> 
                <span class="nav_logo-name">Midwife Dashboard</span> 
            </a>
            <div class="nav_list">
                <?php
                $current_page = $_SERVER['REQUEST_URI'];
                ?>

                <!-- Dashboard Link -->
                <a href="/bhcmis/midwife" class="nav_link <?= preg_match('/^\/bhcmis\/midwife$/', $current_page) ? 'active' : '' ?>"> 
                    <i class='bx bx-line-chart nav_icon'></i> 
                    <span class="nav_name">Home</span> 
                </a>

                <!-- Maternal Services Link with Collapsible Sub-links -->
                <div class="nav-item">
                    <a class="nav_link collapsible-link" 
                       href="#collapseMaternalLinks" 
                       data-bs-toggle="collapse" 
                       aria-expanded="<?= (strpos($current_page, '/midwife-prenatals') !== false || strpos($current_page, '/midwife/postpartum') !== false) ? 'true' : 'false' ?>" 
                       aria-controls="collapseMaternalLinks" 
                       style="display: flex; align-items: center;">
                        <i class='bx bxs-baby-carriage nav_icon'></i> 
                        <span class="nav_name">Maternal</span>
                        <i class='bx bx-chevron-down nav_icon ms-auto'></i> <!-- Down arrow icon -->
                    </a>

                    <div class="collapse <?= (strpos($current_page, '/midwife-prenatals') !== false || strpos($current_page, '/midwife/postpartum') !== false) ? 'show' : '' ?>" 
                         id="collapseMaternalLinks">
                        <div class="nav_list ms-3">
                            <a href="/bhcmis/midwife-prenatals" class="nav_link <?= strpos($current_page, '/midwife-prenatals') !== false ? 'active' : '' ?>"> 
                                <i class="fa-solid fa-female"></i>
                                <span class="nav_name">Prenatal</span> 
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Inventory Collapsible with Sub-links -->
                <div class="nav-item">
                    <a class="nav_link collapsible-link" 
                       href="#collapseInventoryLinks" 
                       data-bs-toggle="collapse" 
                       aria-expanded="<?= (strpos($current_page, '/midwife/vaccine-stock') !== false || strpos($current_page, '/midwife-medicines') !== false) ? 'true' : 'false' ?>" 
                       aria-controls="collapseInventoryLinks" 
                       style="display: flex; align-items: center;">
                        <i class="fa-solid fa-boxes-stacked"></i> 
                        <span class="nav_name">Inventory</span>
                        <i class='bx bx-chevron-down nav_icon ms-auto'></i> <!-- Down arrow icon -->
                    </a>

                    <div class="collapse <?= (strpos($current_page, '/midwife/vaccine-stock') !== false || strpos($current_page, '/midwife-medicines') !== false) ? 'show' : '' ?>" 
                         id="collapseInventoryLinks">
                        <div class="nav_list ms-3">
                            <!-- Medicines Link -->
                            <a href="/bhcmis/midwife-medicines" class="nav_link <?= strpos($current_page, '/midwife-medicines') !== false ? 'active' : '' ?>"> 
                                <i class="fa-solid fa-capsules"></i>
                                <span class="nav_name">Medicines</span> 
                            </a>
                            <!-- Vaccinations Link -->
                            <a href="/bhcmis/midwife/vaccine-stock" class="nav_link <?= strpos($current_page, '/midwife/vaccine-stock') !== false ? 'active' : '' ?>"> 
                                <i class="fa-solid fa-syringe"></i>
                                <span class="nav_name">Vaccinations</span> 
                            </a>
                        </div>
                    </div>
                </div>

                <a href="/bhcmis/midwife/bhw-tasks" class="nav_link <?= strpos($current_page, '/midwife/bhw-tasks') !== false ? 'active' : '' ?>"> 
                    <i class="fa-solid fa-tasks"></i>
                    <span class="nav_name">Task Management</span> 
                </a>

                <a href="/bhcmis/midwife/bhw-tasks" class="nav_link <?= strpos($current_page, '/midwife/bhw-tasks') !== false ? 'active' : '' ?>"> 
                    <i class="fa-solid fa-tasks"></i>
                    <span class="nav_name">Audit Logs</span> 
                </a>    
            </div>
        </div>
    </nav>
</div>
