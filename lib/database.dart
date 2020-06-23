import 'dart:math';
class Scene {
  String scene;
  String category;

  Scene(this.scene,this.category);
}

class SceneData {

  List<Scene> queBank = [
	Scene("Listen to only Christmas music for the rest of your life", "music" ),
	Scene("Make out with a stalker that has threatened your life, for 30 minutes","romance" ),
	Scene("Only be able to eat/drink protien shakes for the rest of your life","diet" ),
	Scene("Never be able to use any Google products ever again", "internet" ),
	Scene("Not have killed someone but have everyone think you did", "crime" ),
	Scene("Have all limbs surgically removed", "surgery" ),
	Scene("Get severe hiccups every 15 minutes", "annoying" ),
	Scene("Be buried alive with a blowtorch & man eating ants", "death" ),
	Scene("Have a deep itch that takes more than 20 scratches that show up every minute", "annoying" ),
	Scene("Need permission before being able to do absolutely anything", "annoying" ),
	Scene("Know the exact place & time of your death", "death" ),
	Scene("Never be able to wear socks and shoes ever again", "pain" ),
	Scene("Jump from a 1 story roof & land onto scattered legos barefoot", "pain" ),
	Scene("Pee your pants once a week at a random time", "annoying" ),
	Scene("Work 4 days a week but work 20 hour days", "annoying" ),
	Scene("Have absolutely no one you have met or will meet like or respect you", "pain" ),
	Scene("Bare knuckle fight a pissed off Mike Tyson in his prime", "pain" ),
	Scene("Only be able to use the internet 20 minutes a day", "internet" ),
	Scene("Have to pay the government a tax for every word you speak", "annoying" ),
	Scene("Have to eat a very moldy meal once a week", "diet" ),
	Scene("Lick the seat of every porta potty at Cochella", "diet" ),
	Scene("Intentionally break a glass bottle on your own head not covered by insurance", "pain" ),
	Scene("Erase every computer from history", "internet" ),
	Scene("Have to pay EVERYTHING in nothing but pennies for the rest of your life", "annoying" ),
	Scene("Get kicked in the genitalia everytime you use a noun", "pain" ),
	Scene("Gain super-human sense of smell, but only for horrible vomit enducing smells", "gross" ),
	Scene("Have ANY teeth you have fall out if you don't whistle for at least 1 out of evey 4 hours", "annoying" ),
	Scene("Be 1/100 humans to survive a major catestrophic event", "pain" ),
	Scene("Not able remember anything new from this point on & have your memory reset every 6 hours", "pain" ),
	Scene("Volunteer for a pointless space mission that has a 25% chance of returning to Earth", "death" ),
	Scene("Have something installed into your eyes that permanently show advertisments that block 80% of your vision", "annoying" ),
	Scene("Be limited to communicate one word a minute", "annoying" ),
	Scene("Have your total bank balances taken away from you every 24 hours", "annoying" ),
	Scene("Replace every cat & dog on Earth with a brain eating zombie", "death" ),
	Scene("Have everything you consume with water be replaced with dirty bath water", "diet" ),
	Scene("Jam a tooth pick into your big toe nail & kick the wall as hard as you can", "pain" ),
	Scene("Hear all voices & sounds at an annoying nails-on-chalkboard high pitch", "pain" ),
	Scene("Have a childhood bully embarrassingly come out of nowhere & pants you anytime you try to make a good impression", "annoying" ),
	Scene("Have all the favorite parts of songs you like be replaced with the Amber Alert noise, & you forget it will happen every time", "music" ),
	Scene("Have to lick a persons face every time they say a sentence to you", "gross" ),
	Scene("Have to drink nothing but earwax whenever you get thirsty", "gross" ),
	Scene("Have to step on a set bear trap until it slams shut on your leg every 9 months ", "pain" ),
	Scene("Be stuck on a space station alone with no communication but have lifetime supply of canned beans & water, with 100% certainty of rescue, but not sure if it will be in 1 hour or 25 years", "death" ),
	Scene("Have to rip out all of your hair & every finger & toe nail once a year with no anesthetics ", "pain" ),
	Scene("Always feel like you're about to sneeze", "annoying" )
];

int queNum = Random().nextInt(44);

void getnum(){
  if (queNum >= 43) {
    queNum = 0;
  }
  else {
    queNum = queNum + 1;
    }
  }

List getCaterogy(){
  String temp1 =  queBank[queNum].category;
  var temp = queBank.where((element) => queBank[queNum].category == temp1 );

  int scene2 = Random().nextInt(temp.length);
  String scene1 =  queBank[queNum].scene;
  String scene3 = queBank[scene2].scene;

  return [scene1, scene3];
}

}
