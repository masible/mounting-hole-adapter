all: mounting-hole-adapter.stl washer.stl

mounting-hole-adapter.stl: mounting-hole-adapter.scad
	echo "use <mounting-hole-adapter.scad> adapter();" | openscad -o $@ -

washer.stl: mounting-hole-adapter.scad
	echo "use <mounting-hole-adapter.scad> washer();" | openscad -o $@ -

clean:
	rm -f mounting-hole-adapter.stl washer.stl
