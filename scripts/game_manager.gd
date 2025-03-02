extends Node2D

var rng = RandomNumberGenerator.new()
var last_message_is_help_message = false
var ready_for_input = true
var can_move = true


# Encounter C1
var encounterC1_part1_option1 = Option.new("Get started", "You venture inland, pausing occasionally to sketch out the nearby topology and make note of any interesting geological features", 1)
var encounterC1_part1 = EncounterPart.new("It is a clear day and sunny day as you disembark from the Endurance having traveled from Norway to Svalbard in a short five days.  The Store Norske Spitsbergen Kulkompani (SNSK) has hired you to survey Spitsbergen, the largest island of the Svalbard Archipelago.  The SNSK plans to expand its mining operations after its recent acquisition of the American Arctic Coal Company", [encounterC1_part1_option1])

var encounterC1_part2_option1 = Option.new("Make camp for the night", "You find a shady spot beneath a rocky outcropping.  At this time of year, the sun doesn't set in Svalbard, so you take stock of your supplies and prepare to sleep under the midnight sun.  You've brought with you food and fuel, enough to last for the whole expedition, so long as things proceed as scheduled.  ")
var encounterC1_part2 = EncounterPart.new("You spend the day taking samples and sketching.  In the mid afternoon, you spot a far off column of smoke.  It could be from another explorer or perhaps a mining camp, but the captain also warned you about reports of bandits", [encounterC1_part2_option1])

var encounterC1 = Encounter.new("C1", [encounterC1_part1, encounterC1_part2])

# Encounter C2
var encounterC2_part1_option1 = Option.new("Take it all in", "You set your heavy bags down and meet the ground. Still a bit out of breath from the hike, you lie back and admire your surroundings. ", 1)
var encounterC2_part1_option2 = Option.new("Keep going, there's much to do", "As you descend the hill, you see a flicker of movement in the corner of your eye. You stop in your tracks as you find an arctic fox staring back at you from twenty paces. ", 7)
var encounterC2_part1 = EncounterPart.new("As you trek up a steep rocky hill, the breathtaking landscape of Spitsbergen opens up all around you.", [encounterC2_part1_option1, encounterC2_part1_option2])

var encounterC2_part2_option1 = Option.new("Look to the North", "A column of smoke catches your attention again. Your eyes follow it down to what looks like a small settlement nestled along the coast. ", 2)
var encounterC2_part2 = EncounterPart.new("", [encounterC2_part2_option1])

var encounterC2_part3_option1 = Option.new("Look to the West", "The western landscape is covered in large adjoining glaciers, occasionally broken up by surrounding mountain peaks. Along the coast, the glaciers seem to split and shed parts of themselves to the sea. ", 3)
var encounterC2_part3 = EncounterPart.new("", [encounterC2_part3_option1])

var encounterC2_part4_option1 = Option.new("Look to the East", "Tall and rocky cliffs extend to the east, where you see large gatherings of feathery seabirds littering the sky.  ", 4)
var encounterC2_part4 = EncounterPart.new("", [encounterC2_part4_option1])

var encounterC2_part5_option1 = Option.new("Look up", "Fluffy clouds roam across the blue sky above you. You watch them shift as the warm sun hits your face, and suddenly, your eyelids begin to droop.. And you feel yourself drifting off to sleep. That is- until you hear a small chitter from behind you. You look over and find an arctic fox rustling through the contents of your bag!  ", 5)
var encounterC2_part5 = EncounterPart.new("", [encounterC2_part5_option1])

var encounterC2_part6_option1 = Option.new("Shoo it away", "As soon as you get up, the fox books it towards the cliffs! You can see one of your rations being carried away in its mouth as it sprints away. Everything else in your bag seems fine, but it seems like your relaxation time is over. ")
var encounterC2_part6_option2 = Option.new("Watch the fox", " You watch the fox intently, being careful not to make any sudden movement or sounds. It has a small body covered with a thick and extremely fluffy white and yellowish coat. Its snout is short along with its rounded ears. It suddenly stops rummaging, and meets eyes with yours. Its left eye is an icy blue and it's right is a deep brown. Realizing it has an audience, the fox books it towards the cliffs! You can see one of your rations being carried away in its mouth as it sprints away. It seems like your relaxation time is over. ")
var encounterC2_part6 = EncounterPart.new("", [encounterC2_part6_option1, encounterC2_part6_option2])

var encounterC2_part7_option1 = Option.new("Shoo it away", "As soon as you move, the fox sprints towards the east! Good thing your guard was up, you know those critters can be extremely sly. You continue on your way. ")
var encounterC2_part7_option2 = Option.new("Watch the fox", "You watch the fox intently, being careful not to make any sudden movement or sounds. Its eyes meet with yours, and you see its left eye is an icy blue and it's right is a deep brown. It has a small body covered with a thick and extremely fluffy white and yellowish coat. Its snout is short along with its rounded ears. ", 8)
var encounterC2_part7 = EncounterPart.new("", [encounterC2_part7_option1, encounterC2_part7_option2])

var encounterC2_part8_option1 = Option.new("Give it one of your rations", "As soon as you move your hands toward your bag, the fox sprints towards the east. Well, you at least tried. It seems it's time to continue on your way. ")
var encounterC2_part8_option2 = Option.new("Continue on", "As soon as you start moving again, the fox sprints towards the east. You continue on your way. ")
var encounterC2_part8 = EncounterPart.new("", [encounterC2_part8_option1, encounterC2_part8_option2])

var encounterC2 = Encounter.new("C2", [encounterC2_part1, encounterC2_part2, encounterC2_part3, encounterC2_part4, encounterC2_part5, encounterC2_part6, encounterC2_part7, encounterC2_part8])

# Encounter C3
var encounterC3_part1_option1 = Option.new("Explore the outskirts", "You explore the outskirts of the Longyearbyen looking for signs of resources buried under the ice and stone.  ", 1)
var encounterC3_part1_option2 = Option.new("Venture into to town", " You venture into town and take rest a bit before heading on your way again.  ")
var encounterC3_part1 = EncounterPart.new("You approach Longyearbyen, one of the only permanent settlements in Svalbard.  This area has already been explored pretty thoroughly so it may be good to take some time to rest in town, but the resources here are also some of the richest on the island.  It'd may be good to take another look.  ", [encounterC3_part1_option1, encounterC3_part1_option2])

var encounterC3_part2_option1 = Option.new("Be thorough, catalog all of the outcroppings in the area and take some samples as well", "You spend the next two days making through topological maps of the area and documenting the locations of each coal outcropping you find.  You take soil samples from some of the glacial rivers until you're nearly out of sample bags.  ")
var encounterC3_part2_option2 = Option.new("Be quick, Splitsbergen is a large place and the SNSK probably already has good data on this area.  ", "You make some quick sketches of this area's topology to compare against the SNSK's data later.  ")
var encounterC3_part2 = EncounterPart.new("You come across an outcropping of coal in the hills near Longyearbyen.  There may be more outcroppings nearby to indicate a rich vein.  You could spend some time to sketch especially detailed topology of this area, but it will take some time", [encounterC3_part2_option1, encounterC3_part2_option2])

var encounterC3 = Encounter.new("C3", [encounterC3_part1, encounterC3_part2])

# Encounter C4
var encounterC4_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterC4_part1 = EncounterPart.new("test prompt 3", [encounterC4_part1_option1])

var encounterC4_part2_option1 = Option.new("test action 5", "test result 5")
var encounterC4_part2_option2 = Option.new("test action 6", "test result 6")
var encounterC4_part2 = EncounterPart.new("test prompt 4", [encounterC4_part2_option1, encounterC4_part2_option2])

var encounterC4 = Encounter.new("C4", [encounterC4_part1, encounterC4_part2])

# Encounter C5
var encounterC5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterC5_part1 = EncounterPart.new("test prompt 3", [encounterC5_part1_option1])

var encounterC5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterC5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterC5_part2 = EncounterPart.new("test prompt 4", [encounterC5_part2_option1, encounterC5_part2_option2])

var encounterC5 = Encounter.new("C5", [encounterC5_part1, encounterC5_part2])

# Encounter C6
var encounterC6_part1_option1 = Option.new("Search for walruses down the coast", "You look for a path down the glacier to the coast, carefully making your way across the icy crevices until you reach a less steep portion of the coastal cliffs.  You make your way down the rocky path until you reach the frigid waters.", 1)
var encounterC6_part1_option2 = Option.new("Stick to highlands - whatever animals or resources might be down the coast aren't worth risking your life", "You continue along the highlands, avoiding the glacial crevices.  You don't find any animals")
var encounterC6_part1 = EncounterPart.new("The glaciers of northern Splitsberg are breathtaking with cascading shades of blue and turqoise.  The rocky cliffsides cast dramatic shadows over the glacial fissures.  The path down to the coast is a bit treacherous, but you may be able to find a pod of walruses resting on ice flows below.  ", [encounterC6_part1_option1, encounterC6_part1_option2])

var encounterC6_part2_option1 = Option.new("Swim out to the ice flows to pet a walrus", "Against your better judgement, you leap into the frigid waters and try to swim out to the walruses.  

This goes quite poorly.  

In the icy water, your body quickly begins to shut down and you lose consciousness.  ", -1, true)
var encounterC6_part2_option2 = Option.new("Admire the walruses from a distance", "You spend some time resting and drawing sketches of the glacier and walruses.  As you're preparing for the climb back up the glacier, a family of humpback whales breach amongst the ice flows.  ")
var encounterC6_part2 = EncounterPart.new("After considerable effort, you've reached the waters below the glacier.  After a bit more searching, you find a large pod of over a hundred walruses lounging on the rocky shore and the ice flows", [encounterC6_part2_option1, encounterC6_part2_option2])

var encounterC6 = Encounter.new("C6", [encounterC6_part1, encounterC6_part2])


# Encounter A4
var encounterA4_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterA4_part1 = EncounterPart.new("test prompt 3", [encounterA4_part1_option1])

var encounterA4_part2_option1 = Option.new("test action 5", "test result 5")
var encounterA4_part2_option2 = Option.new("test action 6", "test result 6")
var encounterA4_part2 = EncounterPart.new("test prompt 4", [encounterA4_part2_option1, encounterA4_part2_option2])

var encounterA4 = Encounter.new("A4", [encounterA4_part1, encounterA4_part2])

# Encounter A5
var encounterA5_part1_option1 = Option.new("Setup your tent", "You set your tent up immediately not waiting for the snow to start", 1)
var encounterA5_part1_option2 = Option.new("Search for a cave to shelter in", "You trek up into the hills in search of a cave or an alcove to take shelter from the snow", 2)
var encounterA5_part1 = EncounterPart.new("As you venture out towards the northwest reaches of Splitsbergen, the weather suddenly takes a turn for the worse.  Heavy storm clouds approach from the south and soon, the whole peninsula will have a fresh coat of snow.", [encounterA5_part1_option1, encounterA5_part1_option2])

var encounterA5_part2_option1 = Option.new("Ride out the storm inside the tent", "The snow continues piling up, but you remain warm and comfy inside your tent as you begin to nod off", 3)
var encounterA5_part2_option2 = Option.new("Dig through the snow to check outside", "You spend some time to dig a trench through the newly fallen snow until you reach the surface.  You find that the snow has nearly stopped and you should be good to venture out tomorrow morning.  ")
var encounterA5_part2 = EncounterPart.new("As the snow begins, you hunker down in your tent.  Hours pass and snow begins to form a large drift against the side of your tent, blocking your vision", [encounterA5_part2_option1, encounterA5_part2_option2])

var encounterA5_part3_option1 = Option.new("Setup your tent inside the cave", "You set your tent up inside the cave as the snow begins in earnest.  By the time your setup, there's several inches of fresh powder.  You ride out the storm in modest comfort and head out again in the morning.  ")
var encounterA5_part3 = EncounterPart.new("You find a shallow cave to take shelter in.  The cave won't protect you entirely, but it will atleast provide some cover from the wind and snow", [encounterA5_part3_option1])

var encounterA5_part4_option1 = Option.new("Dig a tunnel through the snow", "You quickly dig a tunnel through the snow as your headeache grows.  You manage to make it to the surface in time to find that the snow has stopped.  

That was close, a little longer and may have suffocated in your tent.  

You rest until morning and prepare to head out once more.  ")
var encounterA5_part4_option2 = Option.new("Rest until the storm passes", "You lay back down on your sleeping bag, hoping you'll feel better in the morning.  

A short time later, your consciousness fades as you succumb to carbon monoxide poisoning.", -1, true)
var encounterA5_part4 = EncounterPart.new("You awake with a headache, slight nausea and strained breathering.  The snow has piled up around your tent so no light permeates insides.  ", [encounterA5_part4_option1, encounterA5_part4_option2])


var encounterA5 = Encounter.new("A5", [encounterA5_part1, encounterA5_part2, encounterA5_part3, encounterA5_part4])

# Encounter B2
var encounterB2_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB2_part1 = EncounterPart.new("test prompt 3", [encounterB2_part1_option1])

var encounterB2_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB2_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB2_part2 = EncounterPart.new("test prompt 4", [encounterB2_part2_option1, encounterB2_part2_option2])

var encounterB2 = Encounter.new("B2", [encounterB2_part1, encounterB2_part2])

# Encounter B3
var encounterB3_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB3_part1 = EncounterPart.new("test prompt 3", [encounterB3_part1_option1])

var encounterB3_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB3_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB3_part2 = EncounterPart.new("test prompt 4", [encounterB3_part2_option1, encounterB3_part2_option2])

var encounterB3 = Encounter.new("B3", [encounterB3_part1, encounterB3_part2])

# Encounter B4
var encounterB4_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB4_part1 = EncounterPart.new("test prompt 3", [encounterB4_part1_option1])

var encounterB4_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB4_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB4_part2 = EncounterPart.new("test prompt 4", [encounterB4_part2_option1, encounterB4_part2_option2])

var encounterB4 = Encounter.new("B4", [encounterB4_part1, encounterB4_part2])

# Encounter B5
var encounterB5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB5_part1 = EncounterPart.new("test prompt 3", [encounterB5_part1_option1])

var encounterB5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB5_part2 = EncounterPart.new("test prompt 4", [encounterB5_part2_option1, encounterB5_part2_option2])

var encounterB5 = Encounter.new("B5", [encounterB5_part1, encounterB5_part2])

# Encounter B6
var encounterB6_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterB6_part1 = EncounterPart.new("test prompt 3", [encounterB6_part1_option1])

var encounterB6_part2_option1 = Option.new("test action 5", "test result 5")
var encounterB6_part2_option2 = Option.new("test action 6", "test result 6")
var encounterB6_part2 = EncounterPart.new("test prompt 4", [encounterB6_part2_option1, encounterB6_part2_option2])

var encounterB6 = Encounter.new("B6", [encounterB6_part1, encounterB6_part2])

# Encounter D2
var encounterD2_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterD2_part1 = EncounterPart.new("test prompt 3", [encounterD2_part1_option1])

var encounterD2_part2_option1 = Option.new("test action 5", "test result 5")
var encounterD2_part2_option2 = Option.new("test action 6", "test result 6")
var encounterD2_part2 = EncounterPart.new("test prompt 4", [encounterD2_part2_option1, encounterD2_part2_option2])

var encounterD2 = Encounter.new("D2", [encounterD2_part1, encounterD2_part2])

# Encounter D3
var encounterD3_part1_option1 = Option.new("Examine the wooden poles more closely", "You make your way onto the ice and out towards the wooden poles.  ", 1)
var encounterD3_part1_option2 = Option.new("Keep off the ice", "You continue across te coastal valley and focus on your cartography")
var encounterD3_part1 = EncounterPart.new("As you cut across a coastal valley, you see large wooden poles peeking out the coastal ice.  The ice is solid, shifting only slightly in the afternoon tide.", [encounterD3_part1_option1, encounterD3_part1_option2])

var encounterD3_part2_option1 = Option.new("Head back to shore", "You leave the shipwreck behind, pondering the fates of those passeners suddenly thrust into Splitsbergen winter. ")
var encounterD3_part2 = EncounterPart.new("The wooden poles are in fact three wooden ship masts.  Bits of frayed sail still clings to the masts, flappin lazily in the wind.  
The ice is nearly crystal clear, and you can see the partially crushed hull of a ship below.  
The ice around can shift quickly and unexpectedly, especially during a winter storm.  
It's likely the ship's passengers survived the wreck, but whether they would have made it back to civilization is less clear.  ", [encounterD3_part2_option1])

var encounterD3 = Encounter.new("D3", [encounterD3_part1, encounterD3_part2])

# Encounter D4
var encounterD4_part1_option1 = Option.new("Venture over the peaks", "You methodically make your up the mountain ridge until you've crested the ridge.  From up this high, you have a clear view of the regions topology.  You don't spot any new mineral outcrops, but the views from this high are breathtaking.  
You take a bit to take in the views as you touch up your cartography drawings.  ")
var encounterD4_part1_option2 = Option.new("Venture through the canyons", "", 1)
var encounterD4_part1 = EncounterPart.new("You've finished your work for the cartograpy of this area, but to continue on, you'll have make your way through the mountains.  ", [encounterD4_part1_option1, encounterD4_part1_option2])

var encounterD4_part2_option1 = Option.new("Turn back", "You return the way you came.  ", 0)
var encounterD4_part2_option2 = Option.new("Continue through the canyons", "You decide to continue through the canyons.  You trudge on through the deep snow as the path begins to narrow.  ", 2)
var encounterD4_part2 = EncounterPart.new("You make your way throuh the twisting canyons until you come upon an old campire built in an stone alcove protected from the wind.  You don't see anyone nearby, but the campfire looks like it was put out recently.  ", [encounterD4_part2_option1, encounterD4_part2_option2])

var encounterD4_part3_option1 = Option.new("Turn back", "You return the way you came.  ", 0)
var encounterD4_part3_option2 = Option.new("Venture into the frozen cave", "You make your way into the dark cave, ascending slightly towards the distant light source.  You begin to pull yourself up a small ledge when your boot slips on slick rock.  

You tumble backward with a yelp and land on your back.  

As you re-orient yourself, you are suddenly keenly aware of a deep, ragged panting noise coming from ahead in the cave.
", 3)
var encounterD4_part3 = EncounterPart.new("The canyon terminantes in a cave with steep cliffs on both sides.  The cave is large enough to walk through and you can see a distant shimmer of light at the far end.  To your left, half-submerged in the snow, an unrecognizeable carcass lies half eaten.  A few scattered bones lay near the cave entrance.  ", [encounterD4_part3_option1, encounterD4_part3_option2])

var encounterD4_part4_option1 = Option.new("Make a dash for the light at the end of the cave", 
"It's too late for that, the polar bear is upon you in an instant.  

You become part of the circle of life", -1, true, "polar_bear")
var encounterD4_part4_option2 = Option.new("Retreat back the way you came", 
"It's too late for that, the polar bear is upon you in an instant.  

You become part of the circle of life", -1, true, "polar_bear")
var encounterD4_part4_option3 = Option.new("Try to hide", 
"It's too late for that, the polar bear is upon you in an instant.  

You become part of the circle of life", -1, true, "polar_bear")
var encounterD4_part4_option4 = Option.new("Try to fight",
"Yeah, sure, good luck with that.  

One thousand pounds of artic fury crashes into you.  An adult male polar bear, feeling particularly cranky after being awoken from its nap, overpowers you an instant.  

You were, in fact, not built different.  ", -1, true, "polar_bear")
var encounterD4_part4 = EncounterPart.new("The ragged breathing nears and you hear a deep growl.  You have a only a moment to consider your options.  ", [encounterD4_part4_option1, encounterD4_part4_option2, encounterD4_part4_option3, encounterD4_part4_option4])

var encounterD4 = Encounter.new("D4", [encounterD4_part1, encounterD4_part2, encounterD4_part3, encounterD4_part4])

# Encounter D5
var encounterD5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterD5_part1 = EncounterPart.new("test prompt 3", [encounterD5_part1_option1])

var encounterD5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterD5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterD5_part2 = EncounterPart.new("test prompt 4", [encounterD5_part2_option1, encounterD5_part2_option2])

var encounterD5 = Encounter.new("D5", [encounterD5_part1, encounterD5_part2])

# Encounter D6
var encounterD6_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterD6_part1 = EncounterPart.new("test prompt 3", [encounterD6_part1_option1])

var encounterD6_part2_option1 = Option.new("test action 5", "test result 5")
var encounterD6_part2_option2 = Option.new("test action 6", "test result 6")
var encounterD6_part2 = EncounterPart.new("test prompt 4", [encounterD6_part2_option1, encounterD6_part2_option2])

var encounterD6 = Encounter.new("D6", [encounterD6_part1, encounterD6_part2])

# Encounter E4
var encounterE4_part1_option1 = Option.new("Investiate the balloon", "You approach the balloon and examine the area", 1)
var encounterE4_part1_option2 = Option.new("Move on, you have work to do", "You leave the balloon behind without giving it another thought")
var encounterE4_part1 = EncounterPart.new("You spot a strange white shape silloetted against the rocks aways off.  Confident that it is too large to be a polar bear, you decide to take a closer look and discover a balloon attached to a large basket.  ", [encounterE4_part1_option1, encounterE4_part1_option2])

var encounterE4_part2_option1 = Option.new("Investiate the journal", "Contained within the journal is the account of one Salomon August Andrée and his compatriots Knut Frænkel and Nils Strindberg as they attempted to sail their newly manufacted hydrogen balloon, the Örnen, from Svalbard over the geographic north pole to reach either Canada or Russia.  

From the looks of it, their expedition didn't go very well.  
")
var encounterE4_part2_option2 = Option.new("Move on, you shouldn't get distracted", "test result 6")
var encounterE4_part2 = EncounterPart.new("The baloon shows considerable wear and tear indicating that it has been exposed to the elements for quite awhile.  Within the basket, you find a few empty bags and a tathered journal, but there is no sign of burner or any fuel.  ", [encounterE4_part2_option1, encounterE4_part2_option2])

var encounterE4 = Encounter.new("E4", [encounterE4_part1, encounterE4_part2])

# Encounter E5
var encounterE5_part1_option1 = Option.new("test action 4", "test result 4", 1)
var encounterE5_part1 = EncounterPart.new("test prompt 3", [encounterE5_part1_option1])

var encounterE5_part2_option1 = Option.new("test action 5", "test result 5")
var encounterE5_part2_option2 = Option.new("test action 6", "test result 6")
var encounterE5_part2 = EncounterPart.new("test prompt 4", [encounterE5_part2_option1, encounterE5_part2_option2])

var encounterE5 = Encounter.new("E5", [encounterE5_part1, encounterE5_part2])


var encounters = [encounterC1, encounterC2, encounterC3, encounterC4, encounterC5, encounterC6,
encounterA4, encounterA5, encounterB2, encounterB3, encounterB4, encounterB5, encounterB6,
encounterD2, encounterD3, encounterD4, encounterD5, encounterD6, encounterE4, encounterE5]
var current_encounter = encounters[0]

var letter_to_number_dict = {
	"A": 1,
	"B": 2,
	"C": 3,
	"D": 4,
	"E": 5,
	"F": 6,
	
	1: "A",
	2: "B",
	3: "C",
	4: "D",
	5: "E",
	6: "F"
}

# Vector2i(col, row)
var valid_positions = [
		 "B6","C6","D6",
	"A5","B5","C5","D5","E5",
	"A4","B4","C4","D4","E4",
		 "B3","C3","D3",
		 "B2","C2","D2",
		 	  "C1",
	]

var initial_pos = "C1"
var player_pos = "C1"


#meowdy

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Valid positons: ", valid_positions)
	current_encounter = get_next_encounter()
	GlobalVars.cause_of_death = ""
	start_encounter()


func get_next_encounter():
	var starting_encounter = encounters[0]
	for encounter in encounters:
		if encounter.map_pos == player_pos:
			starting_encounter = encounter
	return starting_encounter
	
func start_encounter():
	var encounter_part = get_current_encounter_part()
	await add_text_line(encounter_part.prompt)
	
	var index = 1
	var options = encounter_part.options
	for option in options:
		await get_tree().create_timer(0.1).timeout
		await add_text_line(str(index) + ". " + option.action)
		index = index + 1
	
	can_move = false
	
func finish_encounter():
	reveal_map()
	can_move = true
	$RichTextLabel.newline()
	await add_text_line("It's time to move on")
	if are_all_enconters_complete():
		get_tree().change_scene_to_file("res://scenes/VictoryScreen.tscn")
		
	
func reveal_map():
	var map_tile = $Map.find_child(player_pos)
	if map_tile.visible:
		$MapRevealSoundEffect.play()
		map_tile.hide()
	
func is_encounter_complete(encounter):
	return encounter.encounter_part_index == -1
	
func are_all_enconters_complete():
	for encount in encounters:
		if not is_encounter_complete(encount):
			return false
	return true


func update_dot_position():
		var map_tile = $Map.find_child(player_pos)
		print(str(map_tile) + " updated dot position to") 
		$Map/Dot.position = map_tile.position

func _on_line_edit_text_changed(input_text):
	if input_text == "":
		return # Removing this causes infinite recursion
	elif ready_for_input == false:
		$LineEdit.clear()
		return
	
	if can_move:
		if input_text == "w":
			await move_up()
		elif input_text == "s":
			await move_down()
		elif input_text == "a":
			await move_left()
		elif input_text == "d":
			await move_right()
	else:
		var encounter_part = get_current_encounter_part()
		var options = encounter_part.options
		var int_input = int(input_text) - 1
		
		if int_input >= 0 and int_input < options.size():
			var option = encounter_part.options[int_input]
			await add_text_line(option.result)
			print("switching from " + str(current_encounter.encounter_part_index) + " to " + str(option.next_encounter_part_index))
			current_encounter.encounter_part_index = option.next_encounter_part_index
			last_message_is_help_message = false
			if option.results_in_death == true:
				await get_tree().create_timer(3).timeout
				GlobalVars.cause_of_death = option.cause_of_death
				get_tree().change_scene_to_file("res://scenes/death_screen.tscn")
				return
			elif current_encounter.encounter_part_index != -1: 
				await get_tree().create_timer(1).timeout
				await start_encounter()
		elif last_message_is_help_message == false:
			await add_text_line("Enter a number between 1 and " + str(options.size()))
			last_message_is_help_message = true
		
	$LineEdit.clear()
	
	if is_encounter_complete(current_encounter):
		finish_encounter()
	
func add_text_line(text_line):
	ready_for_input = false
	$TypingSoundEffect.play()
	$RichTextLabel.newline()
	for letter in text_line:
		$RichTextLabel.add_text(letter)
		scroll_text_to_bottom()
		var wait_time = rng.randf_range(0.001, 0.005)
		await get_tree().create_timer(wait_time).timeout
	scroll_text_to_bottom()
	$TypingSoundEffect.stop()
	ready_for_input = true
	

func scroll_text_to_bottom():
	var lineCount = $RichTextLabel.get_line_count()
	$RichTextLabel.scroll_to_line(lineCount)
	
func move_up():
	print("trying to move up from " + str(player_pos))
	await try_move(Vector2i(0, 1), "north")

func move_down():
	print("trying to move down from " + str(player_pos))
	await try_move(Vector2i(0, -1), "south")

func move_left():
	print("trying to move left from " + str(player_pos))
	await try_move(Vector2i(-1, 0), "west")
	
func move_right():
	print("trying to move right from " + str(player_pos))
	await try_move(Vector2i(1, 0), "east")

	
func try_move(pos_change, move_dir):
	var old_pos = player_pos
	var pos_vector = position_name_to_vector(player_pos)
	var new_pos = pos_vector + pos_change
	var new_pos_name = position_vector_to_name(new_pos)
	if is_position_valid(new_pos_name):
		player_pos = new_pos_name
		print("Moving from", old_pos, " to ", player_pos)
		await add_text_line("Moving " + move_dir)
		update_dot_position()
		await get_tree().create_timer(1).timeout
		current_encounter = get_next_encounter()
		if !is_encounter_complete(current_encounter):
			await start_encounter()
			can_move = false
			print("hello")
		else:
			print(current_encounter.map_pos)
	else:
		await add_text_line("Cannot move " + move_dir)
		print("Cannot move " + move_dir + " to ", new_pos_name)
	
func is_position_valid(pos):
	return valid_positions.has(pos)
	
func position_name_to_vector(pos_name): 
	var col = letter_to_number_dict[pos_name[0]]
	var row = int(pos_name[1])
	var result = Vector2i(col, row)
	print("Converted " + str(pos_name) + " to " + str(result))
	return result
	
func position_vector_to_name(pos_vector: Vector2i):
	if letter_to_number_dict.has(pos_vector.x) and letter_to_number_dict.has(pos_vector.y):
		var col = letter_to_number_dict[pos_vector.x]
		var row = str(pos_vector.y)
		var result = col + row
		print("Converted " + str(pos_vector) + " to " + str(result))
		return result
	else:
		#returning non valid map position
		return ":(" 

func get_current_encounter_part():
	var encounter_part_index = current_encounter.encounter_part_index
	var encounter_part = current_encounter.encounter_parts[encounter_part_index]
	return encounter_part
	
func clear_text():
	$RichTextLabel.clear()
	
	
