let cart = [];
localStorage.removeItem('cart');

// Function to check if the cart exists in local storage and initialize it
function initializeShoppingCart() {
    const storedCart = localStorage.getItem('cart');
    if (storedCart) {
        cart = JSON.parse(storedCart);
    } else {
        cart = []; // Set cart to an empty array if no cart exists in local storage
    }
    updateCartDisplay();
}

initializeShoppingCart();

function addToCart(imgUrl, productName, price) {
    const existingItemIndex = cart.findIndex((item) => item.productName === productName);

    if (existingItemIndex !== -1) {
        // Item already exists in the cart, increment the quantity
        cart[existingItemIndex].quantity += 1;
    } else {
        // Item does not exist in the cart, add a new item
        const newItem = {
            imgUrl: imgUrl,
            productName: productName,
            price: price,
            quantity: 1,
        };
        cart.push(newItem);
    }

    updateLocalStorage();
    updateCartDisplay();
}

function removeCart(productName) {
    const itemIndex = cart.findIndex((cartItem) => cartItem.productName === productName);
    if (itemIndex !== -1) {
        cart.splice(itemIndex, 1);
        updateLocalStorage();
        updateCartDisplay();
    }
}

function updateCartDisplay() {
    const cartElement = document.getElementById('cart');
    const cartTotalElement = document.getElementById('cartTotal');
    const totalItemsElement = document.getElementById('totalItems');
    const navCartQuantity = document.querySelector('.quantity');
    const asideElement = document.querySelector('aside');
    const bodyElement = document.body;

    // Select the element in the navigation for cart quantity

    let total = 0;
    let itemCount = 0;

    cartElement.innerHTML = ''; // Clear previous items before updating

    cart.forEach((item) => {
        const listItem = document.createElement('li');
        listItem.className = 'products';
        listItem.innerHTML = `
            <figcaption class="product">
                <img class="productImg" src="${item.imgUrl}" width="50px" height="50px">
                <h2 class="productName">${item.productName}</h2>
                <h3 class="productPrice">Price: €${item.price.toFixed(2)}</h3>
                <p class="productQuantity">
                    Quantity: 
                    <button type="button" id="minusOne" onclick="decreaseQuantity('${item.productName}')">-</button>
                    ${item.quantity}
                    <button type="button" id="addOne" onclick="increaseQuantity('${item.productName}')">+</button>
                </p>
                <!-- You can add a remove button if needed -->
                <button type="button" class="remove" id="remove" onclick="removeCart('${item.productName}')">Verwijder</button>
            </figcaption>`;

        total += item.price * item.quantity;
        itemCount += item.quantity;

        cartElement.appendChild(listItem); // Append each item to the cart list
    });

    cartTotalElement.textContent = `Totaal: €${total.toFixed(2)}`;
    totalItemsElement.textContent = `Aantal items: ${itemCount}`;
    navCartQuantity.textContent = itemCount; // Update the quantity displayed in the navigation

    if (itemCount === 0) {
        asideElement.style.display = 'none';
        asideElement.classList.add('hidden');
        bodyElement.classList.add('cart-empty');
    } else {
        asideElement.style.display = 'block';
        asideElement.classList.remove('hidden');
        bodyElement.classList.remove('cart-empty');
    }
}

function increaseQuantity(productName) {
    const itemIndex = cart.findIndex((cartItem) => cartItem.productName === productName);
    if (itemIndex !== -1) {
        cart[itemIndex].quantity += 1;
        updateLocalStorage();
        updateCartDisplay();
    }
}

function decreaseQuantity(productName) {
    const itemIndex = cart.findIndex((cartItem) => cartItem.productName === productName);
    if (itemIndex !== -1 && cart[itemIndex].quantity > 1) {
        cart[itemIndex].quantity -= 1;
        updateLocalStorage();
        updateCartDisplay();
    }
}

function showContactPrompt() {
    // Show a confirmation message to guide the user to contact page
    const userConfirmation = confirm("De prijs is afhankelijk van de opties. Wilt u contact opnemen om een correcte prijs te verkrijgen?");
    
    // If user clicks 'OK', redirect to contact page
    if (userConfirmation) {
        window.location.href = './contact.html';
    }
}

function updateLocalStorage() {
    localStorage.setItem('cart', JSON.stringify(cart));
}