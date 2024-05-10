size += 0.025 * (60 / global.maxfps)
image_xscale = size;
image_yscale = size;
image_alpha -= 0.05 * (60 / global.maxfps)
if image_alpha < 0 { instance_destroy() }