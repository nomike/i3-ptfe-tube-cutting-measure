.PHONY: upload

i3-ptfe-tube-cutting-measure.stl: i3-ptfe-tube-cutting-measure.scad
	openscad -o $@ $<

clean: 
	rm i3-ptfe-tube-cutting-measure.stl
	
