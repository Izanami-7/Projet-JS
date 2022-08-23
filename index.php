<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="js/script.js"> </script>

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <title>Chat World</title>
</head>

<body>
  
<h1 class="text-center"> Bienvenue </h1>
    <div class="container mt-4">

        <div class="card mx-auto" id="bord" style="max-width:400px">
            <form id="form" name="form" method="post">
                <div class="card-header bg-transparent">
                    <div class="nav justify-content-center p-0 ">
                        <ul class="nav justify-content-center">
                            <li class="nav-item">
                                Pseudo: <input id="pseudo" name="auteur" type="text" value="<?php echo isset($_POST['auteur']) ? htmlspecialchars($_POST['auteur'], ENT_QUOTES) : ''; ?>">
                            </li>
                        </ul>
                    </div>
                </div>

                <div id="discu" class="card-body p-4">
                </div>

                <div class="card-footer bg-white position-absolute w-100 bottom-0 m-0 p-1">
                    <div class="input-group">
                        <input type="text" class="form-control border-0" id="msg" name="message" placeholder="Votre message...">
                        <div class="input-group-text bg-transparent border-0">
                            <button class="btn btn-light text-secondary" type="submit" value="Envoyez"><img src="img/send.svg" /></button>
                            </button>
                        </div>
                    </div>
                </div>
        </div>

        <div class="card mx-auto div-erreur" style="max-width:400px">
            <div class="card-body p-4 div-erreur text-center">
                <span id="erreur"></span>
            </div>
        </div>
        </form>

    </div>

</body>