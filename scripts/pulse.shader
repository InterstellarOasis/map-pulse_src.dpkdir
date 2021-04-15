textures/pulse/ladder
{
	qer_editorimage textures/editor/ladder.tga
	qer_trans .5
	surfaceparm ladder
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm playerclip
}

textures/pulse/black
{
	qer_editorimage textures/pulse/black16x16.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/pulse/black16x16.tga
	}
}

textures/pulse/white
{
	qer_editorimage textures/editor/white.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/pulse/white16x16.tga
	}
}


textures/pulse/sky
{
	qer_editorimage textures/pulse/env/pulse_up.TGA

	skyparms textures/pulse/env/pulse - -

	// q3map_sunExt red green blue intensity degrees elevation deviance samples
	q3map_sunExt 0.56 0.18 0.075 250 85 15 45 8
	
	//self other
	q3map_lightmapFilterRadius 0 4
	
	//q3map_skylight q3map_skylight amount iterations
	q3map_skylight 250 4

	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	nopicmip
	nomipmaps
	
//	q3map_globaltexture
	//q3map_lightsubdivide 256 //replaced by q3map_skylight
	//q3map_surfacelight 75 //replaced by q3map_skylight
}


textures/pulse/light_base_common
{
	qer_editorimage textures/pulse/cubelight_32_white.jpg
	surfaceparm nomarks
	q3map_lightRGB 0.5 0.75 1
	q3map_surfacelight 32000
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/cubelight_32_white.jpg
		blendFunc filter
	}
//	{
//		map textures/pulse/cubelight_32_white.blend.jpg
//		blendfunc GL_ONE GL_ONE
//	}
}

textures/pulse/light_base_common_low
{
	qer_editorimage textures/pulse/cubelight_32_white.jpg
	surfaceparm nomarks
	q3map_lightRGB 0.5 0.75 1
	q3map_surfacelight 14000
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/cubelight_32_white.jpg
		blendFunc filter
		rgbGen identity
	}
//	{
//		map textures/pulse/cubelight_32_white.blend.jpg
//		blendfunc GL_ONE GL_ONE
//	}
}

textures/pulse/light_base_common_style1
{
	qer_editorimage textures/pulse/cubelight_32_white.jpg
	surfaceparm nomarks
	q3map_lightRGB 0.5 0.75 1
	q3map_surfacelight 30000
	q3map_lightStyle 1
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	q3map_styleMarker
	{
		map textures/pulse/cubelight_32_white.jpg
		blendFunc filter
	}
}

textures/pulse/light_base_common_style2
{
	qer_editorimage textures/pulse/cubelight_32_white.jpg
	surfaceparm nomarks
	q3map_lightRGB 0.5 0.75 1
	q3map_surfacelight 30000
	q3map_lightStyle 2
	
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	q3map_styleMarker
	{
		map textures/pulse/cubelight_32_white.jpg
		blendFunc filter
	}
}

textures/pulse/light_base_common_style3
{
	qer_editorimage textures/pulse/cubelight_32_white.jpg
	surfaceparm nomarks
	q3map_lightRGB 0.5 0.75 1
	q3map_surfacelight 30000
	q3map_lightStyle 3

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	q3map_styleMarker
	{
		map textures/pulse/cubelight_32_white.jpg
		blendFunc filter
	}
}


textures/pulse/light_base_red
{
	qer_editorimage textures/pulse/cubelight_32_white.jpg
	surfaceparm nomarks
	q3map_lightRGB 1 0.25 0.25
	q3map_surfacelight 7500
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/cubelight_32_white.jpg
		blendFunc filter
	}
//	{
//		map textures/pulse/cubelight_32_white.blend.jpg
//		blendfunc GL_ONE GL_ONE
//	}
}

textures/pulse/light_base_green
{
	qer_editorimage textures/pulse/cubelight_32_white.jpg
	surfaceparm nomarks
	q3map_lightRGB 0.25 1 0.25
	q3map_surfacelight 30000
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/cubelight_32_white.jpg
		blendFunc filter
	}
//	{
//		map textures/pulse/cubelight_32_white.blend.jpg
//		blendfunc GL_ONE GL_ONE
//	}
}

textures/pulse/light_base_yellow
{
	qer_editorimage textures/pulse/cubelight_32_white.jpg
	surfaceparm nomarks
	q3map_lightRGB 1 1 0.25
	q3map_surfacelight 10000
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/cubelight_32_white.jpg
		blendFunc filter
	}
//	{
//		map textures/pulse/cubelight_32_white.blend.jpg
//		blendfunc GL_ONE GL_ONE
//	}
}



textures/pulse/foot_steps
{
	qer_editorimage textures/pulse/foot_steps.tga

	surfaceparm noimpact
//	surfaceparm nonsolid
	polygonoffset
//	q3map_noTJunc
//	noMipMaps

	{
		clampmap textures/pulse/foot_steps.tga
		//blendFunc blend
		blendFunc GL_DST_COLOR GL_ONE
	}
}


textures/pulse/platform_signal
{
	qer_editorimage textures/pulse/bnw_line1.tga
	qer_trans 0.5

	surfaceparm trans
	cull none
	{
		map textures/pulse/bnw_line1.tga
		blendfunc add
		tcMod scroll 1 0
	}
	{
		map textures/pulse/bnw.tga
		blendfunc gl_dst_color gl_src_color
		rgbGen const ( 0.5 0.5 1 )
	}
}


textures/pulse/red_signal
{
	qer_editorimage textures/pulse/red16x16.tga
	qer_trans 0.5

	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull disable
	{
		map textures/pulse/red16x16.tga
		blendfunc gl_src_alpha gl_src_alpha
		rgbGen wave inversesawtooth 0 1 0 0.5 
	}
}

textures/pulse/led_red_blink
{
	qer_editorimage textures/pulse/red16x16.tga
	qer_trans 0.5

	surfaceparm nomarks
	surfaceparm trans
	cull disable
	{
		map textures/pulse/red16x16.tga
		blendfunc GL_ONE GL_ONE
		rgbGen wave square 0 1 0 2
	}
}

textures/pulse/led_green_blink
{
	qer_editorimage textures/pulse/green16x16.tga
	qer_trans 0.5

	surfaceparm nomarks
	surfaceparm trans
	cull disable
	{
		map textures/pulse/green16x16.tga
		blendfunc GL_ONE GL_ONE
		rgbGen wave square 0 1 0 2
	}
}


textures/pulse/monitor
{
	qer_editorimage textures/pulse/bnw_line1.tga

	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	portal
	{
		map textures/pulse/bnw.tga
		tcMod scale 4 1
		blendfunc filter
		depthWrite
		alphaGen portal 256
	}
	{
		map textures/pulse/bnw_line1.tga
		blendfunc gl_dst_color gl_one
		tcMod scroll 1 0
	}
//	{
//		map textures/misc/dirt.jpg
//		blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
//		depthWrite
//		alphaGen portal 2048
//	}
}


textures/pulse/plexiglass
{
	qer_editorimage textures/pulse/plexiglass.tga
	qer_trans .5
	
	surfaceparm trans
	surfaceparm lightfilter
	cull disable
	{
		map textures/pulse/plexiglass.tga
		blendfunc add
		rgbGen const ( 0.03 0.03 0.05 )
	}
}


textures/pulse/glass
{
	qer_editorimage textures/pulse/glass3.tga
	qer_trans .5
	
	surfaceparm playerclip
	surfaceparm trans
	surfaceparm lightfilter
	cull disable
	{
		map textures/pulse/glass3.tga
		blendfunc filter
	}
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
		blendfunc filter
		depthFunc equal
	}
}

textures/pulse/mirror_classic
{
	qer_editorimage textures/pulse/black16x16.tga
	
	surfaceparm nolightmap
	surfaceparm playerclip
	portal
	{
		map textures/pulse/black16x16.tga
		blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
		depthWrite
		alphaGen portal 256
	}
}


// to be tested ( normalmap )
textures/pulse/floor
{
	qer_editorimage textures/pulse/rock.tga
	q3map_lightmapsamplesize 1x1
	
	q3map_normalimage textures/pulse/rock_normalmap.tga
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
		// On calcule d'abord le lightmap global de la map
	}
	{
	map textures/pulse/rock.tga
		// On applique la texture
	blendFunc GL_DST_COLOR GL_ZERO
		// le mélange des couleurs : 
		// +- Src * GL_DST_COLOR : la texture est mélangée au contenu du frame buffer 
		// +- Dest * GL_ZERO : tous les pixels du frame buffer deviennent noirs
		// Au final, on obtient une sorte d'effet "filtre" un peu spécial 
	}
}

textures/pulse/rock_floor
{
	qer_editorimage textures/pulse/rock.tga
	
	q3map_lightmapMergable

//	q3map_surfaceModel modelpath density odds minscale maxscale minangle maxangle oriented
//	q3map_nonplanar

	surfaceparm dust

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/rock.tga
		blendFunc filter
	}
}

textures/pulse/rock_steep
{
	qer_editorimage textures/pulse/rock_dark.tga

	q3map_lightmapMergable
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/rock_dark.tga
		blendFunc filter
	}
}

textures/pulse/rock_pit
{
	qer_editorimage textures/pulse/black16x16.tga
	
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	
	{
		map textures/pulse/black16x16.tga
	}
}

textures/pulse/pit_fog
{
	qer_editorimage textures/pulse/black16x16.tga
	qer_trans .5

	surfaceparm trans
	surfaceparm nonsolid

	surfaceparm fog
	fogparms ( 0.01 0.01 0.01 ) 1024

}

textures/pulse/moon
{
	qer_editorimage textures/pulse/rock.tga

	q3map_noClip
	q3map_notjunc

	q3map_bounce 0.0
	surfaceparm nonsolid
	surfaceparm noimpact

	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/rock.tga
		blendFunc filter
		tcMod scroll 0.25 0
	}
}

textures/pulse/water
{
	qer_editorimage textures/pulse/water.tga
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
		map textures/pulse/water.tga
		blendfunc GL_ONE GL_SRC_COLOR
		tcMod scale .03 .03
		tcMod scroll .01 .001
	}

	{
		map textures/pulse/water.tga
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
	qer_editorimage textures/pulse/e6simpwallsupp.tga

//	q3map_surfacelight 100
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
		map textures/pulse/e6simpwallsupp.tga
		blendfunc filter
	}
	{
		map textures/pulse/e6simpwallsupp_tech.tga
		blendfunc gl_src_alpha gl_one
		rgbGen wave sin 0.25 0.25 0 0.5 
	}
	{
		map textures/pulse/e6simpwallsupp_inside.tga
		blendfunc gl_dst_color gl_one
		rgbGen const ( 0 0 1 )
	}
}


textures/pulse/e6simpwallsupp_full_pow
{
//	q3map_lightRGB 0.5 0.5 1
//	q3map_surfacelight 1000
//	q3map_lightStyle 1
//	q3map_lightSubdivide 92

	qer_editorimage textures/pulse/e6simpwallsupp_tech_full.tga
	{
		map textures/pulse/e6simpwallsupp_tech_full.tga
	}
	{
		map textures/pulse/e6simpwallsupp_tech_full.tga
		blendfunc gl_src_alpha gl_one
		rgbGen wave sin 0.25 0.25 0 0.5 
	}
	{
		map textures/pulse/white16x16.tga
		blendfunc gl_dst_color gl_one
		rgbGen const ( 0 0 1 )
	}
}


textures/pulse/holo_base
{
	qer_editorimage textures/pulse/white16x16.tga

	q3map_lightRGB 0 0 1
	q3map_surfacelight 200
	{
		map textures/pulse/white16x16.tga
		rgbGen wave noise 0.5 0.25 0 1
	}
}

textures/pulse/camera_cone
{
	qer_editorimage textures/pulse/rad_circle_1.tga
	{
		clampmap textures/pulse/rad_circle_1.tga
		tcGen environment
		tcMod scale 0.3 0.3
	}
	{
		map textures/pulse/bnw_line1.tga
		blendfunc filter
		rgbGen const ( 0 1 0 )
		tcMod scroll 1 0
	}
}

textures/pulse/pipe_slime_s
{
		qer_editorimage textures/pulse/slime7.tga

		q3map_lightimage textures/pulse/slime7.tga
		q3map_globaltexture

//		surfaceparm noimpact
		surfaceparm slime
		surfaceparm nolightmap
		surfaceparm trans		

		q3map_surfacelight 1500
		tessSize 16
//		cull disable

		{
			map textures/pulse/slime7c.tga
			rgbGen const ( 0.5 0.5 0.5 )			
			tcMod turb .3 .2 1 .05
			tcMod scroll .2 .02
		}
	
		{
			map textures/pulse/slime7.tga
			rgbGen const ( 0.75 0.75 0.75 )			
			blendfunc add
			tcMod turb .2 .1 1 .05
			tcMod scale .5 .5
			tcMod scroll .4 -.02
		}
}

textures/pulse/electro_blind
{
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	qer_trans .25
	{
		map textures/pulse/white16x16.tga 
		rgbGen const ( 0.5 0.25 0 )
		blendfunc gl_dst_color gl_one
	}
	{
		map textures/pulse/white16x16.tga 
		rgbGen identity
		rgbGen wave noise 0.5 0.5 0 2 
		blendfunc filter
	}
}

textures/pulse/rmetal2b_pow
{

	qer_editorimage textures/pulse/rmetal2b.tga
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/rmetal2b.tga
		blendfunc filter
	}
	{
		map textures/pulse/rmetal2b_tech.tga
		blendfunc gl_src_alpha gl_one
		rgbGen wave noise 0.5 0.5 0 10 
	}
	{
		map textures/pulse/rmetal2b_inside.tga
		blendfunc gl_dst_color gl_one
		rgbGen const ( 1 0 0 )
	}
}

textures/pulse/pulse_signs
{
	qer_editorimage textures/pulse/pulse_signs

	surfaceparm nomarks
	surfaceparm nolightmap
	q3map_surfacelight 100
	q3map_lightRGB 0.2 0.7 0.8
	{
		map textures/pulse/pulse_signs.tga
		rgbGen const ( 0.2 0.7 0.8 )
	}
}

textures/pulse/lcd_display
{
	qer_editorimage textures/pulse/maze.tga

	q3map_surfacelight 1000
	q3map_lightRGB 0.2 0.7 0.8

	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/pulse/maze.tga
		rgbGen const ( 0.2 0.7 0.8 )
		tcMod scroll -0.5 0 
	}
}

textures/pulse/controlpanel2
{
	qer_editorimage textures/pulse/controlpanel2.jpg
	surfaceparm nomarks
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/pulse/controlpanel2.jpg
		blendfunc filter
	}
	{
		map textures/pulse/controlpanel2_mask.jpg
		blendfunc gl_dst_color gl_one
		rgbGen wave square 0.5 0.5 0 3
	}
}




textures/pulse/title
{
	qer_editorimage textures/pulse/title.jpg

	surfaceparm noimpact
	surfaceparm nolightmap
   	surfaceparm trans
	surfaceparm nomarks
	{
		map textures/pulse/title.jpg
		tcMod scroll 0 0.025
		blendFunc add
	}
}


//by jex -c2
textures/pulse/e3grate_transt2
{
	qer_editorimage textures/pulse/grt_offmtl.tga
	surfaceparm alphashadow
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	cull disable
	nopicmip
	{
		map textures/pulse/grt_offmtl.tga
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
	qer_editorimage textures/pulse/e8bgrate01.tga
	surfaceparm alphashadow
	surfaceparm metalsteps
	surfaceparm nomarks
	surfaceparm trans
	cull disable
	nopicmip
	{
		map textures/pulse/e8bgrate01.tga
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
	qer_editorimage textures/pulse/e6v_light.tga
	surfaceparm nomarks
	q3map_surfacelight 7500
	{
		map textures/pulse/e6v_light.tga
	}
	{
		map $lightmap
		rgbGen identity
		tcGen lightmap 

		blendfunc filter
	}
	{
		map textures/pulse/e6v_light_blend.tga
		blendfunc add
	}
}