// carrito.js

// Obtener el carrito almacenado en localStorage o un array vacío si no hay ninguno
var carrito = JSON.parse(localStorage.getItem('carrito')) || [];

// Función para agregar un producto al carrito
function agregarAlCarrito(id, nombre, precio) {
    var producto = {
        id: id,
        nombre: nombre,
        precio: precio
    };

    // Agregar el producto al array del carrito
    carrito.push(producto);

    // Guardar el carrito en localStorage
    actualizarLocalStorage();

    // Actualizar la ventana modal
    actualizarModal();

    // Mostrar un mensaje de éxito (puedes personalizarlo)
    alert('Producto agregado al carrito: ' + nombre);

    // Actualizar el contador en la imagen del carrito
    actualizarContadorCarrito();
}

// Función para cerrar la ventana modal
function cerrarModal() {
    document.getElementById('modal').style.display = 'none';
    document.getElementById('modal-overlay').style.display = 'none';
}

// Función para actualizar la ventana modal con los productos del carrito
function actualizarModal() {
    var listaCarrito = document.getElementById('listaCarrito');
    var totalCarrito = document.getElementById('Total');

    // Limpiar la lista actual
    listaCarrito.innerHTML = '';

    // Mostrar los productos en la lista
    carrito.forEach(function (producto) {
        var listItem = document.createElement('li');
        listItem.textContent = producto.nombre + ' - $' + producto.precio;

        // Agregar botón para eliminar el producto
        var deleteButton = document.createElement('button');
        deleteButton.textContent = 'Eliminar';
        deleteButton.className = 'boton-eliminar'; // Clase para aplicar estilos
        deleteButton.onclick = function () {
            eliminarDelCarrito(producto.id);
        };

        listItem.appendChild(deleteButton);
        listaCarrito.appendChild(listItem);
    });

    // Calcular y mostrar el total
    var total = carrito.reduce(function (total, producto) {
        return total + parseFloat(producto.precio);
    }, 0);

    totalCarrito.textContent = 'Total: $' + total.toFixed(2);
}

// Función para eliminar un producto del carrito
function eliminarDelCarrito(id) {
    // Buscar la posición del producto en el carrito
    var index = -1;
    for (var i = 0; i < carrito.length; i++) {
        if (carrito[i].id === id) {
            index = i;
            break;
        }
    }

    // Si se encontró el producto, eliminarlo
    if (index !== -1) {
        carrito.splice(index, 1);

        // Guardar el carrito actualizado en localStorage
        actualizarLocalStorage();

        // Actualizar la ventana modal después de la eliminación
        actualizarModal();

        // Actualizar el contador en la imagen del carrito
        actualizarContadorCarrito();
    }
}

// Función para abrir la ventana modal
function abrirModal() {
    document.getElementById('modal').style.display = 'block';
    document.getElementById('modal-overlay').style.display = 'block';
}

// Función para actualizar el contador en la imagen del carrito
function actualizarContadorCarrito() {
    var contador = document.getElementById('numero');
    contador.textContent = carrito.length.toString();

    // Mostrar el contador solo si hay productos en el carrito
    contador.style.display = carrito.length > 0 ? 'block' : 'none';
}

// Función para actualizar el carrito en localStorage
function actualizarLocalStorage() {
    localStorage.setItem('carrito', JSON.stringify(carrito));
}

// Llamar a la función al cargar la página para actualizar el contador y la ventana modal
window.addEventListener('load', function () {
    actualizarContadorCarrito();
    actualizarModal();
});

// Aplicar estilos a los botones en la ventana modal
document.addEventListener('DOMContentLoaded', function () {
    var botonesEliminar = document.querySelectorAll('.boton-eliminar');
    var botonCerrar = document.querySelector('.boton-cerrar');

    botonesEliminar.forEach(function (boton) {
        boton.style.padding = '5px 10px';
        boton.style.backgroundColor = 'aquamarine';
        boton.style.color = '#fff';
        boton.style.border = 'none';
        boton.style.borderRadius = '3px';
        boton.style.marginRight = '5px';
        boton.style.cursor = 'pointer';
    });

    botonCerrar.style.padding = '5px 10px';
    botonCerrar.style.backgroundColor = 'aquamarine';
    botonCerrar.style.color = '#fff';
    botonCerrar.style.border = 'none';
    botonCerrar.style.borderRadius = '3px';
    botonCerrar.style.cursor = 'pointer';
});