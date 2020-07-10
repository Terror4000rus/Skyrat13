/obj/screen/plane_master/o_light_blocker
	name = "overlight light blocker plane master"
	plane = O_LIGHTING_BLOCKER_PLANE
	render_target = O_LIGHTING_BLOCKER_RENDER_TARGET
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/screen/plane_master/o_light_blocker/Initialize()
	. = ..()
	//filters += filter(type="alpha", render_source=O_LIGHTING_VISUAL_RENDER_TARGET, flags=MASK_INVERSE)

/obj/screen/plane_master/o_light_visual
	name = "overlight light visual plane master"
	plane = -20
	render_target = O_LIGHTING_VISUAL_RENDER_TARGET
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/screen/plane_master/o_light_visual/Initialize()
	. = ..()
	//filters += filter(type="alpha", render_source=O_LIGHTING_BLOCKER_RENDER_TARGET, flags=MASK_INVERSE)

/obj/screen/plane_master/lighting/Initialize()
	. = ..()
	filters += filter(type="alpha", render_source=O_LIGHTING_VISUAL_RENDER_TARGET, flags=MASK_INVERSE)
