showConsultationCalendar();

function showConsultationCalendar() {
    document.addEventListener('DOMContentLoaded', function() {
        // Get the calendar element
        var calendarEl = document.getElementById('calendar');

        // Get the consultation schedules from the data attribute
        const consultationSchedules = JSON.parse(calendarEl.getAttribute('data-schedules'));

        // Initialize the FullCalendar
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            eventTimeFormat: {
                hour: 'numeric',
                minute: '2-digit',
                meridiem: 'short'
            },
            events: consultationSchedules.map(schedule => ({
                start: schedule.con_sched_date,
                color: 'blue',
                sched_id: schedule.con_sched_id 
            })),
            dateClick: function(info) {
                const clickedDate = info.date; // This is a Date object

                // Find a schedule with the same date (ignore time)
                const schedule = consultationSchedules.find(s => {
                    const scheduleDate = new Date(s.con_sched_date); // Convert to Date object
                    return (
                        scheduleDate.getFullYear() === clickedDate.getFullYear() &&
                        scheduleDate.getMonth() === clickedDate.getMonth() &&
                        scheduleDate.getDate() === clickedDate.getDate()
                    );
                });

                if (schedule) {
                    window.location.href = `midwife-appointments?sched_id=${schedule.con_sched_id}`;
                } else {
                    alert('No appointments scheduled for this day.');
                }
            },
            dayCellDidMount: function(info) {
                const clickedDate = info.date; // This is a Date object

                // Check if there's a schedule for the clicked date
                const schedule = consultationSchedules.find(s => {
                    const scheduleDate = new Date(s.con_sched_date); // Convert to Date object
                    return (
                        scheduleDate.getFullYear() === clickedDate.getFullYear() &&
                        scheduleDate.getMonth() === clickedDate.getMonth() &&
                        scheduleDate.getDate() === clickedDate.getDate()
                    );
                });

                // Set tooltip content based on whether there is a schedule
                const tooltipContent = schedule ? 'View Appointments' : 'Add Schedule';

                tippy(info.el, {
                    content: tooltipContent,
                    trigger: 'mouseenter',
                    placement: 'top',
                });
            }
        });

        // Render the calendar
        calendar.render();
    });
}
