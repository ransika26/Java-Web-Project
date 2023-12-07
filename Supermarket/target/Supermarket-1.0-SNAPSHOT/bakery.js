document.addEventListener('DOMContentLoaded', function () {
    fetchData();
});

function fetchData() {
    fetch('data_retrieve_bakery.jsp')
        .then(response => {
            console.log('Response status:', response.status);
            console.log('Response headers:', response.headers.get('content-type'));

            if (!response.ok) {
                throw new Error('Network response was not ok');
            }

            const contentType = response.headers.get('content-type');
            if (!contentType || !contentType.includes('application/json')) {
                throw new Error('Invalid content type or not JSON');
            }

            return response.json();
        })
        .then(data => {
            console.log('Data received:', data);
            updateHTML(data);
        })
        .catch(error => console.error('Error fetching data:', error));
}

function updateHTML(data) {
    const container = document.getElementById('itemContainer');
    container.innerHTML = ""; // Clear existing content

    data.forEach(item => {
        const itemBlock = document.createElement('article');
        itemBlock.className = 'art_2';
        itemBlock.innerHTML = `
            <div class="content">
                <img src='data:image/jpeg;base64,${item.base64Image}' alt='${item.itemName}'>
                <div class="word">
                    <h>${item.itemName}</h>
                    <p>${item.itemPrice}</p> <!-- Access itemPrice directly -->
                    <button>Add to cart</button>
                </div>
            </div>
        `;
        container.appendChild(itemBlock);
    });
}

