import 'package:flutter/material.dart';

class AssistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Assistance"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "F A Q",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),
              FAQQuestionTile(
                question: "Est ce que 'nom' est vraimet gratuit ?",
                solution:
                    "OUI! Lovely peut être utilisé complètement gratuitement. Toutes les fonctions importantes sont gratuites. Tu peux acheter des fonctions exclusives pour très peu d'argent ou gagner l'adhésion VIP gratuitement.\nJens • 18 décembre 2015",
              ),
              FAQQuestionTile(
                question: "Comment puis-je supprimer mon profil?",
                solution:
                    "Désolé de voir que vous voulez nous quitter. Peut-on vous faire changer d'avis? Qu'est-ce que vous n'avez pas aimé de Lovely? Nous voulons que nos membres soient 100% satisfait de nos services. Alors parlons-en! :-)\n \nSi vous voulez éliminer votre compte, j'ai quelques points pour vous:\n \nL'élimination de votre compte Lovely n'est pas réversible. Votre data sera éffacé et irrécuperable.\n \nSi vous êtes VIP votre abonnement premium sera terminé avec l'élimination de votre compte. Vous n'aurez rien d'autre à faire et ce ne sera pas renouvelé.\n \nVous pouvez éffacer votre compte dans les parametres sous 'Effacer mon compte.'\n \nJe suis ici pour vous si vous avez besoin d'assistance. J'espère vous revoir ici bientôt sur 'nom'\n \nJarvis • octobre 2023",
              ),
              FAQQuestionTile(
                question:
                    "Est-ce qu'il y a des lignes directrices en ce qui concerne les photos de mon profil?",
                solution:
                    " \n \nPhotos de profil\n \nLes règles pour les photos de profil sont plus strictes que pour les autres photos. La photo de profil se voit beaucoup plus que les autres photos. Par exemple, sur la page d'accueil ou dans les recherches, comme une image de prévisualisation. Il s'agit de votre ''carte de visite'' pour les autres membres.\n \nEn plus des lignes directrices pour les photos dans ton profil, ces règles additionnelles sont d'application pour les photos de profil:\n \ntu dois apparaitre sur ta photo de profil (pas de photo d'enfant)\n \nutilise un portrait de toi de qualité avec une bonne résolution\n \nton visage et tes yeux doivent être clairement visibles\n \npas de photos de parties du corps, comme les yeux, les tatouages ou le haut du corps\n \npas de photos de groupe\n \nune image de qualité suffisamment bonne (pas trop claire ou foncée, taille appropriée)\n \n pas de déformations ou de filtres photo (dessin ou autres)\n \n \nAutres Photos\n \nLes photos dans ton profil doivent être personnelles et donner un aperçu de ta vie (par exemple une photo de toi avec tes amis, avec tes animaux ou enfants)\n \nLes photos déplaisantes et la pornographie sont interdites\n \nTa photo doit respecter la morale publique\n \nLes photos ne doivent pas inclure des adresses e-mail, de numéros de téléphone, de liens ou autres informations qui peuvent permettre d'entrer en contact direct avec toi\n \nLes photos d'enfants sans tuteur clairement visible sont interdites\n \nLes photos marrantes, artistiques, les BDs, les marques, les insignes et les images de ce type ne sont pas les bienvenues\n \nPas de photos de paysages\n \nMoments\n \nLes moments ne sont pas soumises à des règles aussi strictes que les photos de profil dans lesquelles tu dois apparaitre. Donc, tu peux télécharger des photos de ta voiture, ton jardin, tes animaux, tes loisirs, destinations de vacances, des photos des dernières soirées auxquelles tu as assisté, etc.\n \nLes moments sont supprimés automatiquement après un certain temps\n \nNe sont pas autorisées : Les images montrant des adresses e-mail, numéros de téléphone, liens ou autres informations permettant d'entrer directement en contact avec toi\n \nLes photos d'enfants ne sont autorisées que si tu es leur tuteur légal\n \nLes images offensantes et la pornographie sont interdites\n \nTon image ne doit pas porter atteinte à la morale\n \nTu dois être le propriétaire de ton image\n \nNous nous réservons le droit de supprimer les images de mauvaise qualité ou qui ne sont pas dignes d'intérêt.\n \nJaris • Octobre 2023",
              ),
              FAQQuestionTile(
                question:
                    "Pourquoi ai-je reçu un avertissement de l'équipe de support?",
                solution:
                    "\n \nLes profils peuvent êtres signalé à l'équipe de support de Lovely. Tu peux envoyer un rapport comme ça: Profil > Actions > Signaler le profil ou directement dans une conversation par le menu de la barre de titre. Quand nous recevons plusieurs rapports pour un certain membre dans une courte période de temps, nous envoyons un avertissement automatiquement par notre système. Notre équipe de support examinera ce profil et vérifiera que le profil est en accord avec les conditions d'utilisation de Lovely. Si après l'avertissement d'autres membres signalent ce profil, une suppression définitive de ce compte est possible.\n \nQu'est-ce que je peux faire?\n \nSur 'nom', comme dans toutes les communautés, il y a des règles qui doivent être respectées:\n \nLes conditions d'utilisation de Lovely et les lois en application en Allemagne\n \nnos lignes directrices pour les images\n \net généralement le traitement juste et respectueux des autres membres\n \npar exemple: pas d'insultes, de racisme, d'infractions de droits d'auteur, de menaces, de violence, de promotion de drogues, de pornographie, de publicités commerciales, d'harcèlement ou de faux profils.\n \nJarvis • Octobre 2023",
              ),
              FAQQuestionTile(
                question:
                    "J'ai vu un profil qui enfreint les termes d'utilisation.",
                solution:
                    "Qu'est-ce que je dois faire?\n \nDans le profil du membre, choisis l'option Signaler le profil. Dans le formulaire, tu peux sélectionner les raisons pour lesquelles tu soumets le rapport et même ajouter un commentaire. Notre équipe de support examinera ce profil.\n \nJarvis • octobre 2023",
              ),
              FAQQuestionTile(
                question:
                    "Qu'est-ce que je peux faire pour les membres indésirables?",
                solution:
                    "Qu'est-ce que je peux faire pour les membres indésirables?\n \nIl y a deux façons d'éloigner les membres indésirables :\n \n1. Blocage individuel des membres\n \nTu peux bloquer un membre pour l'empêcher de communiquer avec toi de manière définitive. Tu peux le faire en allant sur le profil de ce membre ( voir les options du menu) ou directement dans une conversation dans les options du menu de la barre de titre. Lorsque tu bloques une personne, tu ne reçois plus de messages, de ''j`aime'', de visites de profil ou de nouvelles de cette personne. Le membre bloqué, cependant, peut encore voir ton profil.\n \nTu peux voir une liste de tous les membres que tu as bloqué dans Paramètres > Membres bloqués.\n \n2. Exclure un certain groupe de gens\n \nDans Paramètres > Nouveau contacts dans la section de la Vie Privée tu peux spécifier les personnes qui peuvent te contacter. Les contacts existants sont exclus. Tu peux déterminer, par exemple, que seulement les gens qui correspondent à tes filtres peuvent t'envoyer un nouveau message. Ou encore choisir que seulement les gens qui viennent de ton pays, peuvent communiquer avec toi.\n \nExemple: Tu cherches des hommes qui ont 20-30 ans et viennent des États-Unis (supposant que tu habites à New York). Tu veux que seulement ce groupe de gens puisse t'écrire. Choisis dans ton filtre ''seulement les hommes'', ''20 ans jusqu'à 30 ans'', ''Juste les gens qui correspondent à mon filtre'', et ''Juste des gens de mon pays''.\n \nJarvis • octobre 2023",
              ),
              FAQQuestionTile(
                question: "Comment puis-je annuler mon inscription VIP?",
                solution:
                    "Les abonnements en ligne comme Lovely VIP sont directement gérés par le fournisseur de paiement concerné (Google Play, iTunes, PayPal). Ici, tu peux voir la durée et annuler l'abonnement à tout moment. Tu peux désactiver le renouvellement automatique de ton abonnement VIP jusqu'à 24 heures avant l'expiration de la période contractuelle. Ton abonnement VIP ne sera alors plus renouvelé et expirera à la fin de la période choisie.\n \nImportant: S'il te plaît sache que la suppression de ton compte Lovely est indépendante de la souscription et n'annule pas l'abonnement à Jaume auprès de ton fournisseur de paiement. Cela ne peut être fait manuellement que par toi.\n \nGOOGLE PLAY\n \nTu gères tes paramètres dans Google Wallet. Tu peux trouver des instructions détaillées dans l'aide de Google.\n \nAPPLE APPSTORE\n \nTu gères tes paramètres dans ton compte iTunes. Tu peux trouver des instructions détaillées dans l'aide d'Apple.\n \nPAYPAL\n \nConnecte-toi à ton compte Paypal et dans l'aperçu regarde 'toutes les transactions'. Ouvre la dernière transaction de Lovely et indique tous les détails des paiements récurrents. Ici, tu peux annuler le renouvellement automatique. Tu recevras une confirmation de Paypal.\n \nJarvis • octobre 2023",
              ),
              SizedBox(height: 16),
              Center(
                child: MessageLogoButton(),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class FAQQuestionTile extends StatelessWidget {
  final String question;
  final String solution;

  const FAQQuestionTile({
    Key? key,
    required this.question,
    required this.solution,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  FAQSolutionPage(question: question, solution: solution),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class FAQSolutionPage extends StatelessWidget {
  final String question;
  final String solution;

  const FAQSolutionPage({
    Key? key,
    required this.question,
    required this.solution,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(question),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              solution,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        )),
      ),
    );
  }
}

class MessageLogoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.pink,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GptPage(),
            ),
          );
        },
      ),
    );
  }
}

class GptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Gpt"),
      ),
      body: Container(
        child: Center(
          child: Text("Gpt Page"),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon application',
      home: AssistancePage(),
    );
  }
}
