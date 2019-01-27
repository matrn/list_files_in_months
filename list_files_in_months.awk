#!/usr/bin/awk -f


BEGIN {
	dir = "/home/matej"   #chnage to your home directory

	if(ARGC == 2){   #check for command line arguments
		dir = ARGV[1]
	}
	printf("Listing directory: %s\n", dir)


	cmd = "ls " dir

	months[12]
	sizes[12]

	m_names[1] = "January"
	m_names[2] = "February"
	m_names[3] = "March"
	m_names[4] = "April"
	m_names[5] = "May"
	m_names[6] = "June"
	m_names[7] = "July"
	m_names[8] = "August"
	m_names[9] = "September"
	m_names[10] = "October"
	m_names[11] = "November"
	m_names[12] = "December"


	while((cmd | getline filename) > 0 ){
		"stat --printf=\"%Y %s\" \"" dir "/" filename "\"" | getline info   #use %W instead of %Y if your system supports date of birth
		#FS = " "
		split(info, arr, " ")
		time = arr[1]
		size = arr[2]

		month = strftime("%m", time) + 0   #+ 0 is for converting string to int and removein first 0

		months[month] = months[month] + 1
		sizes[month] = sizes[month] + size

		#print(month)
	} 
	close(cmd)

	#pretty print
	printf("%-11s %-20.18s %s\n", "Month", "Number of files", "Total size of files (in bytes)")
	for(a = 1; a <= 12; a ++){
		printf("%-9s:   %-20s %s\n", m_names[a], months[a], sizes[a])
	}

}