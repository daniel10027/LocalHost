class SliderModel {

  String imagePath;
  String title;
  String desc;

  SliderModel(
    {
      this.imagePath,
      this.title,
      this.desc,

    }
  );

  void setImageAssetPath(String getImagepath){
    imagePath = getImagepath;

  }


  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

 

  String getImageAssetPath(){
    return imagePath;
  }
   String getTitle(){
    return title;
  }

  String getDesc(){
    return desc ;
  }



}

List<SliderModel> getSlides() {

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel  = new SliderModel();

  //model 0

  sliderModel.setImageAssetPath("assets/images/onboard/second.png");
  sliderModel.setTitle("");
  sliderModel.setDesc("");
  slides.add(sliderModel);
  sliderModel = new SliderModel();

  //model 1 
  
  sliderModel.setImageAssetPath("assets/images/onboard/l3.png");
  sliderModel.setTitle("Vous cherchez un logement ?");
  sliderModel.setDesc("Localhost met à votre disposition un large catalogue correspondant à vos besoins en fonction de votre localité.");
  slides.add(sliderModel);
  sliderModel = new SliderModel();

  //model 2 
  sliderModel.setImageAssetPath("assets/images/onboard/l2.png");
  sliderModel.setTitle("Avec votre mobile ?");
  sliderModel.setDesc("Trouvez rapidement un endroit qui vous correspond et en fonction de votre budget. ");
  slides.add(sliderModel);
  sliderModel = new SliderModel();

  //model 3 
  sliderModel.setImageAssetPath("assets/images/onboard/l5.png");
  sliderModel.setTitle("Visite guidée");
  sliderModel.setDesc("Avec notre système de simulation virtuelle visitez les lieux de votre choix sans vous déplacer. ");
  slides.add(sliderModel);
  sliderModel = new SliderModel();

  //model 4 
  sliderModel.setImageAssetPath("assets/images/onboard/l6.png");
  sliderModel.setTitle("Besoin d'aide ?");
  sliderModel.setDesc("Notre equipe est disponible 7J/7 24H/24 pour vous assister et vous conseiller . ");
  slides.add(sliderModel);
  sliderModel = new SliderModel();


  return slides;

}