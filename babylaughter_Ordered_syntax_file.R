#$Rev: 12179 $ .
data <- read.table("survey_86311_R_data_file.csv", sep=",", quote = "'", na.strings=c("","\"\""), stringsAsFactors=FALSE)

data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"

data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"

#Field hidden

data[, 3] <- as.character(data[, 3])
attributes(data)$variable.labels[3] <- "startlanguage"
names(data)[3] <- "startlanguage"

data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "token"
names(data)[4] <- "token"

data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "Consent
		
			 
		
			By checking this option you indicate that you understand that participation is voluntary and that you are free to withdraw at any time, without giving any reason, without your legal rights being affected. Remember all information will be analyzed and kept strictly confidential so feel free to answer all questions as honestly and truthfully as possible. Please check the box below to confirm that you have read and understood the above information about this online questionnaire and have had the opportunity to ask questions (by emailing Dr. Caspar Addyman).  
	


	 "
data[, 5] <- ordered(data[, 5], levels=c("A1"),labels=c("I agree to take part in the above study"))
names(data)[5] <- "q_24"

data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "Email Address (optional) 

	 

	If you would like to be emailed a summary of our results please provide your email address below. 

	 

	Your details will not be forwarded to any third parties. Your email address is only requested for correspondence purposes."
names(data)[6] <- "q_26"

data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "This questionnaire is part of ongoing research conducted by the Baby Lab at Birbeck University.

	If you would be happy for your email address to be kept on record so that you can be contacted with information about future studies and invitations to take part please check the box below.

	 "
data[, 7] <- ordered(data[, 7], levels=c("A1","A2","A3"),labels=c("I am happy to be contacted about future Baby Lab studies","I am already registered with Birkbeck Baby Lab","Do not contact me"))
names(data)[7] <- "q_27"

data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "In what country do you currently reside?"
data[, 8] <- ordered(data[, 8], levels=c(220,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,221,222,223,224,225,226,227,228,229,230,231,232,233),labels=c("United Kingdom","United States","Afghanistan","Albania","Algeria","American Samoa","Andorra","Angola","Anguilla","Antarctica","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Bouvet Island","Brazil","British Indian Ocean Territory","Brunei Darussalam","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Central African Republic","Chad","Chile","China","Christmas Island","Cocos Islands","Colombia","Comoros","Congo","Cook Islands","Costa Rica","Cote d'Ivoire","Croatia","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Guiana","French Polynesia","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guadeloupe","Guam","Guatemala","Guinea","Guinea-Bissau","Guyana","Haiti","Heard Island and McDonald Islands","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Israel","Italy","Jamaica","Japan","Jordan","Kazakhstan","Kenya","Kiribati","Kuwait","Kyrgyzstan","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macao","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Martinique","Mauritania","Mauritius","Mayotte","Mexico","Micronesia","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Norfolk Island","North Korea","Norway","Oman","Pakistan","Palau","Palestinian Territory","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Pitcairn","Poland","Portugal","Puerto Rico","Qatar","Romania","Russian Federation","Rwanda","Saint Helena","Saint Kitts and Nevis","Saint Lucia","Saint Pierre and Miquelon","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Georgia","South Korea","Spain","Sri Lanka","Sudan","Suriname","Svalbard and Jan Mayen","Swaziland","Sweden","Switzerland","Syrian Arab Republic","Taiwan","Tajikistan","Tanzania","Thailand","The Former Yugoslav Republic of Macedonia","Timor-Leste","Togo","Tokelau","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Tuvalu","Uganda","Ukraine","United Arab Emirates","United States Minor Outlying Islands","Uruguay","Uzbekistan","Vanuatu","Vatican City","Venezuela","Vietnam","Virgin Islands","Wallis and Futuna","Western Sahara","Yemen","Zambia","Zimbabwe"))
names(data)[8] <- "country"

data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "If you live in the U.K. select your distance from Central London"
data[, 9] <- ordered(data[, 9], levels=c(1,2,3,4,5,6,7),labels=c("","","","","","",">200km"))
names(data)[9] <- "q_39"

data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Please enter your baby\'s birth date."
names(data)[10] <- "dob"

data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "Baby gender:"
data[, 11] <- ordered(data[, 11], levels=c("A1","A2","A3","A4"),labels=c("Female","Male","Twins...","More..."))
names(data)[11] <- "sex"

data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "If completing on behalf of twins, please give answers that would be generally true for both of them. If you would prefer you can do the survey separately for each baby.

	 

	Are your twins?

	 

	 "
data[, 12] <- ordered(data[, 12], levels=c("A1","A2","A3","A4","A5"),labels=c("Identical Boys","Identical Girls","Non-identical Boys","Non-identical Girls","Boy and Girl"))
names(data)[12] <- "TwinGender"

data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "If completing on behalf of triplets, etc, please give answers that would be generally true for all of them. If you would prefer you can do the survey separately for each baby.

	 

	What sex are you babies? Are they identical?"
names(data)[13] <- "Other Gender"

data[, 14] <- as.numeric(data[, 14])
attributes(data)$variable.labels[14] <- "How many older brothers and sisters does your baby have?"
data[, 14] <- ordered(data[, 14], levels=c(0,1,2,3,4,5,6,7),labels=c("0","1","2","3","4","5","6","7 or more"))
names(data)[14] <- "siblings"

data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "What are their ages and genders?"
names(data)[15] <- "brothersandsister"

data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "Is there anything else we should know about your baby? (e.g. Where there any problems with the birth? Does your baby have any illness or condition?) "
data[, 16] <- ordered(data[, 16], levels=c("No","Yes"),labels=c("No","Yes..."))
names(data)[16] <- "babyextra"

data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "Please describe"
names(data)[17] <- "babyextratext"

data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "What is the highest level of education the mother of the child has completed?"
data[, 18] <- ordered(data[, 18], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("Less than High School","High School","Some College","2 Year College Degree (Associates)","3-4 Year College Degree (Bachelors)","Masters Degree","Doctoral Degree","Professional Degree"))
names(data)[18] <- "motherEducation"

data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "What is the highest level of education the father of the child has completed?"
data[, 19] <- ordered(data[, 19], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("Less than High School","High School","Some College","2 Year College Degree (Associates)","3-4 Year College Degree (Bachelors)","Masters Degree","Doctoral Degree","Professional Degree"))
names(data)[19] <- "FatherEducation"

data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "What job does the mother currently hold?"
names(data)[20] <- "MotherJob"

data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "What job does the father currently hold?"
names(data)[21] <- "FatherJob"

data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[First smile] [Age in months] Can you remember the age of your baby\'s first laughs and smiles. (If unsure or not relevant, please leave blank)"
names(data)[22] <- "firstLaughs_SQ001_SQ001"

data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[First social smile (to a person)] [Age in months] Can you remember the age of your baby\'s first laughs and smiles. (If unsure or not relevant, please leave blank)"
names(data)[23] <- "firstLaughs_SQ002_SQ001"

data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[First deliberate smile (when asked to smile)] [Age in months] Can you remember the age of your baby\'s first laughs and smiles. (If unsure or not relevant, please leave blank)"
names(data)[24] <- "firstLaughs_SQ003_SQ001"

data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[First laugh] [Age in months] Can you remember the age of your baby\'s first laughs and smiles. (If unsure or not relevant, please leave blank)"
names(data)[25] <- "firstLaughs_SQ004_SQ001"

data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[First hysterics] [Age in months] Can you remember the age of your baby\'s first laughs and smiles. (If unsure or not relevant, please leave blank)"
names(data)[26] <- "firstLaughs_SQ005_SQ001"

data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "Can you remember what caused your baby\'s first laugh? If so, please describe what happened."
names(data)[27] <- "firstLaughCause"

data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "What is the most memorable example of your baby laughing?"
names(data)[28] <- "MemorableLaugh"

data[, 29] <- as.character(data[, 29])
attributes(data)$variable.labels[29] <- "What is the one thing that is sure to make your baby laugh?"
names(data)[29] <- "Certain Laughter"

data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "What does your baby do that makes YOU laugh?"
names(data)[30] <- "babymakesyoulaugh"

data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Response to a pleasant sensation (eg tickling)] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 31] <- ordered(data[, 31], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[31] <- "theoriesofLaugher_SQ001"

data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Response to a sudden or surprising event (eg boo!)] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 32] <- ordered(data[, 32], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[32] <- "theoriesofLaugher_SQ002"

data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[Response to something silly or unusual (eg a dog going \'miouw\')] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 33] <- ordered(data[, 33], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[33] <- "theoriesofLaugher_SQ003"

data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Response to exaggerated event or action ] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 34] <- ordered(data[, 34], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[34] <- "theoriesofLaugher_SQ010"

data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[Because baby is happy] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 35] <- ordered(data[, 35], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[35] <- "theoriesofLaugher_SQ004"

data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[Because baby is excited] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 36] <- ordered(data[, 36], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[36] <- "theoriesofLaugher_SQ012"

data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "[Because someone else is laughing] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 37] <- ordered(data[, 37], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[37] <- "theoriesofLaugher_SQ007"

data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[To communicate with caregiver] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 38] <- ordered(data[, 38], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[38] <- "theoriesofLaugher_SQ006"

data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[To bond with caregiver] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 39] <- ordered(data[, 39], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[39] <- "theoriesofLaugher_SQ008"

data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[To release nervous tension] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 40] <- ordered(data[, 40], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[40] <- "theoriesofLaugher_SQ005"

data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "[When fear is averted (eg something that seemed scary turns out not to be)] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 41] <- ordered(data[, 41], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[41] <- "theoriesofLaugher_SQ009"

data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[Because baby knows he/she is being naughty] Thinking about what causes your baby to laugh, please decide how relevant is each of these factors  might be. Please rate each item on a scale of 0-10, putting 0 for anything is completely irrelevant and 10 for anything is always true when your baby is laughing.
Please give answers which are true for your baby at their current age. "
data[, 42] <- ordered(data[, 42], levels=c(0,1,2,3,4,5,6,7,8,9,10),labels=c("0","1","2","3","4","5","6","7","8","9","10"))
names(data)[42] <- "theoriesofLaugher_SQ011"

data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "Did we forget anything? Tell us your theory about why your baby laughs"
names(data)[43] <- "causesParentchoice"

data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[Mummy] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 44] <- ordered(data[, 44], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[44] <- "q_11_SQ001"

data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[Daddy] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 45] <- ordered(data[, 45], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[45] <- "q_11_1"

data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[Older Brother(s)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 46] <- ordered(data[, 46], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[46] <- "q_11_2"

data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[Older Sister(s)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 47] <- ordered(data[, 47], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[47] <- "q_11_3"

data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[Grandmas] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 48] <- ordered(data[, 48], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[48] <- "q_11_4"

data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[Grandpas] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 49] <- ordered(data[, 49], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[49] <- "q_11_5"

data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[Other Family Member] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 50] <- ordered(data[, 50], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[50] <- "q_11_6"

data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[Family Friends (Adult)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 51] <- ordered(data[, 51], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[51] <- "q_11_7"

data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[Family Friends (Children)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 52] <- ordered(data[, 52], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[52] <- "q_11_8"

data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[Family Friends (Babies)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 53] <- ordered(data[, 53], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[53] <- "q_11_9"

data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[Strangers (Adult)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 54] <- ordered(data[, 54], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[54] <- "q_11_10"

data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Strangers (Children)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 55] <- ordered(data[, 55], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[55] <- "q_11_11"

data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[Strangers (Babies)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 56] <- ordered(data[, 56], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[56] <- "q_11_12"

data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[Child Minder/Nursery Staff] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 57] <- ordered(data[, 57], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[57] <- "q_11_13"

data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "[Doctors/Nurses] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 58] <- ordered(data[, 58], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[58] <- "q_11_14"

data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "[Family Pet (Dog)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 59] <- ordered(data[, 59], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[59] <- "q_11_15"

data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "[Family Pet (Cat)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 60] <- ordered(data[, 60], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[60] <- "q_11_16"

data[, 61] <- as.numeric(data[, 61])
attributes(data)$variable.labels[61] <- "[Family Pet (Other)] 
	Please indicate the level that each person makes your baby laugh. If there are any people that we forgot, please add them in the box below. If any question does not apply to you and your baby please put \"No answer\""
data[, 61] <- ordered(data[, 61], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this person hysterical"))
names(data)[61] <- "q_11_17"

data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "[Funniest Person] Who does your baby think is the funniest people they know?"
names(data)[62] <- "q_12_01"

data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "[2nd Funniest Person] Who does your baby think is the funniest people they know?"
names(data)[63] <- "q_12_02"

data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "[3rd Funniest Person] Who does your baby think is the funniest people they know?"
names(data)[64] <- "q_12_03"

data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "Did we forget anyone? If so, who?

	 "
names(data)[65] <- "q_15"

data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[Early Morning] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 66] <- ordered(data[, 66], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[66] <- "q_16_1"

data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[Breakfast time] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 67] <- ordered(data[, 67], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[67] <- "q_16_2"

data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[Mid Morning] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 68] <- ordered(data[, 68], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[68] <- "q_16_16"

data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[Lunch time] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 69] <- ordered(data[, 69], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[69] <- "q_16_19"

data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[Nap time] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 70] <- ordered(data[, 70], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[70] <- "q_16_20"

data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Early afternoon] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 71] <- ordered(data[, 71], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[71] <- "q_16_17"

data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Late afternoon] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 72] <- ordered(data[, 72], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[72] <- "q_16_21"

data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[Dinner time] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 73] <- ordered(data[, 73], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[73] <- "q_16_22"

data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[Evening] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 74] <- ordered(data[, 74], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[74] <- "q_16_18"

data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[Bed Time] 
	At what times of day does your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 75] <- ordered(data[, 75], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[75] <- "q_16_4"

data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[Getting Dressed] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 76] <- ordered(data[, 76], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[76] <- "routine_10"

data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[Nappy Changing ] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 77] <- ordered(data[, 77], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[77] <- "routine_9"

data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[Meal Time (Breast)] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 78] <- ordered(data[, 78], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[78] <- "routine_5"

data[, 79] <- as.numeric(data[, 79])
attributes(data)$variable.labels[79] <- "[Meal Time (Bottle)] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 79] <- ordered(data[, 79], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[79] <- "routine_6"

data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[Meal Time (Baby Food)] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 80] <- ordered(data[, 80], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[80] <- "routine_7"

data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "[Meal Time (Solids)] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 81] <- ordered(data[, 81], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[81] <- "routine_8"

data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "[Bath Time] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 82] <- ordered(data[, 82], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[82] <- "routine_11"

data[, 83] <- as.numeric(data[, 83])
attributes(data)$variable.labels[83] <- "[Reading to baby] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 83] <- ordered(data[, 83], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[83] <- "routine_16"

data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "[Watching Television] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 84] <- ordered(data[, 84], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[84] <- "routine_13"

data[, 85] <- as.numeric(data[, 85])
attributes(data)$variable.labels[85] <- "[Watching Parents cook/clean/etc.] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 85] <- ordered(data[, 85], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[85] <- "routine_14"

data[, 86] <- as.numeric(data[, 86])
attributes(data)$variable.labels[86] <- "[Quiet Time/Punishment] 
	What aspects of daily routine make your baby laugh the most?  

	If any question does not apply please put \"No answer\"

	 "
data[, 86] <- ordered(data[, 86], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[86] <- "routine_15"

data[, 87] <- as.character(data[, 87])
attributes(data)$variable.labels[87] <- "Did we forget any part of your daily routine that your baby finds funny?  If so, what?"
names(data)[87] <- "q_17"

data[, 88] <- as.numeric(data[, 88])
attributes(data)$variable.labels[88] <- " How many times a day would you say your baby laughs?"
data[, 88] <- ordered(data[, 88], levels=c(01,03,04,05,06,07,08,09,10,11),labels=c("0-10","10-20","20-50","50-100","100-150","150-200","200-300","300-400","400-500","500+"))
names(data)[88] <- "q_18"

data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- "[Funniest TV Show] What TV shows does your baby find the funniest?"
names(data)[89] <- "q_49_01"

data[, 90] <- as.character(data[, 90])
attributes(data)$variable.labels[90] <- "[Second Funniest TV Show] What TV shows does your baby find the funniest?"
names(data)[90] <- "q_49_02"

data[, 91] <- as.character(data[, 91])
attributes(data)$variable.labels[91] <- "[Third Funniest TV Show] What TV shows does your baby find the funniest?"
names(data)[91] <- "q_49_03"

data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "[Short car rides] 
	Please indicate the level that each situation makes your baby laugh when your are out and about. 

	If any question does not apply to you please put \"No answer\"

	

	Transport:"
data[, 92] <- ordered(data[, 92], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Ocassionaly","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[92] <- "q_19_3"

data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[Long car rides] 
	Please indicate the level that each situation makes your baby laugh when your are out and about. 

	If any question does not apply to you please put \"No answer\"

	

	Transport:"
data[, 93] <- ordered(data[, 93], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Ocassionaly","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[93] <- "q_19_2"

data[, 94] <- as.character(data[, 94])
attributes(data)$variable.labels[94] <- "Do you remember a particularly funny trip? If so, what made the baby laugh?"
names(data)[94] <- "trip"

data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "[Being Pushed] 
	Please indicate the level that each situation makes your baby laugh when your are out and about. 

	If any question does not apply to you please put \"No answer\"

	

	Transport:"
data[, 95] <- ordered(data[, 95], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Ocassionaly","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[95] <- "q_19_4"

data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- "[Crawling/Walking] 
	Please indicate the level that each situation makes your baby laugh when your are out and about. 

	If any question does not apply to you please put \"No answer\"

	

	Transport:"
data[, 96] <- ordered(data[, 96], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Ocassionaly","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[96] <- "q_19_6"

data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "[Bicycle] 
	Please indicate the level that each situation makes your baby laugh when your are out and about. 

	If any question does not apply to you please put \"No answer\"

	

	Transport:"
data[, 97] <- ordered(data[, 97], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Ocassionaly","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[97] <- "q_19_10"

data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "[Buses] 
	Please indicate the level that each situation makes your baby laugh when your are out and about. 

	If any question does not apply to you please put \"No answer\"

	

	Transport:"
data[, 98] <- ordered(data[, 98], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Ocassionaly","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[98] <- "q_19_7"

data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- "[Trains] 
	Please indicate the level that each situation makes your baby laugh when your are out and about. 

	If any question does not apply to you please put \"No answer\"

	

	Transport:"
data[, 99] <- ordered(data[, 99], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Ocassionaly","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[99] <- "q_19_8"

data[, 100] <- as.numeric(data[, 100])
attributes(data)$variable.labels[100] <- "[Planes] 
	Please indicate the level that each situation makes your baby laugh when your are out and about. 

	If any question does not apply to you please put \"No answer\"

	

	Transport:"
data[, 100] <- ordered(data[, 100], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Ocassionaly","Sometimes","Often","Very often","My baby finds this hysterical"))
names(data)[100] <- "q_19_9"

data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- "[At the Shops] Places:"
data[, 101] <- ordered(data[, 101], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[101] <- "q_50_01"

data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- "[In a café or restaurant] Places:"
data[, 102] <- ordered(data[, 102], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[102] <- "q_50_12"

data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "[School Run] Places:"
data[, 103] <- ordered(data[, 103], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[103] <- "q_50_02"

data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "[Playground] Places:"
data[, 104] <- ordered(data[, 104], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[104] <- "q_50_03"

data[, 105] <- as.numeric(data[, 105])
attributes(data)$variable.labels[105] <- "[Friends House] Places:"
data[, 105] <- ordered(data[, 105], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[105] <- "q_50_06"

data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "[Relatives House] Places:"
data[, 106] <- ordered(data[, 106], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[106] <- "q_50_13"

data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "[Nursery] Places:"
data[, 107] <- ordered(data[, 107], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[107] <- "q_50_07"

data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "[Doctors/Health Centre] Places:"
data[, 108] <- ordered(data[, 108], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[108] <- "q_50_08"

data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "[In the city] Places:"
data[, 109] <- ordered(data[, 109], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[109] <- "q_50_04"

data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- "[In the countryside] Places:"
data[, 110] <- ordered(data[, 110], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[110] <- "q_50_05"

data[, 111] <- as.numeric(data[, 111])
attributes(data)$variable.labels[111] <- "[Parks/Nature] Places:"
data[, 111] <- ordered(data[, 111], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[111] <- "q_50_09"

data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "[Beach/etc.] Places:"
data[, 112] <- ordered(data[, 112], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[112] <- "q_50_10"

data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "[Museums, etc] Places:"
data[, 113] <- ordered(data[, 113], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this hysterical"))
names(data)[113] <- "q_50_11"

data[, 114] <- as.character(data[, 114])
attributes(data)$variable.labels[114] <- "Did we forget anything or anywhere?"
names(data)[114] <- "q_20"

data[, 115] <- as.character(data[, 115])
attributes(data)$variable.labels[115] <- "[1st] Where are your baby\'s favorite places to visit?"
names(data)[115] <- "q_51_SQ001"

data[, 116] <- as.character(data[, 116])
attributes(data)$variable.labels[116] <- "[2nd] Where are your baby\'s favorite places to visit?"
names(data)[116] <- "q_51_SQ002"

data[, 117] <- as.character(data[, 117])
attributes(data)$variable.labels[117] <- "[3rd] Where are your baby\'s favorite places to visit?"
names(data)[117] <- "q_51_SQ003"

data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- "[Teddies and Soft Toys] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 118] <- ordered(data[, 118], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[118] <- "q_52_01"

data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- "[Puppets] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 119] <- ordered(data[, 119], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[119] <- "q_52_13"

data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "[Toy Animals] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 120] <- ordered(data[, 120], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[120] <- "q_52_02"

data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- "[Toy Vehicles] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 121] <- ordered(data[, 121], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[121] <- "q_52_03"

data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- "[Toy People] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 122] <- ordered(data[, 122], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[122] <- "q_52_04"

data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- "[Teething Toys] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 123] <- ordered(data[, 123], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[123] <- "q_52_05"

data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- "[Building Blocks] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 124] <- ordered(data[, 124], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[124] <- "q_52_06"

data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- "[Balls (Small)] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 125] <- ordered(data[, 125], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[125] <- "q_52_07"

data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "[Balls (Large)] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 126] <- ordered(data[, 126], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[126] <- "q_52_08"

data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[Noisy Toys (Rattles, etc.)] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 127] <- ordered(data[, 127], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[127] <- "q_52_09"

data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[Musical Toys (Bells etc.)] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 128] <- ordered(data[, 128], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[128] <- "q_52_10"

data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[Talking Toys] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 129] <- ordered(data[, 129], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[129] <- "q_52_11"

data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[Toys with Flashing Lights] Please go through the following list of toys and  indicate the how much each one makes your baby laugh. 


	If any question does not apply to you please put \"No answer\"

	 

	Toys:"
data[, 130] <- ordered(data[, 130], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this toy hysterical"))
names(data)[130] <- "q_52_12"

data[, 131] <- as.character(data[, 131])
attributes(data)$variable.labels[131] <- "Did we forget any toys that make your baby laugh?"
names(data)[131] <- "q_53"

data[, 132] <- as.character(data[, 132])
attributes(data)$variable.labels[132] <- "[Funniest Toy] What toys does your baby find the funniest?"
names(data)[132] <- "q_54_01"

data[, 133] <- as.character(data[, 133])
attributes(data)$variable.labels[133] <- "[2nd Funniest Toy] What toys does your baby find the funniest?"
names(data)[133] <- "q_54_02"

data[, 134] <- as.character(data[, 134])
attributes(data)$variable.labels[134] <- "[3rd Funniest Toy] What toys does your baby find the funniest?"
names(data)[134] <- "q_54_03"

data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "[Pouring Water] Games Baby Plays:"
data[, 135] <- ordered(data[, 135], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical"))
names(data)[135] <- "q_55_01"

data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "[Putting Things into Boxes] Games Baby Plays:"
data[, 136] <- ordered(data[, 136], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical"))
names(data)[136] <- "q_55_02"

data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- "[Painting/Drawing] Games Baby Plays:"
data[, 137] <- ordered(data[, 137], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical"))
names(data)[137] <- "q_55_03"

data[, 138] <- as.numeric(data[, 138])
attributes(data)$variable.labels[138] <- "[Banging things] Games Baby Plays:"
data[, 138] <- ordered(data[, 138], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical"))
names(data)[138] <- "q_55_04"

data[, 139] <- as.numeric(data[, 139])
attributes(data)$variable.labels[139] <- "[Building things] Games Baby Plays:"
data[, 139] <- ordered(data[, 139], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical"))
names(data)[139] <- "q_55_05"

data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- "[Knocking thing over] Games Baby Plays:"
data[, 140] <- ordered(data[, 140], levels=c(00,01,02,03,04,05,06,07),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical"))
names(data)[140] <- "q_55_06"

data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "[Peekaboo (Cover your Face)] Games You Play With Your Baby:"
data[, 141] <- ordered(data[, 141], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[141] <- "q_56_01"

data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- "[Peekaboo (Cover Baby\'s Face)] Games You Play With Your Baby:"
data[, 142] <- ordered(data[, 142], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[142] <- "q_56_02"

data[, 143] <- as.numeric(data[, 143])
attributes(data)$variable.labels[143] <- "[Counting Games] Games You Play With Your Baby:"
data[, 143] <- ordered(data[, 143], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[143] <- "q_56_03"

data[, 144] <- as.numeric(data[, 144])
attributes(data)$variable.labels[144] <- "[Chasing Games] Games You Play With Your Baby:"
data[, 144] <- ordered(data[, 144], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[144] <- "q_56_04"

data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- "[Funny Actions (Wobbling head, etc.)] Games You Play With Your Baby:"
data[, 145] <- ordered(data[, 145], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[145] <- "q_56_06"

data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "[Funny Faces] Games You Play With Your Baby:"
data[, 146] <- ordered(data[, 146], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[146] <- "q_56_07"

data[, 147] <- as.numeric(data[, 147])
attributes(data)$variable.labels[147] <- "[Funny Noises] Games You Play With Your Baby:"
data[, 147] <- ordered(data[, 147], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[147] <- "q_56_08"

data[, 148] <- as.numeric(data[, 148])
attributes(data)$variable.labels[148] <- "[Pretend fear] Games You Play With Your Baby:"
data[, 148] <- ordered(data[, 148], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[148] <- "q_56_09"

data[, 149] <- as.numeric(data[, 149])
attributes(data)$variable.labels[149] <- "[Pretend Anger] Games You Play With Your Baby:"
data[, 149] <- ordered(data[, 149], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[149] <- "q_56_10"

data[, 150] <- as.numeric(data[, 150])
attributes(data)$variable.labels[150] <- "[Blowing Bubbles] Games You Play With Your Baby:"
data[, 150] <- ordered(data[, 150], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[150] <- "q_56_11"

data[, 151] <- as.numeric(data[, 151])
attributes(data)$variable.labels[151] <- "[Imitating Baby] Games You Play With Your Baby:"
data[, 151] <- ordered(data[, 151], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[151] <- "q_56_12"

data[, 152] <- as.numeric(data[, 152])
attributes(data)$variable.labels[152] <- "[Hiding Objects] Games You Play With Your Baby:"
data[, 152] <- ordered(data[, 152], levels=c(01,02,03,04,05,06,07,08),labels=c("Never","Only once or twice","Occasionally","Sometimes","Often","Very Often","My baby finds this game hysterical","No answer"))
names(data)[152] <- "q_56_13"

data[, 153] <- as.character(data[, 153])
attributes(data)$variable.labels[153] <- "Did we forget any games that make your baby laugh?

	 "
names(data)[153] <- "q_57"

data[, 154] <- as.character(data[, 154])
attributes(data)$variable.labels[154] <- "[Funniest Game] What games does your baby find the funniest?"
names(data)[154] <- "q_58_01"

data[, 155] <- as.character(data[, 155])
attributes(data)$variable.labels[155] <- "[2nd Funniest Game] What games does your baby find the funniest?"
names(data)[155] <- "q_58_02"

data[, 156] <- as.character(data[, 156])
attributes(data)$variable.labels[156] <- "[3rd Funniest Game] What games does your baby find the funniest?"
names(data)[156] <- "q_58_03"

data[, 157] <- as.character(data[, 157])
attributes(data)$variable.labels[157] <- "[Funniest Song/Nursery Rhyme] What songs or nursery rhymes does your baby find the funniest?"
names(data)[157] <- "q_61_01"

data[, 158] <- as.character(data[, 158])
attributes(data)$variable.labels[158] <- "[2nd Funniest Song/Nursery Rhyme] What songs or nursery rhymes does your baby find the funniest?"
names(data)[158] <- "q_61_02"

data[, 159] <- as.character(data[, 159])
attributes(data)$variable.labels[159] <- "[3rd Funniest Song/Nursery Rhyme] What songs or nursery rhymes does your baby find the funniest?"
names(data)[159] <- "q_61_03"

data[, 160] <- as.character(data[, 160])
attributes(data)$variable.labels[160] <- "Please tell us about a particularly funny game you and your baby played recently (optional)"
names(data)[160] <- "funnygame"

data[, 161] <- as.numeric(data[, 161])
attributes(data)$variable.labels[161] <- "[Tickling (Body)] Please indicate the level that each sensation makes your baby laugh."
data[, 161] <- ordered(data[, 161], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[161] <- "q_21_1"

data[, 162] <- as.numeric(data[, 162])
attributes(data)$variable.labels[162] <- "[Tickling (Hands, Arms)] Please indicate the level that each sensation makes your baby laugh."
data[, 162] <- ordered(data[, 162], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[162] <- "q_21_2"

data[, 163] <- as.numeric(data[, 163])
attributes(data)$variable.labels[163] <- "[Tickling (Toes)] Please indicate the level that each sensation makes your baby laugh."
data[, 163] <- ordered(data[, 163], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[163] <- "q_21_3"

data[, 164] <- as.numeric(data[, 164])
attributes(data)$variable.labels[164] <- "[Blowing Rasperries] Please indicate the level that each sensation makes your baby laugh."
data[, 164] <- ordered(data[, 164], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[164] <- "q_21_4"

data[, 165] <- as.numeric(data[, 165])
attributes(data)$variable.labels[165] <- "[Stroking Baby] Please indicate the level that each sensation makes your baby laugh."
data[, 165] <- ordered(data[, 165], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[165] <- "q_21_5"

data[, 166] <- as.numeric(data[, 166])
attributes(data)$variable.labels[166] <- "[Blowing Gently on Baby] Please indicate the level that each sensation makes your baby laugh."
data[, 166] <- ordered(data[, 166], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[166] <- "q_21_6"

data[, 167] <- as.numeric(data[, 167])
attributes(data)$variable.labels[167] <- "[Throwing Baby in the Air] Please indicate the level that each sensation makes your baby laugh."
data[, 167] <- ordered(data[, 167], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[167] <- "q_21_7"

data[, 168] <- as.numeric(data[, 168])
attributes(data)$variable.labels[168] <- "[Holding Upside Down] Please indicate the level that each sensation makes your baby laugh."
data[, 168] <- ordered(data[, 168], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[168] <- "q_21_8"

data[, 169] <- as.numeric(data[, 169])
attributes(data)$variable.labels[169] <- "[Rough and Tumble] Please indicate the level that each sensation makes your baby laugh."
data[, 169] <- ordered(data[, 169], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[169] <- "q_21_9"

data[, 170] <- as.numeric(data[, 170])
attributes(data)$variable.labels[170] <- "[Music (Classical)] Please indicate the level that each sensation makes your baby laugh."
data[, 170] <- ordered(data[, 170], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[170] <- "q_21_10"

data[, 171] <- as.numeric(data[, 171])
attributes(data)$variable.labels[171] <- "[Music (For Babies, Nursery Rhymes etc.)] Please indicate the level that each sensation makes your baby laugh."
data[, 171] <- ordered(data[, 171], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[171] <- "q_21_11"

data[, 172] <- as.numeric(data[, 172])
attributes(data)$variable.labels[172] <- "[Music (For Parents, Your Choice of Music)] Please indicate the level that each sensation makes your baby laugh."
data[, 172] <- ordered(data[, 172], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[172] <- "q_21_12"

data[, 173] <- as.numeric(data[, 173])
attributes(data)$variable.labels[173] <- "[People Laughing (Parents)] Please indicate the level that each sensation makes your baby laugh."
data[, 173] <- ordered(data[, 173], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[173] <- "q_21_13"

data[, 174] <- as.numeric(data[, 174])
attributes(data)$variable.labels[174] <- "[People Laughing (Other Family Members)] Please indicate the level that each sensation makes your baby laugh."
data[, 174] <- ordered(data[, 174], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[174] <- "q_21_14"

data[, 175] <- as.numeric(data[, 175])
attributes(data)$variable.labels[175] <- "[People Laughing (Strangers)] Please indicate the level that each sensation makes your baby laugh."
data[, 175] <- ordered(data[, 175], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[175] <- "q_21_15"

data[, 176] <- as.numeric(data[, 176])
attributes(data)$variable.labels[176] <- "[People Laughing (Other Babies)] Please indicate the level that each sensation makes your baby laugh."
data[, 176] <- ordered(data[, 176], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[176] <- "q_21_16"

data[, 177] <- as.numeric(data[, 177])
attributes(data)$variable.labels[177] <- "[Mirrors] Please indicate the level that each sensation makes your baby laugh."
data[, 177] <- ordered(data[, 177], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[177] <- "q_21_17"

data[, 178] <- as.numeric(data[, 178])
attributes(data)$variable.labels[178] <- "[Certain Smells] Please indicate the level that each sensation makes your baby laugh."
data[, 178] <- ordered(data[, 178], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[178] <- "q_21_18"

data[, 179] <- as.numeric(data[, 179])
attributes(data)$variable.labels[179] <- "[Certain Tastes] Please indicate the level that each sensation makes your baby laugh."
data[, 179] <- ordered(data[, 179], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[179] <- "q_21_19"

data[, 180] <- as.numeric(data[, 180])
attributes(data)$variable.labels[180] <- "[Noises (Faint)] Please indicate the level that each sensation makes your baby laugh."
data[, 180] <- ordered(data[, 180], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[180] <- "q_21_20"

data[, 181] <- as.numeric(data[, 181])
attributes(data)$variable.labels[181] <- "[Noises (Loud)] Please indicate the level that each sensation makes your baby laugh."
data[, 181] <- ordered(data[, 181], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[181] <- "q_21_21"

data[, 182] <- as.numeric(data[, 182])
attributes(data)$variable.labels[182] <- "[Noises (Unusual)] Please indicate the level that each sensation makes your baby laugh."
data[, 182] <- ordered(data[, 182], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[182] <- "q_21_22"

data[, 183] <- as.numeric(data[, 183])
attributes(data)$variable.labels[183] <- "[Voices (Silly)] Please indicate the level that each sensation makes your baby laugh."
data[, 183] <- ordered(data[, 183], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[183] <- "q_21_23"

data[, 184] <- as.numeric(data[, 184])
attributes(data)$variable.labels[184] <- "[Voices (Singing to Baby)] Please indicate the level that each sensation makes your baby laugh."
data[, 184] <- ordered(data[, 184], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[184] <- "q_21_24"

data[, 185] <- as.numeric(data[, 185])
attributes(data)$variable.labels[185] <- "[Voices (Angry)] Please indicate the level that each sensation makes your baby laugh."
data[, 185] <- ordered(data[, 185], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[185] <- "q_21_25"

data[, 186] <- as.numeric(data[, 186])
attributes(data)$variable.labels[186] <- "[Voices (Lip Popping)] Please indicate the level that each sensation makes your baby laugh."
data[, 186] <- ordered(data[, 186], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[186] <- "q_21_26"

data[, 187] <- as.numeric(data[, 187])
attributes(data)$variable.labels[187] <- "[Baby Falling Over] Please indicate the level that each sensation makes your baby laugh."
data[, 187] <- ordered(data[, 187], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[187] <- "q_21_27"

data[, 188] <- as.numeric(data[, 188])
attributes(data)$variable.labels[188] <- "[Baby Hurting Itself] Please indicate the level that each sensation makes your baby laugh."
data[, 188] <- ordered(data[, 188], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[188] <- "q_21_28"

data[, 189] <- as.numeric(data[, 189])
attributes(data)$variable.labels[189] <- "[Other People Falling Over] Please indicate the level that each sensation makes your baby laugh."
data[, 189] <- ordered(data[, 189], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[189] <- "q_21_29"

data[, 190] <- as.numeric(data[, 190])
attributes(data)$variable.labels[190] <- "[Other People Hurting Themselves] Please indicate the level that each sensation makes your baby laugh."
data[, 190] <- ordered(data[, 190], levels=c(0,1,2,3,4,5,6,7),labels=c("No answer","Never","Only once or twice","Occasionally","Sometimes","Often","Very often","My baby finds this sensation hysterical"))
names(data)[190] <- "q_21_30"

data[, 191] <- as.character(data[, 191])
attributes(data)$variable.labels[191] <- "If your baby does find certain smells or tastes funny, what are they?"
names(data)[191] <- "q_22"

data[, 192] <- as.character(data[, 192])
attributes(data)$variable.labels[192] <- "Did we forget any sensations? If so, what?"
names(data)[192] <- "q_23"

data[, 193] <- as.character(data[, 193])
attributes(data)$variable.labels[193] <- "[Funniest Physical Sensation] What physical sensation does your baby find the funniest?"
names(data)[193] <- "q_59_01"

data[, 194] <- as.character(data[, 194])
attributes(data)$variable.labels[194] <- "[2nd Funniest Physical Sensation] What physical sensation does your baby find the funniest?"
names(data)[194] <- "q_59_02"

data[, 195] <- as.character(data[, 195])
attributes(data)$variable.labels[195] <- "[3rd Funniest Physical Sensation] What physical sensation does your baby find the funniest?"
names(data)[195] <- "q_59_03"

data[, 196] <- as.character(data[, 196])
attributes(data)$variable.labels[196] <- "[Funniest Noise] What noises does your baby find the funniest?"
names(data)[196] <- "q_60_01"

data[, 197] <- as.character(data[, 197])
attributes(data)$variable.labels[197] <- "[2nd Funniest Noise] What noises does your baby find the funniest?"
names(data)[197] <- "q_60_02"

data[, 198] <- as.character(data[, 198])
attributes(data)$variable.labels[198] <- "[3rd Funniest Noise] What noises does your baby find the funniest?"
names(data)[198] <- "q_60_03"

data[, 199] <- as.character(data[, 199])
attributes(data)$variable.labels[199] <- "(Optional) Tell us about a sensation that your baby finds particularly funny "
names(data)[199] <- "sensation"

data[, 200] <- as.character(data[, 200])
attributes(data)$variable.labels[200] <- "What did we forget? If any group or subject that makes your baby laugh has not been covered in this questionnaire, this is your last chance to let us know what really makes your baby laugh!"
names(data)[200] <- "q_14"

data[, 201] <- as.character(data[, 201])
attributes(data)$variable.labels[201] <- "Do you have any questions for us?"
names(data)[201] <- "questionsforus"

data[, 202] <- as.character(data[, 202])
attributes(data)$variable.labels[202] <- "Are you willing to answer some extra questions about your baby\'s temperament?

	This final section is completely optional. It includes 37 extra multiple choice questions and takes about 10 mins to complete.  

	To come back and answer these questions later, press the button at the bottom left."
data[, 202] <- ordered(data[, 202], levels=c("A1","A2","A3"),labels=c("No thanks, I'm done.","Yes, my baby is less than 1 year old","Yes, my baby is 1 year old or older"))
names(data)[202] <- "q_31"

data[, 203] <- as.character(data[, 203])
attributes(data)$variable.labels[203] <- "[When being dressed or undressed during the last week, how often did the baby squirm and/or try to roll away?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 203] <- ordered(data[, 203], levels=c("A","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[203] <- "q_34_1"

data[, 204] <- as.character(data[, 204])
attributes(data)$variable.labels[204] <- "[When tossed around playfully how often did the baby laugh?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 204] <- ordered(data[, 204], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[204] <- "q_34_2"

data[, 205] <- as.character(data[, 205])
attributes(data)$variable.labels[205] <- "[When tired, how often did your baby show distress?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 205] <- ordered(data[, 205], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[205] <- "q_34_3"

data[, 206] <- as.character(data[, 206])
attributes(data)$variable.labels[206] <- "[When introduced to an unfamiliar adult, how often did the baby cling to a parent?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 206] <- ordered(data[, 206], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[206] <- "q_34_4"

data[, 207] <- as.character(data[, 207])
attributes(data)$variable.labels[207] <- "[How often during the last week did the baby enjoy being read to?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 207] <- ordered(data[, 207], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[207] <- "q_34_5"

data[, 208] <- as.character(data[, 208])
attributes(data)$variable.labels[208] <- "[How often during the last week did the baby play with one toy or object for 5-10 minutes?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 208] <- ordered(data[, 208], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[208] <- "q_34_6"

data[, 209] <- as.character(data[, 209])
attributes(data)$variable.labels[209] <- "[How often during the week did your baby move quickly toward new objects?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 209] <- ordered(data[, 209], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[209] <- "q_34_7"

data[, 210] <- as.character(data[, 210])
attributes(data)$variable.labels[210] <- "[When put into the bath water, how often did the baby laugh?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 210] <- ordered(data[, 210], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[210] <- "q_34_8"

data[, 211] <- as.character(data[, 211])
attributes(data)$variable.labels[211] <- "[When it was time for bed or a nap and your baby did not want to go, how often did s/he whimper or sob?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 211] <- ordered(data[, 211], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[211] <- "q_34_9"

data[, 212] <- as.character(data[, 212])
attributes(data)$variable.labels[212] <- "[After sleeping, how often did the baby cry if someone doesn’t come within a few minutes?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 212] <- ordered(data[, 212], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[212] <- "q_34_10"

data[, 213] <- as.character(data[, 213])
attributes(data)$variable.labels[213] <- "[In the last week, while being fed in your lap, how often did the baby seem eager to get away as soon as the feeding was over?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 213] <- ordered(data[, 213], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[213] <- "q_34_11"

data[, 214] <- as.character(data[, 214])
attributes(data)$variable.labels[214] <- "[When singing or talking to your baby, how often did s/he soothe immediately?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 214] <- ordered(data[, 214], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[214] <- "q_34_12"

data[, 215] <- as.character(data[, 215])
attributes(data)$variable.labels[215] <- "[When placed on his/her back, how often did the baby squirm and/or turn body?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 215] <- ordered(data[, 215], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[215] <- "q_34_13"

data[, 216] <- as.character(data[, 216])
attributes(data)$variable.labels[216] <- "[During a peekaboo game, how often did the baby laugh?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 216] <- ordered(data[, 216], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[216] <- "q_34_14"

data[, 217] <- as.character(data[, 217])
attributes(data)$variable.labels[217] <- "[How often does the infant look up from playing when the telephone rings?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 217] <- ordered(data[, 217], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[217] <- "q_34_15"

data[, 218] <- as.character(data[, 218])
attributes(data)$variable.labels[218] <- "[How often did the baby seem angry (crying and fussing) when you left her/him in the crib?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 218] <- ordered(data[, 218], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[218] <- "q_34_16"

data[, 219] <- as.character(data[, 219])
attributes(data)$variable.labels[219] <- "[How often during the last week did the baby startle at a sudden change in body position (e.g., when moved suddenly)?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 219] <- ordered(data[, 219], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[219] <- "q_34_17"

data[, 220] <- as.character(data[, 220])
attributes(data)$variable.labels[220] <- "[How often during the last week did the baby enjoy hearing the sound of words, as in nursery rhymes?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 220] <- ordered(data[, 220], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[220] <- "q_34_18"

data[, 221] <- as.character(data[, 221])
attributes(data)$variable.labels[221] <- "[How often during the last week did the baby look at pictures in books and/or 	magazines for 5 minutes or longer at a time? ] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 221] <- ordered(data[, 221], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[221] <- "q_34_19"

data[, 222] <- as.character(data[, 222])
attributes(data)$variable.labels[222] <- "[When visiting a new place, how often did your baby get excited about exploring new surroundings?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 222] <- ordered(data[, 222], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[222] <- "q_34_20"

data[, 223] <- as.character(data[, 223])
attributes(data)$variable.labels[223] <- "[How often during the last week did the baby smile or laugh when given a toy?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 223] <- ordered(data[, 223], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[223] <- "q_34_21"

data[, 224] <- as.character(data[, 224])
attributes(data)$variable.labels[224] <- "[At the end of an exciting day, how often did your baby become tearful?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 224] <- ordered(data[, 224], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[224] <- "q_34_22"

data[, 225] <- as.character(data[, 225])
attributes(data)$variable.labels[225] <- "[How often during the last week did the baby protest being placed in a confining place (infant seat, play pen, car seat, etc.)?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 225] <- ordered(data[, 225], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[225] <- "q_34_23"

data[, 226] <- as.character(data[, 226])
attributes(data)$variable.labels[226] <- "[When being held, in the last week, did your baby seem to enjoy him/herself?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 226] <- ordered(data[, 226], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[226] <- "q_34_24"

data[, 227] <- as.character(data[, 227])
attributes(data)$variable.labels[227] <- "[When showing the baby something to look at, how often did s/he soothe 	immediately?  ] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 227] <- ordered(data[, 227], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[227] <- "q_34_25"

data[, 228] <- as.character(data[, 228])
attributes(data)$variable.labels[228] <- "[When hair was washed, how often did the baby vocalize?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 228] <- ordered(data[, 228], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[228] <- "q_34_26"

data[, 229] <- as.character(data[, 229])
attributes(data)$variable.labels[229] <- "[How often did your baby notice the sound of an airplane passing overhead?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 229] <- ordered(data[, 229], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[229] <- "q_34_27"

data[, 230] <- as.character(data[, 230])
attributes(data)$variable.labels[230] <- "[When introduced to an unfamiliar adult, how often did the baby refuse to go to the unfamiliar person?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 230] <- ordered(data[, 230], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[230] <- "q_34_28"

data[, 231] <- as.character(data[, 231])
attributes(data)$variable.labels[231] <- "[When you were busy with another activity, and your baby was not able to get your attention, how often did s/he cry?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 231] <- ordered(data[, 231], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[231] <- "q_34_29"

data[, 232] <- as.character(data[, 232])
attributes(data)$variable.labels[232] <- "[How often during the last week did the baby enjoy gentle rhythmic activities, such as rocking or swaying?  ] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 232] <- ordered(data[, 232], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[232] <- "q_34_30"

data[, 233] <- as.character(data[, 233])
attributes(data)$variable.labels[233] <- "[How often during the last week did the baby stare at a mobile, crib bumper or picture for 5 minutes or longer?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 233] <- ordered(data[, 233], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[233] <- "q_34_31"

data[, 234] <- as.character(data[, 234])
attributes(data)$variable.labels[234] <- "[When the baby wanted something, how often did s/he become upset when s/he could not get what s/he wanted?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 234] <- ordered(data[, 234], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[234] <- "q_34_32"

data[, 235] <- as.character(data[, 235])
attributes(data)$variable.labels[235] <- "[When in the presence of several unfamiliar adults, how often did the baby cling to a parent?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 235] <- ordered(data[, 235], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[235] <- "q_34_33"

data[, 236] <- as.character(data[, 236])
attributes(data)$variable.labels[236] <- "[When rocked or hugged, in the last week, did your baby seem to enjoy him/herself?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 236] <- ordered(data[, 236], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[236] <- "q_34_34"

data[, 237] <- as.character(data[, 237])
attributes(data)$variable.labels[237] <- "[When patting or gently rubbing some part of the baby’s body, how often did s/he soothe immediately?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 237] <- ordered(data[, 237], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[237] <- "q_34_35"

data[, 238] <- as.character(data[, 238])
attributes(data)$variable.labels[238] <- "[How often did your baby make talking sounds when riding in a car?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 238] <- ordered(data[, 238], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[238] <- "q_34_36"

data[, 239] <- as.character(data[, 239])
attributes(data)$variable.labels[239] <- "[When placed in an infant seat or car seat, how often did the baby squirm and turn body?] 
	Please indicate how often the baby did this during the LAST WEEK "
data[, 239] <- ordered(data[, 239], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[239] <- "q_34_37"

data[, 240] <- as.character(data[, 240])
attributes(data)$variable.labels[240] <- "[When approached by an unfamiliar person in a public place (for example, the grocery store), how often did your child  cling to a parent?	 ] Please indicate how often the baby did this during the LAST WEEK."
data[, 240] <- ordered(data[, 240], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[240] <- "q_36_1"

data[, 241] <- as.character(data[, 241])
attributes(data)$variable.labels[241] <- "[While having trouble completing a task (e.g., building, drawing, dressing), how often did your child get easily irritated?] Please indicate how often the baby did this during the LAST WEEK."
data[, 241] <- ordered(data[, 241], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[241] <- "q_36_2"

data[, 242] <- as.character(data[, 242])
attributes(data)$variable.labels[242] <- "[When a familiar child came to your home, how often did your child seek out the company of the child? 	] Please indicate how often the baby did this during the LAST WEEK."
data[, 242] <- ordered(data[, 242], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[242] <- "q_36_3"

data[, 243] <- as.character(data[, 243])
attributes(data)$variable.labels[243] <- "[When offered a choice of activities, how often did your child decide what to do very quickly and go after it? 	] Please indicate how often the baby did this during the LAST WEEK."
data[, 243] <- ordered(data[, 243], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[243] <- "q_36_4"

data[, 244] <- as.character(data[, 244])
attributes(data)$variable.labels[244] <- "[During daily or evening quiet time with you and your child, how often did your child enjoy just being quietly sung to? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 244] <- ordered(data[, 244], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[244] <- "q_36_5"

data[, 245] <- as.character(data[, 245])
attributes(data)$variable.labels[245] <- "[While playing outdoors, how often did your child choose to take chances for the fun and excitement of it?	] Please indicate how often the baby did this during the LAST WEEK."
data[, 245] <- ordered(data[, 245], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[245] <- "q_36_6"

data[, 246] <- as.character(data[, 246])
attributes(data)$variable.labels[246] <- "[When engaged in play with his/her favorite toy, how often did your child play for more than 10 minutes? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 246] <- ordered(data[, 246], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[246] <- "q_36_7"

data[, 247] <- as.character(data[, 247])
attributes(data)$variable.labels[247] <- "[When engaged in play with his/her favorite toy, how often did your child continue to play while at the same time responding to your remarks or  questions? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 247] <- ordered(data[, 247], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[247] <- "q_36_8"

data[, 248] <- as.character(data[, 248])
attributes(data)$variable.labels[248] <- "[When told that loved adults would visit, how often did your child get very excited] Please indicate how often the baby did this during the LAST WEEK."
data[, 248] <- ordered(data[, 248], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[248] <- "q_36_9"

data[, 249] <- as.character(data[, 249])
attributes(data)$variable.labels[249] <- "[ During quiet activities, such as reading a story, how often did your child fiddle with his/her hair, clothing, etc.?] Please indicate how often the baby did this during the LAST WEEK."
data[, 249] <- ordered(data[, 249], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[249] <- "q_36_10"

data[, 250] <- as.character(data[, 250])
attributes(data)$variable.labels[250] <- "[While playing indoors, how often did your child like rough and rowdy games? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 250] <- ordered(data[, 250], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[250] <- "q_36_11"

data[, 251] <- as.character(data[, 251])
attributes(data)$variable.labels[251] <- "[When being gently rocked or hugged, how often did your child seem eager to get away?] Please indicate how often the baby did this during the LAST WEEK."
data[, 251] <- ordered(data[, 251], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[251] <- "q_36_12"

data[, 252] <- as.character(data[, 252])
attributes(data)$variable.labels[252] <- "[When encountering a new activity, how often did your child get involved immediatley?] Please indicate how often the baby did this during the LAST WEEK."
data[, 252] <- ordered(data[, 252], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[252] <- "q_36_13"

data[, 253] <- as.character(data[, 253])
attributes(data)$variable.labels[253] <- "[When engaged in an activity requiring attention, such as building with blocks, how often did your child tire of the activity relatively quickly?] Please indicate how often the baby did this during the LAST WEEK."
data[, 253] <- ordered(data[, 253], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[253] <- "q_36_14"

data[, 254] <- as.character(data[, 254])
attributes(data)$variable.labels[254] <- "[During everyday activities, how often did your child pay attention to you right away when you called to him/her?] Please indicate how often the baby did this during the LAST WEEK."
data[, 254] <- ordered(data[, 254], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[254] <- "q_36_15"

data[, 255] <- as.character(data[, 255])
attributes(data)$variable.labels[255] <- "[During everyday activities, how often did your child seem to be irritated by tags in his/her clothes? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 255] <- ordered(data[, 255], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[255] <- "q_36_16"

data[, 256] <- as.character(data[, 256])
attributes(data)$variable.labels[256] <- "[During everyday activities, how often did your child become bothered by sounds while in noisy environments?	] Please indicate how often the baby did this during the LAST WEEK."
data[, 256] <- ordered(data[, 256], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[256] <- "q_36_17"

data[, 257] <- as.character(data[, 257])
attributes(data)$variable.labels[257] <- "[During everyday activities, how often did your child seem full of energy, even in the evening?  ] Please indicate how often the baby did this during the LAST WEEK."
data[, 257] <- ordered(data[, 257], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[257] <- "q_36_18"

data[, 258] <- as.character(data[, 258])
attributes(data)$variable.labels[258] <- "[While in a public place, how often did your child seem afraid of large, noisy vehicles?] Please indicate how often the baby did this during the LAST WEEK."
data[, 258] <- ordered(data[, 258], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[258] <- "q_36_19"

data[, 259] <- as.character(data[, 259])
attributes(data)$variable.labels[259] <- "[When playing outdoors with other children, how often did your child seem to be one of the most active children?] Please indicate how often the baby did this during the LAST WEEK."
data[, 259] <- ordered(data[, 259], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[259] <- "q_36_20"

data[, 260] <- as.character(data[, 260])
attributes(data)$variable.labels[260] <- "[When told “no”, how often did your child stop the forbidden activity? 	] Please indicate how often the baby did this during the LAST WEEK."
data[, 260] <- ordered(data[, 260], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[260] <- "q_36_21"

data[, 261] <- as.character(data[, 261])
attributes(data)$variable.labels[261] <- "[When told “no”, how often did your child become sadly tearful?] Please indicate how often the baby did this during the LAST WEEK."
data[, 261] <- ordered(data[, 261], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[261] <- "q_36_22"

data[, 262] <- as.character(data[, 262])
attributes(data)$variable.labels[262] <- "[Following an exciting activity or event, how often did your child seem to feel down or blue? 	] Please indicate how often the baby did this during the LAST WEEK."
data[, 262] <- ordered(data[, 262], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[262] <- "q_36_23"

data[, 263] <- as.character(data[, 263])
attributes(data)$variable.labels[263] <- "[While playing indoors, how often did your child run through the house? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 263] <- ordered(data[, 263], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[263] <- "q_36_24"

data[, 264] <- as.character(data[, 264])
attributes(data)$variable.labels[264] <- "[Before an exciting event (such as receiving a new toy), how often did your child get very excited about getting it? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 264] <- ordered(data[, 264], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[264] <- "q_36_25"

data[, 265] <- as.character(data[, 265])
attributes(data)$variable.labels[265] <- "[When s/he asked for something and you said “no”, how often did your child have a temper tantrum? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 265] <- ordered(data[, 265], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[265] <- "q_36_26"

data[, 266] <- as.character(data[, 266])
attributes(data)$variable.labels[266] <- "[When asked to wait for a desirable item (such as ice cream), how often did your child wait patiently? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 266] <- ordered(data[, 266], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[266] <- "q_36_27"

data[, 267] <- as.character(data[, 267])
attributes(data)$variable.labels[267] <- "[When being gently rocked, how often did your child smile?] Please indicate how often the baby did this during the LAST WEEK."
data[, 267] <- ordered(data[, 267], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[267] <- "q_36_28"

data[, 268] <- as.character(data[, 268])
attributes(data)$variable.labels[268] <- "[While being held on your lap, how often did your child mold to your body?] Please indicate how often the baby did this during the LAST WEEK."
data[, 268] <- ordered(data[, 268], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[268] <- "q_36_29"

data[, 269] <- as.character(data[, 269])
attributes(data)$variable.labels[269] <- "[When a familiar adult, such as a relative or friend, visited your home, how often did your child want to interact with the adult? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 269] <- ordered(data[, 269], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[269] <- "q_36_30"

data[, 270] <- as.character(data[, 270])
attributes(data)$variable.labels[270] <- "[When asked to do so, how often was your child able to be careful with something breakable?] Please indicate how often the baby did this during the LAST WEEK."
data[, 270] <- ordered(data[, 270], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[270] <- "q_36_31"

data[, 271] <- as.character(data[, 271])
attributes(data)$variable.labels[271] <- "[When visiting a new place, how often did your child not want to enter? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 271] <- ordered(data[, 271], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[271] <- "q_36_32"

data[, 272] <- as.character(data[, 272])
attributes(data)$variable.labels[272] <- "[When s/he was upset, how often did your child cry for more than 3 minutes, even when being comforted?] Please indicate how often the baby did this during the LAST WEEK."
data[, 272] <- ordered(data[, 272], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[272] <- "q_36_33"

data[, 273] <- as.character(data[, 273])
attributes(data)$variable.labels[273] <- "[When s/he was upset, how often did your child become easily soothed? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 273] <- ordered(data[, 273], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[273] <- "q_36_34"

data[, 274] <- as.character(data[, 274])
attributes(data)$variable.labels[274] <- "[When you were busy, how often did your child find another activity to do when asked?] Please indicate how often the baby did this during the LAST WEEK."
data[, 274] <- ordered(data[, 274], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[274] <- "q_36_35"

data[, 275] <- as.character(data[, 275])
attributes(data)$variable.labels[275] <- "[When around large gatherings of familiar adults or children, how often did your child enjoy playing with a number of different people? ] Please indicate how often the baby did this during the LAST WEEK."
data[, 275] <- ordered(data[, 275], levels=c("A1","A2","A3","A4","A5","A6","A7","A8"),labels=c("1","2","3","4","5","6","7","NA"))
names(data)[275] <- "q_36_36"
