let productData;

// JSON ophalen via fetch
fetch('./assets/json/product.json')
    .then((response) => {
        if (!response.ok) {
            throw new Error(`HTTP error! status: ${response.status}`);
        }
        return response.json();
    })
    .then((data) => {
        productData = data;
        initPage(); // Pagina initialiseren nadat data geladen is
    })
    .catch((error) => {
        console.error('Fout bij het laden van de JSON:', error);
        const productPage = document.getElementById("product-page");
        productPage.innerHTML = `<p>Er is een probleem bij het laden van de productinformatie. Probeer later opnieuw.</p>`;
    });

function initPage() {
    const productDropdown = document.getElementById("product-dropdown");

    // Huidig geselecteerde product ophalen via URL-parameters
    const urlParams = new URLSearchParams(window.location.search);
    const currentProduct = urlParams.get("product");
    productDropdown.value = currentProduct;

    // Actieve klasse updaten en product weergeven
    updateDropdownActiveClass(currentProduct);
    displayProduct(currentProduct);

    // Eventlistener voor wijziging in dropdown
    productDropdown.addEventListener("change", (event) => {
        const selectedProduct = event.target.value; // Correcte naam gebruiken
        updateDropdownActiveClass(selectedProduct);
        displayProduct(selectedProduct);
    });
}

// Product weergeven in de pagina
function displayProduct(productKey) {
    const productPage = document.getElementById("product-page");
    const product = productData[productKey];

    if (!product) {
        productPage.innerHTML = `<p>Product niet gevonden.</p>`;
        return;
    }

    // Genereer een lijst van gerelateerde producten, exclusief het huidige product
    const relatedProductsKeys = Object.keys(productData).filter(key => key !== productKey);
    const randomRelatedProducts = getRandomProducts(relatedProductsKeys, 3); // Kies willekeurig 3 producten

    // HTML voor gerelateerde producten genereren
    const relatedProductsHTML = randomRelatedProducts.map(key => {
        const relatedProduct = productData[key];
        return `
            <figure>
                <a href="?product=${key}"><img src="${relatedProduct.image.src}" alt="${relatedProduct.image.alt}"></a>
                <figcaption>${relatedProduct.name}</figcaption>
            </figure>
        `;
    }).join('');

    // HTML voor productdetails genereren
    const productHTML = `
    <h1>The Warlord's Forge - Product</h1>
    <div class="top-section">
        <section class="product-detail">
            <figure>
                <img src="${product.image.src}" alt="${product.image.alt}">
                <figcaption>
                    ${product.image.caption}
                    <input type="checkbox" class="heart-checkbox" id="heart-checkbox-1">
                    <label for="heart-checkbox-1" class="heart">&#10084;</label>
                </figcaption>
            </figure>
        </section>
        <section class="price-info">
            <h2>${product.name}</h2>
            <p>Prijs: ${product.price}</p>
            <section class="productDetails">
                <p>${product.description}</p>
            </section>
        </section>
    </div>
    <div class="bottom-section">
        <section class="recommended">
            <section class="related">
                <h2>Mensen die dit kochten, waren ook geïnteresseerd in deze producten</h2>
                <article class="related-images">
                    ${relatedProductsHTML}
                </article>
            </section>
        </section>
    </div>
    `;
    productPage.innerHTML = productHTML;
}

// Hulpfunctie om willekeurig N producten te selecteren uit een array
function getRandomProducts(keysArray, count) {
    const shuffled = keysArray.sort(() => 0.5 - Math.random());
    return shuffled.slice(0, count);
}

// Actieve klasse updaten in de dropdown
function updateDropdownActiveClass(selectedProduct) {
    const productDropdown = document.getElementById("product-dropdown");
    const options = productDropdown.options;

    for (let i = 0; i < options.length; i++) {
        if (options[i].value === selectedProduct) {
            options[i].classList.add("active");
        } else {
            options[i].classList.remove("active");
        }
    }
}
