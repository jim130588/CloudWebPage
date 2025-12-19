function getCurrentDateTimeInGMT1() {
    const now = new Date();
    
    // Verkrijg de GMT+1 tijd
    const gmtPlus1 = new Date(now.getTime() + (1 * 60 * 60 * 1000));
    
    // Haal de datum en tijd componenten op
    const hours = String(gmtPlus1.getUTCHours()).padStart(2, '0');
    const minutes = String(gmtPlus1.getUTCMinutes()).padStart(2, '0');
    const seconds = String(gmtPlus1.getUTCSeconds()).padStart(2, '0');
    
    // Formatteer de datum en tijd als string
    return `${hours}:${minutes}:${seconds}`;
}

// Update de datum en tijd elke seconde
function updateDateTime() {
    const dateTimeElement = document.getElementById("dateTime");
    dateTimeElement.textContent = getCurrentDateTimeInGMT1();
}

// Start de klok
setInterval(updateDateTime, 1000);
updateDateTime();

function highlightToday() {
    // Get the current day of the week (0 = Sunday, 1 = Monday, ..., 6 = Saturday)
    const todayIndex = new Date().getDay();
  
    // Map of indices to day ids
    const days = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"];
  
    // Get the element for the current day using the id
    const todayElement = document.getElementById(days[todayIndex]);
  
    // Add the highlight class to the current day element
    if (todayElement) {
      todayElement.classList.add("highlight");
    }
  }

  window.onload = highlightToday;