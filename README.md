<h1 align="justify">Patronum</h1>
<p align="justify">Juego dememoria donde el usuario replica secuencias de imagenes para sumar puntos.</p>
<p align="justify"> <strong>Xcode.</strong></p>
<p align="justify"> <strong>Lenguajes: Swift.</strong></p>

&nbsp;
<h1 align="justify">Descripción General</h1>
 <p align="justify">La aplicación es un juego de memoria visual en el cual el usuario debe repetir una secuencia de imágenes generada aleatoriamente para obtener puntos. La app tiene cuatro pantallas principales:</p>
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <strong align="justify">Pantalla Principal (ViewController Scene):</strong>
                <p align="justify">Muestra un fondo, el título y dos botones para navegar al juego o al historial de puntuaciones.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Juego (JuegoViewController):</strong>
                <p align="justify">Donde se juega la partida.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Pantalla de Final de Juego(FinalViewController):</strong>
                <p align="justify">Muestra la puntuación obtenida y permite opciones de guardado y reinicio.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Historial de Puntuaciones (PuntuacionesViewController):</strong>
                <p align="justify">Lista las puntuaciones previas del usuario.</p>
            </li>
        </ul>  
</div>
&nbsp;
<h1 align="justify">Herramientas y Entorno de Desarrollo</h1>
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <strong align="justify">Xcode:</strong>
                <p align="justify">Usamos Xcode como entorno de desarrollo, seleccionando UIKit y Storyboard para construir la interfaz gráfica.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Storyboard:</strong>
                <p align="justify">Definimos la interfaz gráfica de cada pantalla y la navegación entre ellas.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Swift:</strong>
                <p align="justify">Lenguaje de programación principal.</p>
            </li>
        </ul>  
</div>
&nbsp;
<h1 align="justify">Proceso de Creación de la App</h1>
<h3 align="justify">1. Estructura del Proyecto</h3>
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <p align="justify">Se creó un proyecto en Xcode con la plantilla Single View App usando Swift y UIKit.</p>
            </li>
            <li align="justify">
                <p align="justify">En Main.storyboard, se añadieron las cuatro escenas de controlador de vista (View Controllers):</p>
                <ul align="justify">
                    <li align="justify"><strong align="justify">ViewController Scene:</strong> Pantalla principal de bienvenida.</li>
                                     <p></p>
                    <li align="justify"><strong align="justify">JuegoViewController:</strong> Pantalla de juego.</li>
                                     <p></p>
                    <li align="justify"><strong align="justify">FinalViewController:</strong> Pantalla de puntuación final.</li>
                                     <p></p>
                    <li align="justify"><strong align="justify">PuntuacionesViewController:</strong> Pantalla de historial de puntuaciones.</li>
                </ul>
            </li>
        </ul>
</div>
&nbsp;     
<h3 align="justify">2. Diseño de la Interfaz en Storyboard</h3>
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <strong align="justify">ViewController Scene (Pantalla Principal):</strong>
                <ul align="justify">
                    <p></p>
                    <li align="justify"><strong align="justify">Fondo y Título:</strong> Añadimos un fondo de imagen y un título centrado en la pantalla que indica el nombre del juego.</li>
                    <p></p>
                    <li align="justify"><strong align="justify">Botón “Comenzar”:</strong> Lleva al usuario a la pantalla del juego (JuegoViewController). Este botón está conectado al controlador de juego mediante un segue en el Storyboard </li>
                    <p></p>
                    <li align="justify"><strong align="justify">Botón “Puntuaciones”:</strong> Navega directamente al historial de puntuaciones (PuntuacionesViewController) a través de un segue.</li>
                </ul>
            </li>
         </ul>
</div>
&nbsp;
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <strong align="justify">JuegoViewController:</strong>
                <ul align="justify">
                    <li align="justify"><p align="justify">Añadimos tres botones de imagen (boton1, boton2, boton3) para mostrar la secuencia de imágenes.</p> </li>
                    <li align="justify"><p align="justify">Incluimos una etiqueta (puntuacionLabel) para mostrar la puntuación y un botón de inicio (botonComenzar), que se oculta cuando comienza el juego.</p></li>
                </ul>
            </li>
         </ul>
</div>
&nbsp;
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <strong align="justify">FinalViewController:</strong>
                <ul align="justify">
                    <li align="justify"><p align="justify">Incluye una etiqueta (puntuaciontotal) para mostrar la puntuación obtenida al finalizar el juego.</p> </li>
                    <li align="justify"><p align="justify">Botones para ver puntuaciones (navega al historial) y reiniciar (vuelve al juego).</p></li>
                </ul>
            </li>
         </ul>
</div>
&nbsp;
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <strong align="justify">PuntuacionesViewController:</strong>
                <ul align="justify">
                    <li align="justify"><p align="justify">Añadimos una UITableView para mostrar una lista de puntuaciones guardadas.</p> </li>
                </ul>
            </li>
         </ul>
</div>
&nbsp;       
<h3 align="justify">3. Configuración de Navegación en Storyboard</h3>
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <strong align="justify">Se establecieron los segues necesarios en Storyboard:</strong>
                <ul align="justify">
                    <p></p>
                    <li align="justify"><strong align="justify">Desde ViewController Scene:</strong> Un segue desde el botón “Comenzar” hacia JuegoViewController yotro desde el botón “Puntuaciones” hacia PuntuacionesViewController.</li>
                    <p></p>
                    <li align="justify"><strong align="justify">Desde JuegoViewController a FinalViewController:</strong> Activado cuando termina lapartida.</li>
                    <p></p>
                    <li align="justify"><strong align="justify">Desde FinalViewController a PuntuacionesViewController:</strong> Al presionar el botón para ver el historial.</li>
                </ul>
            </li>
         </ul>
</div>
&nbsp;
<h1 align="justify">Funcionamiento de la Lógica de la App</h1>
<h3 align="justify">ViewController.swift (Pantalla Principal)</h3>
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <p align="justify">Este controlador gestiona la pantalla de inicio. Contiene los botones que inician el juego y que llevan a la pantalla de puntuaciones.</p>
            </li>
        </ul>
</div>
<h3 align="justify">JuegoViewController.swift (Pantalla de Juego)</h3>
<div align="justify">
        <ul align="justify">
            <li align="justify"><strong align="justify">Carga de imágenes:</strong> Se cargan al iniciar la vista y se guardan en un arreglo (imagenes).</li>
            <p></p>
            <li align="justify"><strong align="justify">Inicio del juego:</strong> Cuando el usuario presiona botonComenzar, se genera una secuencia de imágenes que el usuario debe recordar y replicar.</li>
            <p></p>
            <li align="justify"><strong align="justify">Verificación de secuencia:</strong> Una vez que el usuario intenta replicar la secuencia, se verifica si es correcta. Si acierta, se suma un punto, y si falla, el juego finaliza y lleva a la pantalla de puntuación final.</li>
        </ul>
</div>

```sh
// Método que inicia el juego generando una nueva secuencia
func iniciarJuego() {
 secuenciaUsuario.removeAll()
 secuencia = (0..&lt;3).map { _ in imagenes.randomElement()! }
 mostrarBotonesAleatorios()
 DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
  self.permitirSeleccionUsuario()
 }
}
```

<h3 align="justify">FinalViewController.swift (Pantalla de Puntuación Final)</h3>
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <p align="justify">Muestra la puntuación obtenida y ofrece opciones de ver el historial de puntuaciones o reiniciar el juego.</p>
                <p align="justify">Incluye la función agregarPuntuacion, que guarda la puntuación en UserDefaults, manteniendo un registro de las 10 mejores puntuaciones.</p>
            </li>
        </ul>
</div>

<h3 align="justify">PuntuacionesViewController.swift (Historial dePuntuaciones)</h3>
<div align="justify">
        <ul align="justify">
            <li align="justify">
                <p align="justify">Carga y muestra el historial de puntuaciones en una tabla (UITableView). Los datos se guardan en UserDefaults y se recuperan cada vez que el usuario abre la app.</p>
             <p align="justify">Implementa UITableViewDataSource para administrar el número de celdas y el contenido de cada una en la tabla, mostrando la puntuación y la fecha de cada partida.</p>
            </li>
        </ul>
</div>
























<h2 align="justify">Requisitos</h2>

- Dispositivo móvil con sistema operativo iOS/Android


&nbsp;
<h2 align="justify">Créditos</h2>

- **Desarrollador**: Carlos Valencia Sánchez
- **Diseñador de App**: Carlos Valencia Sánchez
- **Artista Gráfico**: Carlos Valencia Sánchez

&nbsp;
<h2 align="justify">Contacto</h2>

<p align="justify">Para obtener soporte técnico, reportar errores o proporcionar comentarios, no dudes en contactar.</p>

<p align="justify">¡Esperamos que disfrutes utilizando la Astro Log App para crear tus propias tarjetas de presentación únicas y profesionales!</p>

---
<p align="justify">Esta es una descripción general de la funcionalidad y contenido de la aplicación. Para obtener instrucciones detalladas sobre cómo utilizar cada característica, consulta la documentación incluida en la aplicación o comunícate con el desarrollador.</p>
<img src="https://github.com/valen28030/Astro-Log/assets/167770750/bd3c0dd6-e734-48e9-8cd1-d52a6ba159a9" alt="astro1" width="300">
