#!/bin/bash

for effect in *
do if [ -d "$effect" ]
then 
	mv "$effect/p.json"  "potion/$effect.json"
	mv "$effect/ps.json" "potion/strong_$effect.json"
	mv "$effect/pl.json" "potion/long_$effect.json"

	mv "$effect/s.json"  "splash_potion/$effect.json"
	mv "$effect/ss.json" "splash_potion/strong_$effect.json"
	mv "$effect/sl.json" "splash_potion/long_$effect.json"

	mv "$effect/l.json"  "lingering_potion/$effect.json"
	mv "$effect/ls.json" "lingering_potion/strong_$effect.json"
	mv "$effect/ll.json" "lingering_potion/long_$effect.json"

	rm -d $effect;
fi
done;
