let dm = false; // Gebruik 'let' in plaats van 'const' als je de waarde wilt wijzigen

function isDm() {
    const benJeDm = confirm("Ben jij een Dungeon Master?");
    if (benJeDm) {
        dm = true; // Wijzig de waarde van dm
    }
    console.log("Ben je een Dungeon Master? ", dm);
}

const url = "https://www.dnd5eapi.co/api/";
const firstOption = document.getElementById("firstOption");
const secondOption = document.getElementById("secondOption");

async function firstSelection() {
    try {
        const result = await fetch(url);
        const data = await result.json();
        const selections = Object.keys(data);
        firstOption.innerHTML = "";  // Maak dropdown leeg

        selections.forEach(selection => {
            const option = document.createElement('option');
            option.value = selection;
            option.textContent = selection;
            firstOption.appendChild(option);
        });
    } catch (error) {
        console.error('Fout bij het laden van eerste opties:', error);
    }
}

firstSelection();

firstOption.addEventListener("change", async () => {
    const selectedValue = firstOption.value;
    const newUrl = `${url}${selectedValue}/`;  // Bouw de URL voor de tweede selectie
    await loadSecondSelection(newUrl);
});

let currentPage = 0; // Huidige pagina voor lazy loading
const pageSize = 20; // Aantal items per laadsessie

async function loadSecondSelection(apiUrl) {
    try {
        const result = await fetch(apiUrl);
        if (!result.ok) {
            throw new Error(`HTTP error! status: ${result.status}`);
        }
        
        const data = await result.json();
        console.log("Tweede API-data ontvangen:", data);

        // Controleer of 'results' aanwezig is
        if (data.results && Array.isArray(data.results)) {
            secondOption.innerHTML = ""; // Maak de dropdown leeg

            data.results.forEach(item => {
                const option = document.createElement('option');
                option.value = item.index || item.name; // Gebruik een unieke ID of naam
                option.textContent = item.name || item.index; // Weergavenaam
                secondOption.appendChild(option);
            });

            console.log("Tweede dropdown bijgewerkt.");
        } else {
            secondOption.innerHTML = '<option value="">Geen opties beschikbaar</option>';
            console.error("Geen 'results' gevonden in de API-response.");
        }
    } catch (error) {
        console.error("Fout bij het laden van tweede opties:", error);
        secondOption.innerHTML = '<option value="">Fout bij laden</option>';
    }
}

const apiName = document.getElementById("apiName");
const apiImg = document.getElementById("apiImg");
const apiStats = document.getElementById("apiStats"); // Container voor extra monsterdata zoals stats

secondOption.addEventListener("change", async () => {
    const selectedValue = secondOption.value;
    console.log("Geselecteerde item:", selectedValue);

    // Hier bouwen we de volledige URL door de eerste en tweede selectie samen te voegen
    const itemUrl = `${url}${firstOption.value}/${selectedValue}/`;  // Bouw de volledige URL
    console.log("Detail API URL:", itemUrl);

    // Haal de details op en toon ze
    await loadItemDetails(itemUrl);
});

async function loadItemDetails(itemUrl) {  // Gebruik itemUrl in plaats van apiUrl
    try {
        const result = await fetch(itemUrl);

        if (!result.ok) {
            throw new Error(`HTTP error! status: ${result.status}`);
        }

        const data = await result.json();
        console.log("Details ontvangen:", data);

        // Toon de details in de HTML
        apiName.textContent = data.name || "Naam niet beschikbaar";
        apiImg.src = `https://www.dnd5eapi.co${data.image}` || "./assets/placeholder.png";
        apiImg.alt = data.name || "Geen afbeelding beschikbaar";
        
        // Toon stats en andere relevante data
        if  (firstOption.value === "monsters") {
            apiStats.innerHTML = `
            <section class= dendCard>
                <p><strong>Type:</strong> ${data.type}</p>
                <p><strong>Size:</strong> ${data.size}</p>
                <p><strong>Armor Class:</strong> ${data.armor_class.map(ac => ac.value).join(", ")}</p>
                <p><strong>Hit Points:</strong> ${data.hit_points}</p>
                <p><strong>Speed:</strong> Walk: ${data.speed.walk}, Fly: ${data.speed.fly}, Swim: ${data.speed.swim}</p>
                <p><strong>Challenge Rating:</strong> ${data.challenge_rating}</p>
                <p><strong>XP:</strong> ${data.xp}</p>
            </section>
            `;
        } else if (firstOption.value === "ability-scores"){

            const description = data.desc.join(" ");
            const skillsList = data.skills.map(skill => `<li> ${skill.name} </li>`);

            apiStats.innerHTML = `
            <section class= dendCard>
                <h2 class="h2Dend"> ${data.full_name} </h2>
                <p> ${data.name} </p>
                <p> ${description} </p>
                <h2 class="h2Dend">This has an influence on these skills:</h2>
                <ul class="skills-list">
                    ${skillsList}
                </ul>
            </section>
            `;

        }else if (firstOption.value === "alignments"){

            apiStats.innerHTML = `
            <section class= dendCard>
                <h2 class="h2Dend"> ${data.name} </h2>
                <p> ${data.desc} </p>
            </section>
            `;
            
        }else if (firstOption.value === "backgrounds"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "classes"){
            // Haal de keuze- en lijstgegevens op
            const chooseAmount = data.proficiency_choices[0].choose;
            const proficiencyList = data.proficiency_choices[0].from.options.map(option => option.item.name).join(', ');

            // Maak een tekst die uitlegt hoeveel keuzes er gemaakt kunnen worden
            const chooseText = `You may choose ${chooseAmount} from the following list:`;

            // Zet de HTML content
            apiStats.innerHTML = `
            <section class="dendCard">
                <h2>${data.name}</h2>
                <p>${data.proficiency_choices[0].desc}</p>
                <p>${chooseText}</p>
                <ul class=skills-list>
                    ${proficiencyList.split(', ').map(skill => `<li>${skill}</li>`).join('')}
                </ul>
            </section>
            `;

        }else if (firstOption.value === "conditions"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "damage-types"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "equipment"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "equipment-categories"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "feats"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "features"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "languages"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "magic-items"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "magic-schools"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "proficiencies"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "races"){
            apiStats.innerHTML = ``;
            
        }else if (firstOption.value === "rule-sections"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "rules"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "skills"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "spells"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "subclasses"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "subraces"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "traits"){
            apiStats.innerHTML = ``;

        }else if (firstOption.value === "weapon-properties"){
            apiStats.innerHTML = ``;

        }

    } catch (error) {
        console.error('Fout bij het laden van details:', error);
    }
}
