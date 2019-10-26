#!/usr/bin/env python3
from penkit.textures import make_lines_texture
from penkit import textures
from penkit.write import write_plot
write_plot([textures.make_grid_texture(5, 5)], 'grid.svg')

