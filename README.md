<h1 align="justify">Astro Log</h1>
<p align="justify">App diseñada para que los usuarios puedan clasificar y guardar sus observaciones astronómicas.</p>
<p align="justify"> <strong>Android Studio.</strong></p>
<p align="justify"> <strong>Lenguajes: Java y XML.</strong></p>


&nbsp;
<h1 align="justify">Diseño de la Interfaz</h1>
<img src="https://github.com/valen28030/Astro-Log/assets/167770750/bd3c0dd6-e734-48e9-8cd1-d52a6ba159a9" alt="astro1" width="300">
<div align="justify">
  <h2 align="justify">Pantalla Principal</h2>
    <p align="justify">En la pantalla principal de la aplicación, se presenta una interfaz cuidadosamente diseñada para registrar observaciones astronómicas. A continuación, describo los elementos clave de esta pantalla:</p>
        <ul align="justify">
            <li align="justify">
                <strong align="justify">Título:</strong>
                <p align="justify">En la parte superior, se encuentra un título claro y conciso que indica el propósito de la pantalla.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Campo de Ingreso del Nombre del Astro:</strong>
                <p align="justify">Justo debajo del título, se ubica un campo de texto donde el usuario puede ingresar el nombre del astro que ha observado.</p>
                <p align="justify">El campo está etiquetado con la palabra “Nombre” en un tono grisáceo, lo que proporciona una pista visual para el usuario.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Selección de Categoría:</strong>
                <p align="justify">A continuación, se presenta un menú desplegable que permite al usuario seleccionar la categoría correspondiente al astro observado.</p>
                <p align="justify">Las opciones de categoría incluyen estrellas, planetas, cometas y otros objetos celestes.</p>
                <p align="justify">Además, he implementado una alternativa: el usuario puede hacer clic en los iconos asociados a cada categoría en lugar de usar el menú desplegable.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Fecha y Hora de la Observación:</strong>
                <p align="justify">Un escalón más abajo, se encuentra el botón “Fecha y Hora”.</p>
                <p align="justify">Al hacer clic en este botón, se despliega un calendario que permite al usuario seleccionar la fecha exacta de la observación.</p>
                <p align="justify">Una vez que se ha elegido la fecha, se muestra un reloj para seleccionar el momento preciso de la observación.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Validación y Botón de Añadir:</strong>
                <p align="justify">Antes de permitir que el usuario añada la observación, he implementado una validación.</p>
                <p align="justify">El botón de añadir permanecerá desactivado hasta que se hayan completado todos los campos obligatorios: nombre, categoría y fecha/hora.</p>
                <p align="justify">Si falta algún dato, se mostrará un mensaje solicitando al usuario que complete los campos pendientes.</p>
            </li>
          &nbsp;
            <li align="justify">
                <strong align="justify">Acceso a la Lista de Observaciones:</strong>
                <p align="justify">En la parte inferior de la pantalla, se encuentra otro botón.</p>
                <p align="justify">Al hacer clic en este botón, el usuario accederá directamente a la lista de observaciones registradas.</p>
            </li>
        </ul>
  

&nbsp;        
<img src="https://github.com/valen28030/Astro-Log/assets/167770750/3fb830f9-976b-472b-950b-6112689ca206" alt="astro2" width="300">
<h2 align="justify">Pantalla de Observaciones Astronómicas</h2>
        <p align="justify">En la pantalla de observaciones astronómicas registradas, he creado una interfaz intuitiva y funcional para que los usuarios gestionen sus observaciones. A continuación, detallo los elementos clave de esta pantalla:</p>
        <ul align="justify">
            <li align="justify">
                <strong align="justify">Título y Subtítulo:</strong>
                <p align="justify">En la parte superior, se encuentra el título principal, seguido de un subtítulo.</p>
                <p align="justify">El subtítulo muestra el número total de astros observados y está dinámicamente vinculado a los elementos de la lista de observaciones.</p>
            </li>
                    &nbsp;
            <li align="justify">
                <strong align="justify">Lista de Observaciones:</strong>
                <p align="justify">A continuación, se presenta la lista de observaciones, donde cada observación está contenida en una celda.</p>
                <p align="justify">Cada celda incluye los siguientes detalles del astro:</p>
                <ul align="justify">
                    <li align="justify"><strong align="justify">Icono:</strong> Representación visual del astro (por ejemplo, una estrella o un planeta).</li>
                    <li align="justify"><strong align="justify">Nombre:</strong> El nombre específico del astro observado.</li>
                    <li align="justify"><strong align="justify">Categoría:</strong> La clasificación del astro (estrella, planeta, cometa, etc.).</li>
                    <li align="justify"><strong align="justify">Fecha y Hora:</strong> El momento exacto de la observación.</li>
                </ul>
                <p align="justify">Además, he agregado un ícono de papelera a la derecha de cada celda.</p>
            </li>
                    &nbsp;
            <li align="justify">
                <strong align="justify">Funcionalidad de Eliminación:</strong>
                <p align="justify">El ícono de papelera permite al usuario eliminar una observación de la lista.</p>
                <p align="justify">Al hacer clic en la papelera, se eliminará la observación correspondiente y se actualizará automáticamente el número total de astros en el subtítulo.</p>
            </li>
                    &nbsp;
            <li align="justify">
                <strong align="justify">Botón de Añadir Nueva Observación:</strong>
                <p align="justify">En la parte inferior de la pantalla, se encuentra un botón con la imagen de un signo “+”.</p>
                <p align="justify">Al pulsar este botón, el usuario accederá a la pantalla principal para agregar una nueva observación a la lista.</p>
            </li>
        </ul>
    </div>


&nbsp;
<h1 align="justify">Funcionamiento de la Aplicación Astro Log</h1>
<h2 align="justify">Descripción General</h2>
    <p align="justify">La aplicación Astrolog es una herramienta simple que permite a los usuarios realizar observaciones astronómicas y categorizarlas según diferentes tipos de astros. La aplicación consta de dos actividades principales: MainActivity, donde los usuarios pueden ingresar nuevas observaciones, y ListaActivity, donde pueden ver una lista de todas las observaciones realizadas.</p>
&nbsp;
<h2 align="justify">MainActivity</h2>
    <p align="justify">En MainActivity, los usuarios pueden ingresar el nombre de la observación, seleccionar su categoría (como estrella, luna, cometa, etc.) y establecer la fecha y hora de la observación. Aquí hay algunos segmentos de código relevantes:</p>
    <h3 align="justify">Obtención de Referencias a las Vistas</h3>
    <p align="justify">Este método se utiliza para obtener referencias a las vistas en el diseño de MainActivity, como campos de entrada de texto, spinner para la categoría y botones.</p>

```sh
public void referencias(){
    nombre = findViewById(R.id.nombre);
    categoria = findViewById(R.id.categoria);
    aniadir = findViewById(R.id.aniadir);
    fechayhora = findViewById(R.id.fechayhora);
    verlista = findViewById(R.id.verlista);
}
```
&nbsp;
<h3 align="justify">Configuración de Listeners para los Botones</h3>
    <p align="justify">En este método, se establecen los listeners para los botones de "Añadir Observación", "Seleccionar Fecha y Hora" y "Ver Lista de Observaciones". Cada listener está asociado a un método que se ejecutará cuando se haga clic en el botón correspondiente.</p>

```sh
public void botones(){
    // Configura el botón de añadir observación
    aniadir.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            aniadirobservation();
        }
    });

    // Configura el botón de seleccionar fecha y hora
    fechayhora.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            calendario();
        }
    });

    // Configura el botón de ver lista de observaciones
    verlista.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            abrirlista();
        }
    });
}
```
&nbsp;
<h3 align="justify">Añadir Observación</h3>
    <p align="justify">En este método, se maneja la lógica para añadir una nueva observación. Se verifica que se haya ingresado un nombre y seleccionado una categoría, así como también se valida la longitud del nombre. Si todos los datos son válidos, se llama al método guardarobservacion() para almacenar la observación.</p>

```sh
public void aniadirobservation() {
    // Obtiene el nombre, la categoría y la fecha y hora ingresados por el usuario
    name = nombre.getText().toString();
    category = categoria.getSelectedItem().toString();
    datetime = fechayhora();

    // Valida que se haya seleccionado una categoría y que el nombre no esté vacío
    if (!category.equals("Seleccione una categoría") && !name.isEmpty()) {
        // Verifica si se ha seleccionado la fecha y la hora
        if (!fechayhoraseleccionadas) {
            Toast.makeText(this, "Por favor, seleccione una fecha y hora.", Toast.LENGTH_SHORT).show();
            return;
        }
        // Verifica la longitud del nombre del astro
        if (name.length() > 20) {
            Toast.makeText(this, "El nombre del astro no puede tener más de 20 caracteres.", Toast.LENGTH_SHORT).show();
            return;
        }

        // Guarda la nueva observación en las preferencias compartidas
        guardarobservacion(name, category, datetime);
    } else {
        // Muestra un mensaje de error si falta algún dato
        if (name.isEmpty()) {
            Toast.makeText(this, "Por favor, ingrese un nombre.", Toast.LENGTH_SHORT).show();
        } else {
            Toast.makeText(this, "Por favor, seleccione una categoría.", Toast.LENGTH_SHORT).show();
        }
    }
}
```
&nbsp;
<h3 align="justify">Guardar Observación</h3>
    <p align="justify">Este método se encarga de almacenar la observación en las preferencias compartidas de la aplicación. Se crea una cadena que representa la observación con el nombre, la categoría y la fecha y hora, y luego se agrega al conjunto de observaciones. Finalmente, el conjunto actualizado se guarda en las preferencias compartidas.</p>

```sh
public void guardarobservacion(String name, String category, String dateTime) {
    preferencias = getSharedPreferences("observaciones", MODE_PRIVATE);
    editor = preferencias.edit();

    // Obtiene el conjunto actual de observaciones almacenadas
    Set<String> observationsSet = preferencias.getStringSet("observaciones", new HashSet<>());

    // Forma la cadena de la observación
    String observation = name + " - " + category + " - " + dateTime;
    adapter.notifyDataSetChanged(); // Notifica al adaptador que los datos han cambiado
    nombre.setText(""); // Limpia el campo de entrada para el nombre
    observationsSet.add(observation); // Agrega la nueva observación al conjunto

    // Guarda el conjunto actualizado de observaciones en las preferencias compartidas
    editor.putStringSet("observaciones", observationsSet);
    editor.apply();
}
```
&nbsp;
&nbsp;
<h3 align="justify">Enviar observaciones entre pantallas</h3>
    <p align="justify">Este método se utiliza para abrir la actividad ListaActivity y pasar la lista de observaciones como un extra del intent. Primero, se crea un nuevo intent con el contexto actual (MainActivity) y la clase de la actividad a la que se quiere navegar (ListaActivity). Luego, se agrega la lista de observaciones como un extra del intent utilizando el método putStringArrayListExtra(). Finalmente, se inicia la actividad utilizando el método startActivity().</p>

```sh
public void abrirlista() {
    // Crea un intent para abrir la actividad ListaActivity
    intent = new Intent(this, ListaActivity.class);
    // Pasa la lista de observaciones como un extra del intent
    intent.putStringArrayListExtra("observaciones", observaciones);
    // Inicia la actividad de la lista de observaciones
    startActivity(intent);
}
```
&nbsp;
&nbsp;
<h2 align="justify">ListaActivity</h2>
    <h3 align="justify">Cargar Observaciones</h3>
    <p align="justify">Este método se utiliza para cargar las observaciones almacenadas en SharedPreferences y mostrarlas en la lista de observaciones. Primero, se obtiene el conjunto de observaciones almacenadas desde SharedPreferences. Luego, se agregan estas observaciones al ArrayList observaciones y se notifica al adaptador que los datos han cambiado para que la lista se actualice con las nuevas observaciones.</p>

```sh
public void cargarobservaciones() {
    preferencias = getSharedPreferences("observaciones", MODE_PRIVATE);
    Set<String> observationsSet = preferencias.getStringSet("observaciones", new HashSet<>());

    // Agrega las observaciones cargadas a la lista
    observaciones.addAll(observationsSet);
    adapter.notifyDataSetChanged();
}
```
&nbsp;
<h3 align="justify">Borrar Observación</h3>
    <p align="justify">En este método getView() del adaptador de la lista (ArrayAdapter), se establece un OnClickListener para el botón de la papelera (papelera). Cuando se hace clic en este botón, se elimina la observación correspondiente a la posición actual de la lista (position) utilizando el método remove() del ArrayList observaciones. Luego se notifica al adaptador (adapter) que los datos han cambiado llamando a adapter.notifyDataSetChanged(). Después de eso, se llama al método actualizarobservaciones() para actualizar el texto que muestra la cantidad total de observaciones y finalmente se actualizan las preferencias compartidas utilizando actualizarpreferencias() para reflejar la lista actualizada de observaciones.</p>

```sh
papelera.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        observaciones.remove(position); // Elimina la observación de la lista
                        adapter.notifyDataSetChanged(); // Notifica al adaptador que los datos han cambiado
                        actualizarObservaciones(); // Actualiza el total de observaciones
                        actualizarPreferencias(); // Actualiza las preferencias compartidas
                    }
```
&nbsp;

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

