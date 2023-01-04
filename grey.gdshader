shader_type canvas_item;

uniform float slider = 1.0;

void fragment() {
	COLOR = texture(TEXTURE, UV);
	if (COLOR.a > 0.0) {
	    float grey = (COLOR.r + COLOR.g + COLOR.b) * 0.333;
	    vec3 final_colour = mix(COLOR.rgb, vec3(grey, grey, grey), slider);
	    COLOR = vec4(final_colour, COLOR.a);
	}
}