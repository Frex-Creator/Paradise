/obj/structure/spawner/mining/carps
	name = "Carps den"
	desc = "A den housing a nest of carps, oh god why?"
	mob_types = list(/mob/living/simple_animal/hostile/carp)

/obj/structure/spawner/headcrab_old
	name = "headcrab old nest"
	desc = "A living nest for headcrabs."
	icon_state = "headcrab_nest"
	icon = 'icons/mob/headcrab.dmi'
	max_integrity = 300
	max_mobs = 3
	spawn_time = 250
	mob_types = list(/mob/living/simple_animal/hostile/headcrab, /mob/living/simple_animal/hostile/headcrab/fast, /mob/living/simple_animal/hostile/headcrab/poison)
	spawn_text = "crawls out of"
	faction = list("hostile")

/obj/structure/spawner/netherbreach
	name = "netherworld tear on reality"
	desc = "A breach on reality that cant be close now... unless..."
	icon = 'icons/mob/nest.dmi'
	icon_state = "nether"
	max_integrity = 4000 //La idea es desactivarlo pero si le pegas mucho lo matas lol
	max_mobs = 4
	spawn_time = 300 // 30 segundos para aparecer un mob
	spawn_text = "crawls through"
	mob_types = list(/mob/living/simple_animal/hostile/netherworld/migo, /mob/living/simple_animal/hostile/netherworld, /mob/living/simple_animal/hostile/netherworld/blankbody, /mob/living/simple_animal/hostile/hivebot/range/corruptednether, /mob/living/simple_animal/hostile/netherworld/hispanether/corruptcrew)
	faction = list("nether")

/obj/structure/spawner/netherbreach/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stack/ore/bluespace_crystal)) //Item Unico de naga
		to_chat(user, "<span class='notice'>The [src]'s seems to react with the bluespace crystal and starts to shrink.</span>")
		max_integrity = 0
