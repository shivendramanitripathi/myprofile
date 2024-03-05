class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Getting started with Flutter Development',
    organization: 'Coursera',
    date: 'AUG 2021',
    skills: 'Flutter . Dart',
    credential: '',
  ),
  CertificateModel(
    name: 'Flutter Essential Training: Build for Multiple Platforms',
    organization: 'LinkedIn',
    date: 'Jan 2022',
    skills: 'Flutter . iOS Development . Android Development',
    credential: '',
  ),
  CertificateModel(
    name: 'Complete Dart Learning',
    organization: 'Udemy',
    date: 'Jan 2022',
    skills: 'Flutter . Dart . Programming',
    credential: '',
  ),
  CertificateModel(
    name: 'Flutter REST Movie App',
    organization: 'Udemy',
    date: 'AUG 2021',
    skills: 'Flutter . Rest API\'s . Cloud',
    credential: '',
  ),
  CertificateModel(
    name: 'Modularizing and Organizing Flutter Code',
    organization: 'LinkedIn',
    date: 'JUL 2023',
    skills: 'Flutter . Clean Architecture',
    credential: '',
  ),
  CertificateModel(
    name: 'Powering Your App with Live Web Data',
    organization: 'LinkedIn',
    date: 'JUL 2023',
    skills: 'Flutter . Dart . Firebase . API\'s',
    credential: '',
  ),
  CertificateModel(
    name: 'Firebase Cloud Firestore',
    organization: 'LinkedIn',
    date: 'JUL 2023',
    skills: 'Flutter . Dart . Firebase . FireStore',
    credential: '',
  ),
  CertificateModel(
    name: 'Android App Security',
    organization: 'LinkedIn',
    date: 'March 2023',
    skills: 'Pentesting . Android App',
    credential: '',
  ),
  CertificateModel(
    name: 'Foundations of Cybersecurity',
    organization: 'Grow with Google on Coursera',
    date: 'JUL 2020',
    skills: 'Ethical Hacking . Linux . Cyber Security ',
    credential: '',
  ),
  CertificateModel(
    name: 'HTML, CSS, and Javascript for Web Developers',
    organization: 'JUL Coursera',
    date: 'JUL 2020',
    skills: 'HTML . CSS . JS . Web Development',
    credential: '',
  ),
  CertificateModel(
    name: 'Network Defense Essentials (NDE)',
    organization: 'EC-Council',
    date: 'JUL 2020',
    skills: 'Cyber Security . Networking ',
    credential: '',
  ),
];
