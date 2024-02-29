<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com%22%3E/">
  <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Almarai:wght@300;400;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="CSS/styles.css">

  <script src="https://kit.fontawesome.com/58f29931b3.js" crossorigin="anonymous"></script>

  <title>Movimientos</title>

</head>


<body class="min-vh-100 d-flex flex-column">
  <script>src = "https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"</script>
  <header class="p-3">
    <a href="index.html" class="text-decoration-none">
      <h1 class="titulo">Mi Chaucherita</h1>
    </a>
    <div class="d-flex">
      <a href="index.html" class="mx-2 d-flex align-items-center text-decoration-none"><i
          class="fa-solid fa-house subtitulo text-white"></i></a>
      <a href="configuracion.html" class="mx-2 d-flex align-items-center text-decoration-none"><i
          class="fa-solid fa-gear subtitulo text-white"></i></a>
    </div>
  </header>

  <main class="container flex-grow-1 d-flex align-items-center justify-content-center align-self-center">
    <div class="card card-80-percent row">
      <h2 class="subtitulo text-center py-3 m-0">Movimientos de Banco</h2>

      <div
        class="card-body border-degraded d-flex justify-content-around col-7 col-sm-4 col-md-3 mx-auto border btn_border">
        <ul class="list-unstyled d-flex justify-content-around m-0">
          <li class="mx-2"><a href="formularioIng.html"><i
                class="fa-solid fa-arrow-up text-success button-account"></i></a></li>
          <li class="mx-2"><a href="formularioEgr.html"><i
                class="fa-solid fa-arrow-down text-danger button-account"></i></a></li>
          <li class="mx-2"><a href="formularioTrans.html"><i
                class="fa-solid fa-arrow-right-arrow-left button-account"></i></a></li>
        </ul>
      </div>

      <br>

      <div class="fecha col-6 col-md-5 mx-auto">
        <p class="col-6 col-md-6 normal">Fecha:</p>
        <input type="month" class="col-8 col-md-6">
      </div>

      <br>

      <div class="d-flex justify-content-center align-items-center p-0">
        <div class="col-10">
          <table class="table-bordered table-hover">
            <thead class="text-header-table main-color-degraded">
              <tr>
                <th class="text-center text-white">Número</th>
                <th data-priority="1" class="text-center text-white">Nombre</th>
                <th data-priority="2" class="text-center text-white">Categoria</th>
                <th data-priority="3" class="text-center text-white">Fecha</th>
                <th data-priority="4" class="text-center text-white">Monto</th>
              </tr>
            </thead>
            <tbody class="text-table">
              <tr>
                <td>1</td>
                <td>Banco1</td>
                <td>Comida</td>
                <td>28/02/2023</td>
                <td>-100</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Banco2</td>
                <td>Entretenimiento</td>
                <td>16/10/2023</td>
                <td>-300</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Banco3</td>
                <td>Trabajo</td>
                <td>09/09/2023</td>
                <td>+1000</td>
              </tr>
              <tr>
                <td>4</td>
                <td>Banco4</td>
                <td>Universidad</td>
                <td>10/09/2023</td>
                <td>-1000</td>
              </tr>
              <tr>
                <td>5</td>
                <td>Banco5</td>
                <td>Regalos</td>
                <td>09/09/2023</td>
                <td>-96</td>
              </tr>
              <tr>
                <td>6</td>
                <td>Banco6</td>
                <td>Salud</td>
                <td>09/09/2023</td>
                <td>-450</td>
              </tr>

            </tbody>

          </table>
        </div>
      </div>

      <div class="d-flex justify-content-center">
        <div class="d-flex flex-column align-items-center p-3 return">
          <a href="index.html"><i class="fa-solid fa-circle-left"></i></a>
          <p class="normal">Regresar</p>
        </div>
      </div>

    </div>

  </main>
</body>
</html>