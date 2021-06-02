# _Squid Workshop's_ Autoaim Datapack
This datapack may help minecraft players shoot more accurately with the bow.

- [Abstract](#Abstract)
- [Installation](#Installation)
- [Usage](#Usage)
- [How It Works](#How-It-Works)
- [Project Tree](#Project-Tree)
- [Terms of Use](#Terms-of-Use)
- [More About Squid Workshop](#More-About-Squid-Workshop)

# Abstract


# Installation
- Step 1 Download this repository as a zip and unpack.
- Step 2 Go to minecraft saves directory, usually "C:/Users/youUserName/AppData/Roaming/.minecraft/saves".
- Step 3 Choose the world folder in which you want to install the packs.
- Step 4 Go to .../world/datapacks folder.
- Step 5 Move your "Autoaim-Datapack-Squid-Workshop-1.16.5" folder(not the root folder) into .../world/datapacks folder.
- Step 6 Open Minecraft and open the world.
- Step 7 Type "/reload" command then press enter.
- Step 8 Enjoy

PS: If not working, check whether the datapack is enabled by:

	/datapack list
Enable it by:

	/datapack enable "datapackname"
  
# Usage
## Player
- Get a "bow" that will help you aim:

	  /function app:get/autoaim/bow

- Press F to select different entity types. Press Shift+F to scroll backward.
- Right click and drag. You will be rotated to aim at an _qualified_ target, release the bow at full power to shoot at them.
- Repeat again after you complete shooting.
## Turret
Need update

# How it Works
## Finding the _Qualified_ Target
- The target is within 64m of the shooter. The range is predefined to be less than the maximum reach of bow, as the bow becomes unstable and longer elapsed time diminishes the effectiveness of prediction (please try the Squid Workshop guns!).
- The target is chosen by comparing the "view angles" of aimer->target and target->aimer. The small difference (after flipping the latter due to reversed direction) indicates that the aimer is likely looking at the target!
- The target is not changed until the next drawing of the bow.

## Aiming 
- After the player started charging the bow, aiming is performed for 3 seconds unless the bow is released sooner.
- The aiming considers the position and instataneous motion of the target. It will find an aim angle, in such situation the fully charged arrow will arrive at the predicted position of target after the same specific time, assuming the target is moving at constant motion.
- The instataneous motion of target is calculated from change of position over time, once every two ticks (10Hz) due to caveats of Minecraft's inherent _Motion_ nbt. 
- The aiming will not try indefinitely, if the target is not able to be reached by arrow (i.e. the target is flying away at a speed faster than the arrow), or the calculation uses a specific threashold of computational power.

See [here](https://drive.google.com/file/d/1al8XjiDddp3Yrvy2QDBMl3uDU6zx1Au_/view?usp=sharing) for some more details about this section (Warning: this document is in Chinese and is unpublished).\
Will provide ways to change some of these parameters.

# Project Tree
See [here](https://github.com/Squid-Workshop/MinecraftDatapacksProject/blob/master/CONTRIBUTING.md) for our standard datapack structure and how this structure works.

	 Autoaim-Datapack-Squid-Workshop-1.16.5
	    │  pack.mcmeta
	    │  pack.png
	    │  
	    └─data
		├─app
		│  └─functions
		│      ├─get
		│      │   └─autoaim
		│      │           bow.mcfunction
		│      └─unload
		│              autoaim.mcfunction
		│              
		├─autoaim
		│  ├─functions
		│  │   └─classes  
		│  │       ├─main
		│  │       │       clean.mcfunction
		│  │       │       load.mcfunction
		│  │       │       tick.mcfunction
		│  │       ├─maps
		│  │       │       map_a_*.mcfunction
		│  │       │       map_ag_*.mcfunction
		│  │       │       map_t_*.mcfunction
		│  │       │       map_tg_*.mcfunction
		│  │       ├─player
		│  │       │       aim.mcfunction
		│  │       │       autoshoot_launch.mcfunction
		│  │       │       autoshoot_main.mcfunction
		│  │       │       draw.mcfunction
		│  │       │       get_dpdt.mcfunction
		│  │       │       main.mcfunction
		│  │       │       release.mcfunction
		│  │       │       switch_run.mcfunction
		│  │       │       target.mcfunction
		│  │       │       untarget.mcfunction
		│  │       │       vision.mcfunction
		│  │       │       vision_compare.mcfunction
		│  │       ├─run
		│  │       │       aim3d.mcfunction
		│  │       │       aimloop.mcfunction
		│  │       │       autoshoot_launch.mcfunction
		│  │       │       autoshoot_main.mcfunction
		│  │       │       autoshoot_random.mcfunction
		│  │       │       cat_polar.mcfunction
		│  │       │       cosdeg.mcfunction
		│  │       │       face_dynamic.mcfunction
		│  │       │       get_ang.mcfunction
		│  │       │       get_atan.mcfunction
		│  │       │       get_disp3d.mcfunction
		│  │       │       get_dpdt.mcfunction
		│  │       │       get_tim.mcfunction
		│  │       │       get_v3d.mcfunction
		│  │       │       header.mcfunction
		│  │       │       map_a.mcfunction
		│  │       │       map_ag.mcfunction
		│  │       │       map_t.mcfunction
		│  │       │       mat_tg.mcfunction
		│  │       │       sqrt.mcfunction
		│  │       │       sqrt_operation.mcfunction
		│  │       ├─tools
		│  │       │       arrowspeed.mcfunction
		│  │       │       arrowspeed_reset.mcfunction
		│  │       └─turret
		│  │               aim.mcfunction
		│  │               deploy.mcfunction
		│  │               main.mcfunction
		│  ├─tags
		│  │   └─entity_types
		│  │           living.json 
		│  │           nonliving.json
		│  │
		│  │
		│  │               
		└─minecraft
		    └─tags
			└─functions
				load.json
				tick.json

# Terms of Use
Feel free to play around with this datapack. \
As developer, deel free to use this datapack as a module to develop free datapacks. \
But you **must** add the link to this github page! \
**NO COMMERCIAL USE**
## License
[Mozilla Public License 2.0](https://github.com/MingshiYangUIUC/Autoaim-Minecraft-Squid-Workshop-Project/blob/main/LICENSE)


# More About Squid Workshop
See more datapacks developed by us [here](https://github.com/Squid-Workshop/MinecraftDatapacksProject) \
Watch our videos on bilibili [here](https://space.bilibili.com/649645265?from=search&seid=778816111336987286) \
Join our QQ group: 74681732 \
Subscribe on wechat: 鱿鱼MC工作室 
