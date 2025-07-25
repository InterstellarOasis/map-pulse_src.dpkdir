// style 1: wave sin 0 1 0 0.5
// style 2: wave noise 0.9 1 0 10
// style 3: wave square 0 1 0 0.01
// style 4: wave square 0 1 0 3

textures/pulse/glass_trans
{
	qer_editorimage textures/pulse/KOsAD_Window
	qer_trans 0.6
	surfaceparm nomarks
	surfaceparm trans
	{
		map textures/pulse/KOsAD_Window
		blendfunc filter
	}

	//{
	//	map textures/pulse/glass03
	//	blendfunc filter
	//	tcmod scale 4 4
	//	tcgen environment
	//}
}

textures/pulse/base_section_clip
{
	qer_editorimage textures/common_src/black_d
	qer_trans 0.40

	surfaceparm nolightmap
	surfaceparm trans
//	surfaceparm nomarks
//	surfaceparm noimpact
//	surfaceparm playerclip
	surfaceparm metalsteps
	surfaceparm nodraw

//	{
//		map textures/common_src/black_d
//		blendFunc add
//	}

}

textures/pulse/white
{
	qer_editorimage textures/editor/white

	noPicMip
	noMipMaps
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/pulse/white16x16
	}
}

textures/pulse/sky
{
	qer_editorimage env/pulse/pulse_up

	skyparms env/pulse/pulse - -

	// q3map_sunExt red green blue intensity degrees elevation deviance samples
	q3map_sunExt 0.56 0.18 0.1 200 85 15 45 8

	//self other
	q3map_lightmapFilterRadius 0 4

	//q3map_skylight q3map_skylight amount iterations
	q3map_skylight 200 3
	q3map_lightRGB 0.56 0.18 0.1

	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	nopicmip
	nomipmaps

	q3map_globaltexture

	//q3map_lightsubdivide 256 //replaced by q3map_skylight
	//q3map_surfacelight 75 //replaced by q3map_skylight
}

textures/pulse/light_base_common
{
	qer_editorimage textures/pulse/cubelight_32_white
	surfaceparm nomarks
	q3map_lightRGB .5 .75 1
	q3map_surfacelight 32500
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/cubelight_32_white
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/pulse/cubelight_32_white.blend
		blendfunc add
		rgbGen const ( .5 .75 0 )
	}
}

textures/pulse/light_base_common_low
{
	qer_editorimage textures/pulse/cubelight_32_white
	surfaceparm nomarks
	q3map_lightRGB .5 .75 1
	q3map_surfacelight 15000
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/cubelight_32_white
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/pulse/cubelight_32_white.blend
		blendfunc add
		rgbGen const ( .5 .75 0 )
	}
}

textures/pulse/light_base_common_off
{
	qer_editorimage textures/pulse/cubelight_32_white
	surfaceparm nomarks
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/cubelight_32_white
		blendFunc filter
		rgbGen identity
	}
}

textures/pulse/light_base_common_style2
{
	qer_editorimage textures/pulse/cubelight_32_white
	surfaceparm nomarks
	q3map_lightRGB 0.5 0.75 1
	q3map_surfacelight 32500
	q3map_lightStyle 2

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	q3map_styleMarker
	{
		map textures/pulse/cubelight_32_white
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/pulse/cubelight_32_white.blend
		rgbGen wave noise 0.75 0.5 0 20 // style 2
		blendfunc add
	}
}

textures/pulse/light_base_common_style3
{
	qer_editorimage textures/pulse/cubelight_32_white
	surfaceparm nomarks
	q3map_lightRGB 0.5 0.75 1
	q3map_surfacelight 50000
	q3map_lightStyle 3

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	q3map_styleMarker
	{
		map textures/pulse/cubelight_32_white
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/pulse/cubelight_32_white.blend
		rgbGen wave square 0 1 0 0.01 // style 3
		blendfunc add
	}
}

textures/pulse/light_base_red
{
	qer_editorimage textures/pulse/cubelight_32_white

	surfaceparm nomarks
	q3map_lightRGB 1 .25 .25
	q3map_surfacelight 12500

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/cubelight_32_white
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/pulse/cubelight_32_white.blend
		blendfunc add
		rgbGen const ( 1 .25 .25 )
	}
}

textures/pulse/light_base_green
{
	qer_editorimage textures/pulse/cubelight_32_white
	surfaceparm nomarks
	q3map_lightRGB .2 1 .2
	q3map_surfacelight 32500
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/cubelight_32_white
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/pulse/cubelight_32_white.blend
		blendfunc add
		rgbGen const ( 0 1 0 )
	}
}

textures/pulse/light_base_yellow
{
	qer_editorimage textures/pulse/cubelight_32_white
	surfaceparm nomarks
	q3map_lightRGB 1 1 .2
	q3map_surfacelight 11000
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/cubelight_32_white
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/pulse/cubelight_32_white.blend
		blendfunc add
		rgbGen const ( 1 1 0 )
	}
}

textures/pulse/foot_steps
{
	qer_editorimage textures/pulse/foot_steps

	surfaceparm noimpact
//	surfaceparm nonsolid
	polygonoffset
//	q3map_noTJunc
//	noMipMaps

	{
		clampmap textures/pulse/foot_steps
		//blendFunc blend
		blendFunc GL_DST_COLOR GL_ONE
	}
}

textures/pulse/platform_signal
{
	qer_editorimage textures/pulse/bnw_line1
	qer_trans 0.5

	surfaceparm trans
	cull none
	{
		map textures/pulse/bnw_line1
		blendfunc add
		tcMod scroll 1 0
	}
	{
		map textures/pulse/bnw
		blendfunc gl_dst_color gl_src_color
		rgbGen const ( 0.5 0.5 1 )
	}
}

textures/pulse/red_signal
{
	qer_editorimage textures/pulse/red16x16
	qer_trans 0.5

	noPicMip
	noMipMaps

	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	{
		map textures/pulse/red16x16
		blendfunc gl_src_alpha gl_src_alpha
		rgbGen wave inversesawtooth 0 1 0 0.5
	}
}

textures/pulse/led_red_noblink
{
	qer_editorimage textures/pulse/red16x16

	noPicMip
	noMipMaps
	surfaceparm nolightmap
	surfaceparm nomarks
	{
		map textures/pulse/red16x16
	}
}

textures/pulse/led_green_noblink
{
	qer_editorimage textures/pulse/green16x16

	noPicMip
	noMipMaps

	surfaceparm nolightmap
	surfaceparm nomarks
	{
		map textures/pulse/green16x16
	}
}

textures/pulse/led_red_blink
{
	qer_editorimage textures/pulse/red16x16
	qer_trans 0.5

	noPicMip
	noMipMaps

	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm trans
	cull disable
	{
		map textures/pulse/red16x16
		blendfunc GL_ONE GL_ONE
		rgbGen wave square 0 1 0 2
	}
}

textures/pulse/led_green_blink
{
	qer_editorimage textures/pulse/green16x16
	qer_trans 0.5

	noPicMip
	noMipMaps

	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm trans
	cull disable
	{
		map textures/pulse/green16x16
		blendfunc GL_ONE GL_ONE
		rgbGen wave square 0 1 0 2
	}
}

textures/pulse/monitor
{
	qer_editorimage textures/pulse/bnw_line1

	surfaceparm nomarks
	surfaceparm nolightmap
//	surfaceparm trans
	portal
	{
		map textures/pulse/bnw
		tcMod scale 4 1
		blendfunc filter
		depthWrite
		alphaGen portal 512
	}
	{
		map textures/pulse/bnw_line1
		blendfunc gl_dst_color gl_one
		tcMod scroll 1 0
	}
}

textures/pulse/glass_trim
{
	qer_editorimage textures/common_src/black_d
	qer_trans .5
	surfaceparm nodraw
	surfaceparm nolightmap
}

textures/pulse/plexiglass
{
	qer_editorimage textures/pulse/plexiglass
	qer_trans .5

	surfaceparm trans
//	surfaceparm lightfilter
	cull none

	{
		map $lightmap
		tcGen lightmap
		blendFunc add
		rgbGen const ( 0.1 0.1 0.1 )
	}
	{
		map textures/pulse/plexiglass
		tcGen environment
		blendFunc add
		tcmod scale 1 1
		rgbGen const ( 0.05 0.05 0.1 )
	}
}

textures/pulse/glass
{
	qer_editorimage textures/pulse/plexiglass
	qer_trans .5

	surfaceparm trans
//	surfaceparm lightfilter
	cull none
	{
		map textures/pulse/plexiglass
		blendfunc add
		rgbGen const ( 0.01 0.04 0.02 )
	}
}

textures/pulse/mirror_classic
{
	qer_editorimage textures/common_src/black_d

	noPicMip
	noMipMaps

	surfaceparm nolightmap
	surfaceparm playerclip
	portal
	{
		map textures/common_src/black_d
		blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
		depthWrite
		alphaGen portal 256
	}
}

textures/pulse/floor1
{
	qer_editorimage textures/pulse/gravel

	q3map_nonplanar
	q3map_shadeangle 120
//	q3map_tcGen ivector ( 256 0 0 ) ( 0 256 0 )
	q3map_alphaMod dotproduct2 ( 0.0 0.0 0.75 )

	{
		map textures/pulse/gravel
		rgbGen identity
	}

	{
		map textures/common_src/black_d // Secondary
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaFunc GE128
		rgbGen identity
		alphaGen vertex
	}

	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
}

textures/pulse/floor2
{
	qer_editorimage textures/pulse/rock

	q3map_nonplanar
	q3map_shadeangle 120
//	q3map_tcGen ivector ( 256 0 0 ) ( 0 256 0 )
	q3map_alphaMod dotproduct2 ( 0.0 0.0 0.75 )

	{
		map textures/pulse/rock
		rgbGen identity
	}

	{
		map textures/common_src/black_d	// Secondary
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		alphaFunc GE128
		rgbGen identity
		alphaGen vertex
	}

	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
}

textures/pulse/rock_floor
{
	qer_editorimage textures/pulse/rock

	q3map_nonplanar
	q3map_shadeangle 120
//	q3map_lightmapaxis z
	q3map_lightmapMergable
	q3map_lightmapSampleSize 32

// q3map_surfaceModel modelpath density odds minscale maxscale minangle maxangle oriented
// In order to lightmap an MD3 model, it must have a few things in the shader:
// http://www.quake3world.com/ubb/Archives/Archive-000004/HTML/20021124-6-022898-8.html

//	q3map_surfaceModel models/mapobjects/pulse/palm.md3 64 0.01 0.1 0.5 0 360 1

	q3map_surfaceModel models/mapobjects/kt_mushroom/mushroom.md3 128 0.01 0.05 0.1 0 360 1

	surfaceparm dust

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/rock
		blendFunc filter
	}
}

textures/pulse/rock_steep
{
	qer_editorimage textures/pulse/rock_dark

	q3map_nonplanar
	q3map_shadeangle 120
	q3map_lightmapaxis z
	q3map_lightmapMergable
	q3map_lightmapSampleSize 64

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/rock_dark
		blendFunc filter
	}
}

textures/pulse/rock_pit
{
	qer_editorimage textures/common_src/black_d

	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight

	{
		map textures/common_src/black_d
	}
}

textures/pulse/blue_thing
{
	qer_editorimage textures/pulse/white16x16

	surfaceparm nolightmap
	q3map_lightRGB 0.1 0.1 1
	q3map_surfacelight 15000

	{
		map textures/pulse/white16x16
		rgbGen const ( 0.25 0.75 1 )
	}
}

textures/pulse/pit_fog {

	qer_editorimage textures/common_src/black_d
	qer_trans .4

	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nolightmap
	surfaceparm nodlight

	surfaceparm fog
	fogparms ( 0.1 0.05 0.02 ) 5000
}

textures/pulse/door_metal
{
	qer_editorimage textures/pulse/001metal

	{
		map textures/pulse/001metal
		rgbGen identity
		tcGen environment
		tcmod scale .25 .25
	}

	{
		map textures/pulse/001metal
		blendFunc filter
		rgbGen identity
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_zero
		rgbGen identity
	}
}

textures/pulse/moon
{
	qer_editorimage textures/pulse/venus_clouds

	q3map_nonplanar
	q3map_shadeangle 90

	q3map_noClip
	q3map_notjunc

	q3map_bounce 0.0
	surfaceparm nonsolid
	surfaceparm noimpact

	noPicMip
	noMipMaps

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/venus_clouds
		blendFunc filter
		tcMod scroll 0.1 0
		tcmod scale 1 1

	}
}

textures/pulse/water
{
	qer_editorimage textures/pulse/water
	qer_trans .5

	entityMergable

	q3map_globaltexture

	surfaceparm nobuild
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water

	surfaceparm fog
	fogparms ( 0.01 0.05 0.05 ) 1024

	cull disable
	tesssize 128
	deformVertexes wave 100 sin 1 2 1 .1

	{
		map textures/pulse/water
		blendfunc GL_ONE GL_SRC_COLOR
		tcMod scale .03 .03
		tcMod scroll .01 .001
	}
	{
		map textures/pulse/water
		blendfunc GL_DST_COLOR GL_ONE
		tcMod turb .1 .1 0 .01
		tcMod scale .5 .5
		tcMod scroll -.02 .1
	}
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
		blendfunc filter
	}
}

textures/pulse/water2
{
	qer_editorimage textures/pulse/water
	qer_trans .5

	entityMergable

	q3map_globaltexture

	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water

	surfaceparm fog
	fogparms ( 0.01 0.05 0.05 ) 1024

	cull disable
	tesssize 128
	deformVertexes wave 100 sin 1 2 1 .1

	{
		map textures/pulse/water
		blendfunc GL_ONE GL_SRC_COLOR
		tcMod scale .03 .03
		tcMod scroll .01 .001
	}
	{
		map textures/pulse/water
		blendfunc GL_DST_COLOR GL_ONE
		tcMod turb .1 .1 0 .01
		tcMod scale .5 .5
		tcMod scroll -.02 .1
	}
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
		blendfunc filter
	}
}

textures/pulse/water_radioactive
{
	qer_editorimage textures/pulse/water
	qer_trans .5

	q3map_lightRGB 0.25 0.25 0.1
	q3map_surfacelight 100

	entityMergable

	q3map_globaltexture

//	surfaceparm slime

	surfaceparm nobuild
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water

	surfaceparm fog
	fogparms ( 0.01 0.05 0.05 ) 1024

//	cull disable
//	tesssize 128
//	deformVertexes wave 100 sin 1 2 1 .1

	{
		map textures/pulse/water
		blendfunc GL_ONE GL_SRC_COLOR
		tcMod scale .03 .03
		tcMod scroll .01 .001
	}

	{
		map textures/pulse/water
		blendfunc GL_DST_COLOR GL_ONE
		tcMod turb .1 .1 0 .01
		tcMod scale .5 .5
		tcMod scroll -.02 .1
	}

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
		blendfunc filter
	}
}

textures/pulse/e6simpwallsupp_pow
{
	qer_editorimage textures/pulse/e6simpwallsupp

//	surfaceparm slick

//	q3map_surfacelight 150
//	q3map_lightRGB 0.5 0.5 1
//	q3map_lightSubdivide 64
//	q3map_lightStyle 1

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
//	q3map_styleMarker
	{
		map textures/pulse/e6simpwallsupp
		blendfunc filter
	}
	{
		map textures/pulse/e6simpwallsupp_tech
		blendfunc gl_src_alpha gl_one
		rgbGen wave sin 0.25 0.25 0 0.5
	}
	{
		map textures/pulse/e6simpwallsupp_inside
		blendfunc gl_dst_color gl_one
		rgbGen const ( 0 0 1 )
	}
}

textures/pulse/e6simpwallsupp_full_pow
{
//	q3map_lightRGB 0.5 0.5 1
//	q3map_surfacelight 1250
//	q3map_lightStyle 1
//	q3map_lightSubdivide 92

	qer_editorimage textures/pulse/e6simpwallsupp_tech_full
	{
		map textures/pulse/e6simpwallsupp_tech_full
	}
	{
		map textures/pulse/e6simpwallsupp_tech_full
		blendfunc gl_src_alpha gl_one
		rgbGen wave sin 0.25 0.25 0 0.5
	}
	{
		map textures/pulse/white16x16
		blendfunc gl_dst_color gl_one
		rgbGen const ( 0 0 1 )
	}
}

textures/pulse/holo_base
{
	qer_editorimage textures/pulse/white16x16

	noPicMip
	noMipMaps

	q3map_lightRGB 0 0 1
	q3map_surfacelight 200
	{
		map textures/pulse/white16x16
		rgbGen wave noise 0.5 0.25 0 1
	}
}

textures/pulse/camera_cone
{
	qer_editorimage textures/pulse/rad_circle_1

	noPicMip
	noMipMaps
	{
		clampmap textures/pulse/rad_circle_1
		tcGen environment
		tcMod scale 0.3 0.3
	}
	{
		map textures/pulse/bnw_line1
		blendfunc filter
		rgbGen const ( 0 1 0 )
		tcMod scroll 1 0
	}
}

textures/pulse/slime_stain
{
		qer_editorimage textures/pulse/slime7

		q3map_lightimage textures/pulse/slime7
		q3map_globaltexture
//		surfaceparm slime
		surfaceparm slick
		q3map_surfacelight 200
		{
			map textures/pulse/slime7c
			rgbGen const ( 0.5 0.5 0.5 )
		}
		{
			map textures/pulse/slime7
			rgbGen const ( 0.2 0.2 0.2 )
			blendfunc add
			tcGen environment
		}
}

textures/pulse/pipe_slime_s
{
		qer_editorimage textures/pulse/slime7

		q3map_lightimage textures/pulse/slime7
		q3map_globaltexture

//		surfaceparm noimpact
		surfaceparm slime
		surfaceparm nolightmap
		surfaceparm trans

		q3map_surfacelight 1500
		tessSize 16
//		cull disable

		{
			map textures/pulse/slime7c
			rgbGen const ( 0.5 0.5 0.5 )
			tcMod turb .3 .2 1 .05
			tcMod scroll .2 .02
		}

		{
			map textures/pulse/slime7
			rgbGen const ( 0.75 0.75 0.75 )
			blendfunc add
			tcMod turb .2 .1 1 .05
			tcMod scale .5 .5
			tcMod scroll .4 -.02
		}
}

textures/pulse/electro_blind
{
	qer_editorimage textures/pulse/white16x16
	qer_trans .25

	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	{
		map textures/pulse/white16x16
		rgbGen const ( 0.5 0.25 0 )
		blendfunc gl_dst_color gl_one
	}
	{
		map textures/pulse/white16x16
		rgbGen identity
		rgbGen wave noise 0.5 0.5 0 2
		blendfunc filter
	}
}

textures/pulse/rmetal2b_pow
{

	qer_editorimage textures/pulse/rmetal2b
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/rmetal2b
		blendfunc filter
	}
	{
		map textures/pulse/rmetal2b_tech
		blendfunc gl_src_alpha gl_one
		rgbGen wave noise 0.5 0.5 0 10
	}
	{
		map textures/pulse/rmetal2b_inside
		blendfunc gl_dst_color gl_one
		rgbGen const ( 1 0 0 )
	}
}

textures/pulse/pulse_signs
{
	qer_editorimage textures/pulse/pulse_signs
	noPicMip
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 125
	q3map_lightRGB 0.2 0.7 0.8
	{
		map textures/pulse/pulse_signs
		rgbGen const ( 0.2 0.7 0.8 )
	}
}

textures/pulse/pulse_signs_cyan
{
	qer_editorimage textures/pulse/pulse_signs
	noPicMip
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 125
	q3map_lightRGB 0.0 0.9 0.8
	{
		map textures/pulse/pulse_signs
		rgbGen const ( 0.8 0.2 0.1 )
	}
}

textures/pulse/pulse_signs_red
{
	qer_editorimage textures/pulse/pulse_signs
	noPicMip
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 125
	q3map_lightRGB 0.8 0.2 0.1
	{
		map textures/pulse/pulse_signs
		rgbGen const ( 0.8 0.2 0.1 )
	}
}

textures/pulse/pulse_signs_magenta
{
	qer_editorimage textures/pulse/pulse_signs
	noPicMip
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 125
	q3map_lightRGB 0.8 0.2 0.8
	{
		map textures/pulse/pulse_signs
		rgbGen const ( 0.8 0.2 0.8 )
	}
}

textures/pulse/pulse_signs_yellow
{
	qer_editorimage textures/pulse/pulse_signs
	noPicMip
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 125
	q3map_lightRGB 0.8 0.9 0.1
	{
		map textures/pulse/pulse_signs
		rgbGen const ( 0.8 0.9 0.1 )
	}
}

textures/pulse/pulse_signs_green
{
	qer_editorimage textures/pulse/pulse_signs
	noPicMip
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 125
	q3map_lightRGB 0.2 0.7 0.1
	{
		map textures/pulse/pulse_signs
		rgbGen const ( 0.2 0.7 0.1 )
	}
}

textures/pulse/pulse_signs_blue
{
	qer_editorimage textures/pulse/pulse_signs
	noPicMip
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 125
	q3map_lightRGB 0.1 0.2 0.9
	{
		map textures/pulse/pulse_signs
		rgbGen const ( 0.1 0.2 0.9 )
	}
}

textures/pulse/pulse_signs_white
{
	qer_editorimage textures/pulse/pulse_signs
	noPicMip
	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 125
	q3map_lightRGB 0.9 0.9 0.9
	{
		map textures/pulse/pulse_signs
		rgbGen const ( 0.9 0.9 0.9 )
	}
}

textures/pulse/lcd_display
{
	qer_editorimage textures/pulse/maze

	noPicMip

	q3map_surfacelight 1100
	q3map_lightRGB 0.2 0.7 0.8

	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/pulse/maze
		rgbGen const ( 0.2 0.7 0.8 )
		tcMod scroll -0.5 0
	}
}

textures/pulse/controlpanel2
{
	qer_editorimage textures/pulse/controlpanel2
	surfaceparm nomarks
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap
	}
	{
		map textures/pulse/controlpanel2
		blendfunc filter
	}
	{
		map textures/pulse/controlpanel2_mask
		blendfunc gl_dst_color gl_one
		rgbGen wave square 0.5 0.5 0 3
	}
}

textures/pulse/title
{
	qer_editorimage textures/pulse/title

	noPicMip

	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm trans
	surfaceparm nomarks
	{
		map textures/pulse/title
		tcMod scroll 0 0.025
		blendFunc add
	}
}

//by jex -c2
textures/pulse/e3grate_transt2
{
	qer_editorimage textures/pulse/grt_offmtl
	surfaceparm alphashadow
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	cull disable
	nopicmip
	{
		map textures/pulse/grt_offmtl
		depthWrite
		alphaFunc GE128
	}
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap

		blendfunc filter
		depthFunc equal
	}
}

textures/pulse/e8bgrate01_s
{
	qer_editorimage textures/pulse/e8bgrate01
	surfaceparm alphashadow
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm trans
	cull disable
	nopicmip
	{
		map textures/pulse/e8bgrate01
		depthWrite
		alphaFunc GE128
	}
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap

		blendfunc filter
		depthFunc equal
	}
}

textures/pulse/e6v_light_s_7500
{
	qer_editorimage textures/pulse/e6v_light
	surfaceparm nomarks
	q3map_surfacelight 7500
	{
		map textures/pulse/e6v_light
	}
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap

		blendfunc filter
	}
	{
		map textures/pulse/e6v_light_blend
		blendfunc add
	}
}

textures/pulse/spark_01
{
	qer_editorImage textures/pulse/spark_01

	entityMergable
	cull none

	{
		map textures/pulse/spark_01
		blendFunc add
		rgbGen		const ( 1 1 1 )
		alphaGen	vertex
	}
}

textures/pulse/spark_02
{
	qer_editorImage textures/pulse/spark_02

//	entityMergable
	cull none

	{
		map textures/pulse/spark_02
		blendFunc add
		rgbGen		const ( 1 1 1 )
		alphaGen	vertex
	}
}

textures/pulse/meteorite_trail
{
	qer_editorImage textures/common_src/white_d

//	entityMergable
	cull none
	{
		map textures/pulse/white16x16
		blendFunc blend
		alphaGen vertex
		rgbGen vertex
	}
}

textures/pulse/meteorite_mark
{
	qer_editorImage gfx/marks/bullet_mrk

	polygonOffset

	{
		map gfx/marks/bullet_mrk
		blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
		rgbGen exactVertex
	}
}

textures/pulse/blackwall_nocull
{
	qer_editorImage textures/pulse/blackwall

	cull disable

	{
		diffuseMap textures/pulse/blackwall
	}
}
