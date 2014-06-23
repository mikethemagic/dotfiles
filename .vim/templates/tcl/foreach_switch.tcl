foreach { tag value} $args {
	switch -exakt $tag {
		-padx   {set padx   $value }
	}
}

