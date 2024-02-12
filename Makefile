.PHONY: upload

i3-ptfe-tube-cutting-measure.stl: i3-ptfe-tube-cutting-measure.scad
	openscad -o $@ $<

upload: i3-ptfe-tube-cutting-measure.stl
	thingiverse-publisher

clean: 
	rm i3-ptfe-tube-cutting-measure.stl
	
