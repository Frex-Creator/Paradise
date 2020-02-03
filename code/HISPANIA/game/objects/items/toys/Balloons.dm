//Globo
/obj/item/toy/balloon_h
	name = "Balloon"
	desc = "There is a tag on the back that reads NT."
	throwforce = 0
	throw_speed = 1
	throw_range = 15
	force = 0
	icon = 'icons/hispania/obj/balloons.dmi'
	icon_state = "balloon_w"
	item_state = "balloon_w"
	lefthand_file = 'icons/hispania/mob/inhands/balloons_lefthand.dmi'
	righthand_file = 'icons/hispania/mob/inhands/balloons_righthand.dmi'
	w_class = WEIGHT_CLASS_BULKY
	var/lastused = null
	resistance_flags = FLAMMABLE

//Eleccion de globo
/obj/item/toy/balloon_h/attackby(obj/item/toy/crayon/C)
	var/colour = C.colourName
	if(colour == "blue")
		name = "Blue Balloon"
		desc = "It's a blue Da ba dee da ba daa."
		icon_state = "balloon_blue"
		item_state = "balloon_blue"
		update_icon()
	if(colour == "red")
		name = "Balloon"
		desc = "It's a red balloon."
		icon_state = "balloon_red"
		item_state = "balloon_red"
		update_icon()
	if(colour == "yellow")
		name = "Yellow balloon"
		desc = "It's a yellow balloon."
		icon_state = "balloon_yellow"
		item_state = "balloon_yellow"
		update_icon()
	if(colour == "green")
		name = "Green balloon"
		desc = "It's a green balloon."
		icon_state = "balloon_green"
		item_state = "balloon_green"
		update_icon()
	if(colour == "white")
		name = "White Balloon"
		desc = "It's a white balloon."
		icon_state = "balloon_w"
		item_state = "balloon_w"
		update_icon()
	if(colour == "mime")
		name = "Mime balloon."
		desc = "..."
		icon_state = "ballon_mime"
		item_state = "ballon_mime"
		update_icon()
	if(colour == "rainbow")
		/obj/item/toy/balloon_h/clown
		name = "Clown balloon."
		desc = "Made by clowns to clowns."
		icon_state = "balloon_clown"
		item_state = "balloon_clown"

//Aviso al atacar
/obj/item/toy/balloon_h/attack_self(mob/user)
	if(world.time - lastused < CLICK_CD_MELEE)
		return
	var/playverb = pick("bat [src]", "tug on [src]'s string", "play with [src]")
	user.visible_message("<span class='notice'>[user] plays with [src].</span>", "<span class='notice'>You [playverb].</span>")
	lastused = world.time

//Tipos de globos
/obj/item/toy/balloon_h/red
	name = "Balloon"
	desc = "It's a red balloon."
	icon_state = "balloon_red"
	item_state = "balloon_red"

/obj/item/toy/balloon_h/yellow
	name = "Yellow balloon"
	desc = "It's a yellow balloon."
	icon_state = "balloon_yellow"
	item_state = "balloon_yellow"

/obj/item/toy/balloon_h/blue
	name = "Blue Balloon"
	desc = "It's a blue Da ba dee da ba daa."
	icon_state = "balloon_blue"
	item_state = "balloon_blue"

/obj/item/toy/balloon_h/green
	name = "Green balloon"
	desc = "It's a green balloon."
	icon_state = "balloon_green"
	item_state = "balloon_green"

/obj/item/toy/balloon_h/corgi
	name = "Corgi balloon"
	desc = "Man's Best Friend."
	icon_state = "Bcorgi"
	item_state = "Bcorgi"
/obj/item/toy/balloon_h/m
	name = "Mcdonalds balloon."
	desc = "Fat,Very fat"
	icon_state = "Mballoon"
	item_state = "Mballoon"
	throw_range = 5

/obj/item/toy/balloon_h/clown
	name = "Clown balloon."
	desc = "Made by clowns to clowns."
	icon_state = "balloon_clown"
	item_state = "balloon_clown"

/obj/item/toy/balloon_h/mime
	name = "Mime balloon."
	desc = "..."
	icon_state = "ballon_mime"
	item_state = "ballon_mime"
