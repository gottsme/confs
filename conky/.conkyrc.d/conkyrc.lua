w = 300

conky.config = {
    alignment = 'bottom_left',
    border_width = 0,
    cpu_avg_samples = 10,
	default_color = xrdb('foreground'),
    default_outline_color = 'white',
    default_shade_color = 'black',
    double_buffer = true,
    draw_borders = false,
    draw_graph_borders = false,
    draw_outline = false,
    draw_shades = false,
    use_xft = true,
    font = 'Noto Sans:black:size=8',
    gap_x = 0.3 * w,
    gap_y = 80,
    minimum_height = 5,
    net_avg_samples = 2,
    no_buffers = true,
    out_to_console = false,
    out_to_stderr = false,
    extra_newline = false,
    own_window = true,
    own_window_class = 'Conky',
    own_window_type = 'override',
    own_window_hints="below,sticky,skip_taskbar,skip_pager",
    own_window_transparent = true,
    update_interval = 5,
    uppercase = false,
    use_spacer = 'none',
    show_graph_scale = true,
    -- show_graph_range = true,
    short_units = true,
    top_cpu_separate = false,

    minimum_width = w,
    maximum_width = w,
}

conky.text = interp([[
#{fonttitle}$nodename $sysname #{fontsubtitle}
$kernel on $machine${font}

#{emph}CPU #{normal}${cpu cpu0}% $alignr ${loadavg}
${cpubar cpu1 3,#{quartw}}   ${cpubar cpu2 3,#{quartw}} $alignr ${cpubar cpu3 3,#{quartw}}   ${cpubar cpu4 3,#{quartw}}
${cpubar cpu5 3,#{quartw}}   ${cpubar cpu6 3,#{quartw}} $alignr ${cpubar cpu7 3,#{quartw}}   ${cpubar cpu8 3,#{quartw}}
${cpugraph cpu0 #{gheight},${w} #{gcolors}}#{emph}

#{emph}RAM #{normal}${mem} $alignr #{emph}Swap #{normal}$swap
${membar 6}
#{emph}${memgraph #{gheight},${w} #{gcolors}}#{normal}

#{emph}Disk R/W #{normal} ${diskio_read} ${diskio_write} $alignr ${if_up wlp4s0}#{emph}WiFi U/D (log)#{normal} ${upspeed wlp4s0} ${downspeed wlp4s0}${else}#{emph}WiFi down#{normal}$endif
#{emph}${diskiograph_read #{gheight},#{halfw} #{gcolors}} $alignr ${diskiograph_write #{gheight},#{halfw} #{gcolors}}
#{emph}${if_up wlp4s0}${downspeedgraph wlp4s0 #{gheight},#{halfw} #{gcolors} -l} $alignr ${upspeedgraph wlp4s0 #{gheight},#{halfw} #{gcolors} -l}${endif}

$processes #{emph}processes $alignr CPU MEM#{normal}
${top name 1} $alignr ${top pid 1} ${top cpu 1} ${top mem 1}
${top name 2} $alignr ${top pid 2} ${top cpu 2} ${top mem 2}
${top name 3} $alignr ${top pid 3} ${top cpu 3} ${top mem 3}
${top name 4} $alignr ${top pid 4} ${top cpu 4} ${top mem 4}
${top name 5} $alignr ${top pid 5} ${top cpu 5} ${top mem 5}

${top_mem name 1} $alignr ${top_mem pid 1} ${top_mem cpu 1} ${top_mem mem 1}
${top_mem name 2} $alignr ${top_mem pid 2} ${top_mem cpu 2} ${top_mem mem 2}
${top_mem name 3} $alignr ${top_mem pid 3} ${top_mem cpu 3} ${top_mem mem 3}
${top_mem name 4} $alignr ${top_mem pid 4} ${top_mem cpu 4} ${top_mem mem 4}
${top_mem name 5} $alignr ${top_mem pid 5} ${top_mem cpu 5} ${top_mem mem 5}

${top_io name 1} $alignr ${top_io io_read 1} ${top_io io_write 1} ${top_io pid 1} ${top_io cpu 1} ${top_io mem 1}
${top_io name 2} $alignr ${top_io io_read 2} ${top_io io_write 2} ${top_io pid 2} ${top_io cpu 2} ${top_io mem 2}
${top_io name 3} $alignr ${top_io io_read 3} ${top_io io_write 3} ${top_io pid 3} ${top_io cpu 3} ${top_io mem 3}
${top_io name 4} $alignr ${top_io io_read 4} ${top_io io_write 4} ${top_io pid 4} ${top_io cpu 4} ${top_io mem 4}
${top_io name 5} $alignr ${top_io io_read 5} ${top_io io_write 5} ${top_io pid 5} ${top_io cpu 5} ${top_io mem 5}
]], {
    w = w,
    halfw = w * 0.49,
    quartw = w * 0.23,
    gheight = 22,
    gcolors = "#FF0000 #FFFF00",
    emph = '${font Noto Sans:italic:size=9}',
    fonttitle = '${font Noto Sans:light:size=35}',
    fontsubtitle = '${font Noto Sans:thin:size=12}',
    normal = '$font',
})
