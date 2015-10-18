switch -regexp aaab {
	-^a.*b$ 	- 
	b   		{set x y }
	default 	{}
}

