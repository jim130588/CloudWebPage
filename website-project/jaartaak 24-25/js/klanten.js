// klanten random user generator

const apiUrl = 'https://randomuser.me/api/?results=9';
const klantenContainer = document.getElementById('klantenContainer');
const aside = document.querySelector('aside');

async function laadKlanten() {
    try {
        const response = await fetch(apiUrl);
        const data = await response.json();
        const klanten = data.results;

        klanten.forEach(klant =>{
            const section = document.createElement('section');
            section.classList.add('product-item');

            section.innerHTML = `
            <img src="${klant.picture.large}" alt="${klant.name.first} ${klant.name.last}">
            <h2>${klant.name.title} ${klant.name.first} ${klant.name.last}</h2>
            <p>huidige woonplaats: ${klant.location.country}</p>
            <p>leeftijd: ${klant.dob.age}</p>
            `;

            section.addEventListener('mouseover', () => toonDetails(klant));
            section.addEventListener('mouseout', verbergDetails);

            klantenContainer.appendChild(section);
        });

    } catch (error) {
        console.error('Fout bij het laden van klanten:', error);
        klantenContainer.innerHTML = `<p>Kon klanten niet laden, probeer later opnieuw.</p>`;
    }
}

function toonDetails(klant) {
    aside.innerHTML = `
        <section class="aside-content">
            <img src="${klant.picture.large}" alt="${klant.name.first} ${klant.name.last}" width="150px" height="auto">
            <h2>${klant.name.title} ${klant.name.first} ${klant.name.last}</h2>
            <p>Email: ${klant.email}</p>
            <p>Telefoon: ${klant.phone}</p>
            <p>Adres: ${klant.location.street.number} ${klant.location.street.name}, ${klant.location.city}</p>
        </section>
    `;
    aside.style.display = 'block'; // Zorg dat de aside zichtbaar is
}

function verbergDetails() {
    aside.innerHTML = '';
    aside.style.display = 'none'; // Verberg de aside
}

laadKlanten();