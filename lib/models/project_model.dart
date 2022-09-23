class Project {
  final String? title, description;

  Project({
    this.title,
    this.description,
  });
}

List<Project> projects = [
  Project(
    title: "Github Client Application",
    description:
        "In this project , I use github's oauth apps and github api's for authentication and fetching the starred repositories of a particular account then you can also search any repo with certain word and all the repos with that word fetched instantly.",
  ),
  Project(
    title: "E-commerce UI",
    description:
        "I make this to learn how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter and I build a Sign in, Forgot Password screen with a custom error indicator.",
  ),
  Project(
    title: "Movie Description App - Flutter Responsive UI",
    description:
        "I made this application for just exploring widgets in flutter and how we can differently fetch data from local as well as backend .",
  ),
  Project(
    title: "Spotify Web Clone - Flutter Responsive Design UI",
    description:
        "I clone just a little bit of spotify web and use local data for showing songs and also make it responsive so that you can run it everywhere on your phone, tab, or web. Flutter helps us to run a application in any device with a single codebase .",
  ),
  Project(
    title: "For Learning Firebase - FirebaseAuth App",
    description:
        "Exploring the Firebase features and made a application for authentication just for practice purpose.",
  ),
  Project(
    title: "A Notes App - Firebase(Back-End)",
    description:
        "A application which related with a firebase auth and you can store your notes or docs in the app and you can also CRUD operation with your docs which is reflected in the Firebase .",
  ),
];
