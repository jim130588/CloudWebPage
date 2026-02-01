let map = L.map('map').setView([51.220, 4.399], 16);

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 21,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

let logoIcon = L.icon({
    iconUrl: './assets/img/shoplogo.png', // Relatief pad naar je logo
    iconSize:     [150, 150],  // Pas de grootte aan je logo aan
    iconAnchor:   [75, 75],  // Pas het ankerpunt aan (afhankelijk van de afmetingen van je logo)
});
let parkingIcon = L.icon({
    iconUrl: './assets/img/Parking.jpg', // Relatief pad naar je logo
    iconSize:     [50, 50],  // Pas de grootte aan je logo aan
    iconAnchor:   [25, 25],  // Pas het ankerpunt aan (afhankelijk van de afmetingen van je logo)
});

L.marker([51.221, 4.399], {icon: logoIcon}).addTo(map);
L.marker([51.219, 4.401], {icon: parkingIcon}).addTo(map);
