Bienvenue dans Chat Word !

Chat World est une plateforme, qui permet à plusieurs internautes de communiquer entre eux. Elle a été développée par les étudiants : Mahendear Steven et 
Berretta Baptiste du groupe D de l'IUT Paul Sabatier.

L’objectif général est de développer une application de messagerie instantanée en utilisant l’architecture Ajax et la librairie Jquery s’appuyant toutes deux sur le langage JavaScript. Le client web (i.e. le navigateur) permet aux utilisateurs d’envoyer des messages à travers des requêtes Ajax qui seront traités et stockés dans une base de données MySQL par des scripts PHP. Un message est caractérisé par un identifiant, une estampille horaire, un auteur et un contenu.

Pour tester localement le projet, il vous faudra créer une base de donnée nommé "chat". 
Un .sql est fourni dans le dossier "db" afin de l'importer dans une base de données pour tester la plateforme. Veuillez à bien changer les informations de 
connexion dans la page "connexion.php" en fonction des informations de votre base de données.

Sinon vous pouvez accéder à la plateforme via Internet depuis ce lien : https://chat-world.alwaysdata.net.
Aucune authentification n'est nécessaire.
À votre arrivée, la base de données sera vide.
La différence entre les fichiers que dispose l'hébergeur de site web et le .zip sont est que cette fois-ci la 
page principale se nomme bien "index.php", et les informations de connexion à la base de données sont différentes.

-----------

Règles & Fonctionnalités :

- Vous devez absolument avoir un pseudo afin de discuter.

- Les caractères vides ne sont pas acceptés ni pour le pseudo ni pour un message. Un message d'erreur apparaîtra pour toute anomalie détectée.

- Quand vous saisissez un pseudo, la police sera en rouge jusqu'à que vous sortez de l'input (focusIn/Out). Une fois sortit la police devient 
	verte afin d'indiquer la bonne saisie du pseudo.

- Tant que vous n'envoyez pas de nouveaux messages ou que vous ne rafraîchissait pas la page, les messages des autres utilisateurs s'afficheront sans supprimer les anciens messages.

- Si après une discussion vous quitter le navigateur et vous revenez en envoyant un nouveau message avec le même pseudo, vos anciens messages 
	s'afficheront automatiquement sur la droite afin que le fil de discussion vous soit compréhensible.

- Vous ne pouvez pas faire un saut de ligne en appuyant sur la touche "entrée", cette touche est réservée à l'envoi d'un message. 
	Pour faire un saut de ligne, utiliser plutôt "Shift + Entrée".
