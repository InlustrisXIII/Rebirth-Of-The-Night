import mods.dropt.Dropt;

  
/* 
Dropt.list("fortune_essence")

  .add(Dropt.rule()
      .matchBlocks(["endreborn:block_essence_ore"])
      .addDrop(Dropt.drop()
          .items([<endreborn:item_end_essence>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "ANY", 1)
          .items([<endreborn:item_end_essence>], Dropt.range(1, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "ANY", 2)
          .items([<endreborn:item_end_essence>], Dropt.range(2, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "ANY", 3)
          .items([<endreborn:item_end_essence>], Dropt.range(2, 3))
      )
		  .replaceStrategy("ADD")
		  .addDrop(Dropt.drop()
			  .selector(Dropt.weight(1),1)
			  .items([<quark:biotite>], Dropt.range(0, 1))
		  )
		  .addDrop(Dropt.drop()
			  .selector(Dropt.weight(100),2)
			  .items([<quark:biotite>], Dropt.range(0, 2))
		  )
		  .addDrop(Dropt.drop()
			  .selector(Dropt.weight(500),3)
			  .items([<quark:biotite>], Dropt.range(1, 2))
		  )	 
  );

Dropt.list("fortune_essence_biotite")

  .add(Dropt.rule()
      .matchBlocks(["endreborn:block_essence_ore"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1),1)
          .items([<quark:biotite>], Dropt.range(0, 1))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100),2)
          .items([<quark:biotite>], Dropt.range(0, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(500),3)
          .items([<quark:biotite>], Dropt.range(1, 2))
      )	  
  );
  

Dropt.list("blood_tainted_gold")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:redstone_ore","undergroundbiomes:igneous_stone_redstone_ore","undergroundbiomes:metamorphic_stone_redstone_ore","undergroundbiomes:sedimentary_stone_redstone_ore"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
          .items([<minecraft:gold_nugget>], Dropt.range(0, 1))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(900),1)
          .items([<minecraft:gold_nugget>], Dropt.range(0, 2))
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(9000),3)
          .items([<minecraft:gold_nugget>], Dropt.range(1, 2))  
      )	  
  );
*/ 

Dropt.list("light_essence")
  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:biome_block"])
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "EXCLUDED", 0)
          .items([<biomesoplenty:biome_essence>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "EXCLUDED", 1)
          .items([<biomesoplenty:biome_essence>], Dropt.range(1, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "EXCLUDED", 2)
          .items([<biomesoplenty:biome_essence>], Dropt.range(1, 3))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "EXCLUDED", 3)
          .items([<biomesoplenty:biome_essence>], Dropt.range(2, 3))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "REQUIRED", 0)
          .items([<biomesoplenty:biome_block>])
      )
  );

Dropt.list("Well_Worth")

  .add(Dropt.rule()
      .matchBlocks(["harvestcraft:well"])
	  .addDrop(Dropt.drop()
		  .items("ALL", [<dungeontactics:steel_ingot>*3,<pyrotech:rock:7>*4,<minecraft:bucket>,<betterwithmods:material:24>])
      )	
  );

Dropt.list("Crate_Job")

  .add(Dropt.rule()
      .matchBlocks(["charm:crate:*"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
		  .items("ALL", [<betterwithmods:material:22>*2,<betterwithmods:material:22>*5])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(2))
       	   .items("ALL", [<betterwithmods:material:22>*1,<betterwithmods:material:22>*2])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(5))
       	  .items("ALL", [<betterwithmods:material:22>*3,<betterwithmods:material:22>*2])
      )
  );  
  
  
Dropt.list("Berry_Good")

  .add(Dropt.rule()
      .matchBlocks(["rustic:wildberry_bush"])
	  .replaceStrategy("REPLACE_ALL_IF_SELECTED")
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "REQUIRED")
           .items([<rustic:wildberry_bush>])
	  )
	  .addDrop(Dropt.drop()
		  .selector(Dropt.weight(30), "EXCLUDED", 0)
		   .items([<minecraft:stick>])
      )		  
      .addDrop(Dropt.drop()
		  .selector(Dropt.weight(15), "EXCLUDED", 0)
		   .items([<minecraft:stick>*2])
      )		  
      .addDrop(Dropt.drop()
		  .selector(Dropt.weight(10), "EXCLUDED", 0)
		   .items([<rustic:wildberries>])
      )		  
      .addDrop(Dropt.drop()
		  .selector(Dropt.weight(1), "EXCLUDED", 0)
		   .items([<rats:little_black_worm>])
      )	
  );

Dropt.list("mud")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:mud"])
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [], "shovel;0;-1")
      )
      .addDrop(Dropt.drop()
	      .selector(Dropt.weight(10))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000)) 
          .items([<biomesoplenty:mudball>])
	  )	  
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(40))
          .items([<biomesoplenty:mudball>*2])
	  )	  
  );

Dropt.list("sludge")

  .add(Dropt.rule()
      .matchBlocks(["mod_lavacow:pileofsludge"])
      .addDrop(Dropt.drop())
  );

Dropt.list("clovers")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:10"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20000)) // drops nothing if selected
      )
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(100)) // lucky clover
       	   .items([<contenttweaker:4leaf_clover>])
      )
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // unlucky clover
       	   .items([<contenttweaker:5leaf_clover>])
      )
  );
/*
Dropt.list("nest_grubs")

  .add(Dropt.rule()
      .matchBlocks(["futuremc:bee_nest"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(200)) // drops nothing if selected
      )
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(80)) // grub
       	   .items([<harvestcraft:grubitem>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(80)) // wax
       	   .items([<harvestcraft:waxcombitem>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(80)) // grub and wax
       	   .items([<harvestcraft:grubitem>, <harvestcraft:waxcombitem>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(50)) // alright double prizes
       	   .items([<harvestcraft:grubitem>*2])
      )
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(5)) // spoils of war 1
       	   .items([<mod_lavacow:poisonstinger>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1)) // spoils of war 2
       	   .items([<betteranimalsplus:bearhead_1>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // sweetest prize
       	   .items([<aether_legacy:ambrosium_shard>])
      )
  );   
*/
  
Dropt.list("decayed_scaffolding")	

  .add(Dropt.rule()	
      .matchBlocks(["cyclicmagic:block_fragile"])	
      .matchDrops([<cyclicmagic:block_fragile>])	
      .replaceStrategy("REPLACE_ITEMS")	
      .addDrop(Dropt.drop())	
  );

Dropt.list("plants_basic")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:*","biomesoplenty:plant_1:*"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(30))
          .items([<pyrotech:material:12>])
      )
  );
 
Dropt.list("plants_basic_dry")

  .add(Dropt.rule()
      .matchBiomes(["minecraft:desert","minecraft:desert_hills","minecraft:mutated_desert","minecraft:savanna","minecraft:savanna_rock","minecraft:mesa","minecraft:mesa_rock","minecraft:mesa_clear_rock","biomesoplenty:steppe"])
      .matchBlocks(["biomesoplenty:plant_0:*","biomesoplenty:plant_1:*"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(30))
          .items([<pyrotech:material:12>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
          .items([<pyrotech:material:13>])
      )
  );
  
Dropt.list("plants_basic_dead")

  .add(Dropt.rule()
      .matchBiomes(["biomesoplenty:wasteland","biomesoplenty:xeric_shrubland"])
      .matchBlocks(["biomesoplenty:plant_0:*","biomesoplenty:plant_1:*"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
          .items([<pyrotech:material:13>])
      )
  );
 
Dropt.list("plants_custom")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:*","biomesoplenty:plant_1:*","minecraft:tallgrass:1","minecraft:tallgrass:2"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(4200)) // drops nothing if selected
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(15)) // Worm
          .items([<rats:little_black_worm>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(14)) // Bathroom berry
          .items([<betterwithaddons:food_mulberry>])
      )
  );
  
Dropt.list("tallplants_custom")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:double_plant:2"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(2500)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(35)) // Hemp crop
          .items([<betterwithmods:material:2>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(8)) // Strange flower
          .items([<dungeontactics:flower_ailment>])
	  )
  );
  
Dropt.list("slacked_lime")
	.add(Dropt.rule()
	  .matchBiomes(["minecraft:ocean","minecraft:deep_ocean","minecraft:river","minecraft:frozen_ocean","biomesoplenty:coral_reef","biomesoplenty:kelp_forest"])
      .matchBlocks(["minecraft:clay","minecraft:gravel","undergroundbiomes:igneous_gravel:*","undergroundbiomes:sedimentary_gravel:*","undergroundbiomes:metamorphic_gravel:*"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(11000)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1200)) // slaked lime
          .items([<pyrotech:material:8>*4])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(200)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(300)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:1>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:6>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:7>])
	  )	  
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(70)) // nugget
          .items([<minecraft:iron_nugget>])
	  )	  
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60)) // nugget
          .items([<minecraft:gold_nugget>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(50)) // nugget
          .items([<contenttweaker:material_part:1>])
	  )	 
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(40)) // nugget
          .items([<iceandfire:silver_nugget>])
	  )	 
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(5)) // nugget
          .items([<netherex:amethyst_crystal>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(3)) // ???
          .items([<rats:ancient_sawblade>])
	  )	 	
  );
Dropt.list("desert_varnish")

  .add(Dropt.rule()
      .matchBlocks(["pyrotech:limestone"])
	  .addDrop(Dropt.drop()
		  .selector(Dropt.weight(3))
		  .items("ALL", [<minecraft:sandstone>,<minecraft:clay_ball>])
      )
	  .addDrop(Dropt.drop()
		  .selector(Dropt.weight(1))
		  .items("ALL", [<minecraft:sandstone>,<minecraft:clay_ball>*2])
      )	
  );