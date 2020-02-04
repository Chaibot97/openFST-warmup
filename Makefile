normalization.far: normalization.grm byte.far numbers.far dates.far
	thraxcompiler --input_grammar=$< --output_far=$@

byte.far: byte.grm 
	thraxcompiler --input_grammar=$< --output_far=$@

numbers.far: numbers.grm byte.far
	thraxcompiler --input_grammar=$< --output_far=$@

dates.far: dates.grm byte.far numbers.far
	thraxcompiler --input_grammar=$< --output_far=$@

clean:
	rm -f byte.far numbers.far dates.far
