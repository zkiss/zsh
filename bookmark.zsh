# simple bookmark management
#
function bookmark {
	typeset OPTIND
	typeset OPTARG
	typeset o
	typeset label
	typeset dir
	typeset print
	while getopts ":l:d:p" o; do
		case "${o}" in
			l)
				label="${OPTARG}"
				;;
			d)
				dir="${OPTARG}"
				;;
			p)
				print=1
				;;
		esac
	done

	if [ "$print" = 1 ]; then
		echo $dir
	elif [ "$label" ]; then
		alias "$label"="bookmark -d $dir"
	else
		cd $dir
	fi
}

# alias for quick usage
function s {
        typeset label=$1
        bookmark -l $label -d $PWD
}
