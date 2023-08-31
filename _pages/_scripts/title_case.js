function title_case ( text ) {
	return text .toLowerCase()
			    .split(/[ -]/g)
			    .map((s) => s.charAt(0).toUpperCase() + s.substring(1))
			    .join(' ');
}

module.exports = title_case;