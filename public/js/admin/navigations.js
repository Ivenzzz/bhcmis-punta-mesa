export function setupNavbar() {
    document.addEventListener("DOMContentLoaded", function(event) {
        const showNavbar = (toggleId, navId, bodyId, headerId) => {
            const toggle = document.getElementById(toggleId),
                nav = document.getElementById(navId),
                bodypd = document.getElementById(bodyId),
                headerpd = document.getElementById(headerId);
            
            // Validate that all variables exist
            if (toggle && nav && bodypd && headerpd) {
                // Initially show the navbar
                nav.classList.add('show');
                // Initially add padding to body and header
                bodypd.classList.add('body-pd');
                headerpd.classList.add('body-pd');

                toggle.addEventListener('click', () => {
                    // Toggle navbar visibility
                    nav.classList.toggle('show');
                    // Change icon
                    toggle.classList.toggle('bx-x');
                    // Toggle padding to body
                    bodypd.classList.toggle('body-pd');
                    // Toggle padding to header
                    headerpd.classList.toggle('body-pd');
                });
            }
        };

        showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header');

        /*===== LINK ACTIVE =====*/
        const linkColor = document.querySelectorAll('.nav_link');

        function colorLink() {
            if (linkColor) {
                linkColor.forEach(l => l.classList.remove('active'));
                this.classList.add('active');
            }
        }
        linkColor.forEach(l => l.addEventListener('click', colorLink));
    });
}

export function initializePopover() {
    var popoverTrigger = document.getElementById('avatar');
    if (popoverTrigger) {
        var popover = new bootstrap.Popover(popoverTrigger);
    }
}